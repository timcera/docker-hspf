C
C     include file CDATE.INC
C     common block for storage of window set data structure
C
      INCLUDE  'PMXWIN.INC'
C
      COMMON/CWIN/WIPEIT,MAPWIN,PLTWIN,WTYPE,NWIN,WINDIM
C
      INTEGER     WIPEIT(MXWIN),MAPWIN,PLTWIN,WTYPE(MXWIN),NWIN
      REAL        WINDIM(4,MXWIN)
C
