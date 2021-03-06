module swmm5futil
integer, parameter :: dps = kind(1.d0)
integer, parameter :: K2 = selected_int_kind(2) !kind= 1

!-----------------------------------------------------------------------------
!  Unit conversion factors
!-----------------------------------------------------------------------------
real(kind=dps), dimension(2, 10), parameter :: arrUcf = &                !(5.0.010 - LR)
    &reshape((/43200.0,   1097280.0 , &         ! RAINFALL (in/hr, mm/hr --> ft/sec)
      &12.0,      304.8     , &         ! RAINDEPTH (in, mm --> ft)
      &1036800.0, 26334720.0, &         ! EVAPRATE (in/day, mm/day --> ft/sec)
      &1.0,       0.3048    , &         ! LENGTH (ft, m --> ft)
      &2.2956e-5, 0.92903e-5, &         ! LANDAREA (ac, ha --> ft2)
      &1.0,       0.02832   , &         ! VOLUME (ft3, m3 --> ft3)
      &1.0,       1.608     , &         ! WINDSPEED (mph, km/hr --> mph)
      &1.0,       1.8       , &         ! TEMPERATURE (deg F, deg C --> deg F)
      &2.203e-6,  1.0e-6    , &         ! MASS (lb, kg --> mg)
      &43560.0,   3048.0  /), &        ! GWFLOW (cfs/ac, cms/ha --> ft/sec)   !(5.0.010 - LR)
      &(/2, 10/))

!      {!  US      SI
!      {43200.0,   1097280.0 },         ! RAINFALL (in/hr, mm/hr --> ft/sec)
!      {12.0,      304.8     },         ! RAINDEPTH (in, mm --> ft)
!      {1036800.0, 26334720.0},         ! EVAPRATE (in/day, mm/day --> ft/sec)
!      {1.0,       0.3048    },         ! LENGTH (ft, m --> ft)
!      {2.2956e-5, 0.92903e-5},         ! LANDAREA (ac, ha --> ft2)
!      {1.0,       0.02832   },         ! VOLUME (ft3, m3 --> ft3)
!      {1.0,       1.608     },         ! WINDSPEED (mph, km/hr --> mph)
!      {1.0,       1.8       },         ! TEMPERATURE (deg F, deg C --> deg F)
!      {2.203e-6,  1.0e-6    },         ! MASS (lb, kg --> mg)
!      {43560.0,   3048.0    }          ! GWFLOW (cfs/ac, cms/ha --> ft/sec)   !(5.0.010 - LR)
!      };

real(kind=dps), dimension(6), parameter :: Qcf = &                 ! Flow Conversion Factors:
     &(/ 1.0,     448.831, 0.64632, &     ! cfs, gpm, mgd --> cfs
       &0.02832, 28.317,  2.4466/)    ! cms, lps, mld --> cfs
       
!
!For use in 'statsrpt'
!
character(6) :: FlowFmt
real(kind=dps) :: Vcf

!
!For use in output and report
!
!--! specific precisions, usually same as real and real(kind=dp)
!integer, parameter :: r6 = selected_real_kind(6) 
!integer, parameter :: r15 = selected_real_kind(15) 

!integer, parameter :: k6 = selected_int_kind(6) 
!integer, parameter :: k15 = selected_int_kind(15)

real(kind=dps), dimension(:), allocatable, save :: SubcatchResults !REAL8
real(kind=dps), dimension(:), allocatable, save :: NodeResults !REAL8
real(kind=dps), dimension(:), allocatable, save :: LinkResults !REAL8

type myoutput
  integer :: datatype
  integer :: index
  integer :: subIndex !subscript for conduits, for links
  real(kind=dps), dimension(:), pointer :: oflow
  real(kind=dps), dimension(:), pointer :: odepth
  real(kind=dps), dimension(:), pointer :: ovolume
  real(kind=dps) :: lastDepth !Node[i]. or !Link[i].newDepth
  real(kind=dps) :: lastLatFlow !Node[i].newLatFlow
  real(kind=dps) :: lastVolume !Node[i].newVolume
  real(kind=dps) :: lastFlow !Link[i].newFlow
  real(kind=dps) :: lastSetting !Link[i].setting
  real(kind=dps), dimension(:), pointer :: oQual1 !Node[i]. or Link[i].newQual[E_POLLUT]
  real(kind=dps), dimension(:), pointer :: oQual2 
  real(kind=dps), dimension(:), pointer :: oQual3 
  real(kind=dps), dimension(:), pointer :: oQual4
  real(kind=dps), dimension(:), pointer :: oQual5
  real(kind=dps), dimension(:), pointer :: oQual6
end type myoutput

type myTimeseries
  integer :: datatype
  integer :: tohere
  real(kind=dps), dimension(:), pointer :: odates
  real(kind=dps), dimension(:), pointer :: ovalues 
end type myTimeseries

type(myoutput), dimension(:), allocatable, save :: onodes
type(myoutput), dimension(:), allocatable, save :: olinks

type(myTimeseries), dimension(:), allocatable, save :: oTsers
type(myTimeseries), dimension(:), allocatable, save :: oTsersWQ

contains
real(kind=dps) function UCF(u)
!
!  Input:   u = integer code of quantity being converetd
!  Output:  returns a units conversion factor
!  Purpose: computes a conversion factor from SWMM's internal
!           units to user's units
!
    use globals
    implicit none
    integer(kind=K2), intent(in) :: u
    real(kind=dps) :: lUCF
    
    if ( u < FLOW ) then
        !lUCF = arrUcf(u, UnitSystem)
        lUCF = arrUcf(UnitSystem, u)
    else            
        lUCF = Qcf(FlowUnits)
    end if
    UCF = lUCF
    return
end function UCF
!
!!=============================================================================
!
INTEGER FUNCTION ReDim(array)
IMPLICIT NONE
REAL(KIND=dps), DIMENSION(:),POINTER :: array
REAL(KIND=dps), DIMENSION(:),ALLOCATABLE :: tmp_arr
INTEGER :: prevSize, lStat
prevSize = SIZE(array, 1)

ALLOCATE(tmp_arr(2*prevSize), stat=lStat)
IF (lStat /= 0) THEN
   ReDim = lStat
   RETURN
END IF
tmp_arr(1:prevSize)=array

DEALLOCATE(array)
ALLOCATE(array(SIZE(tmp_arr, 1)), stat=lStat)
IF (lStat /= 0) THEN
   ReDim = lStat
   RETURN
END IF

array=tmp_arr
ReDim = 0
END FUNCTION ReDim

INTEGER FUNCTION ReDimReal(array)
IMPLICIT NONE
REAL ,DIMENSION(:),POINTER :: array
REAL ,DIMENSION(:),ALLOCATABLE :: tmp_arr
INTEGER :: prevSize, lStat
prevSize = SIZE(array, 1)

ALLOCATE(tmp_arr(2*prevSize), stat=lStat)
IF (lStat /= 0) THEN
   ReDimReal = lStat
   RETURN
END IF
tmp_arr(1:prevSize)=array

DEALLOCATE(array)
ALLOCATE(array(SIZE(tmp_arr, 1)), stat=lStat)
IF (lStat /= 0) THEN
   ReDimReal = lStat
   RETURN
END IF

array=tmp_arr
ReDimReal = 0
END FUNCTION ReDimReal

end module
