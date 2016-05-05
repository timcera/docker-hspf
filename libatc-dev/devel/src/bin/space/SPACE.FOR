      program space
      implicit none
      integer messfl,wdmsfl,ronwfg,retcod,dsn,dsntyp,i
      integer stdate(6),ndim,numn(3),basn(3),skpn(3),nval
      integer lrec,grpcnt,dimx,dimy,dimz,dimdat,dtype
      integer delt,dtovwr,qualfg,tunits
      real    rbuff(10000)
      character*64 msname,wdname

      external wdbopn,wdlbax,wdflcl
      data stdate/2001,1,1,0,0,0/

      call wdbfin
      do i=1,10000
        rbuff(i)= float(i)
      end do

      messfl= 9
      msname= 'message.wdm'
      ronwfg= 1
      call wdbopn(messfl,msname,ronwfg,retcod)
      write (*,*) 'opened ',msname,retcod

      wdmsfl= 10
      wdname= 'space.wdm'
      ronwfg= 2
      call wdbopn(wdmsfl,wdname,ronwfg,retcod)
      write (*,*) 'opened ',wdname,retcod

c     write (*,*) 'building dsn 1 as timeseries'
c     dsn= 1
c     dsntyp= 1
c     call mkdsn(wdmsfl,dsn,dsntyp,messfl,
c    o           retcod)
c     write (*,*) 'made dsn 1:retcod',retcod
c     if (retcod .eq. 0) then
c       delt= 1
c       dtovwr= 1
c       qualfg= 0
c       tunits= 4
c       nval= 8000
c       call wdtput(wdmsfl,dsn,delt,stdate,nval,dtovwr,qualfg,tunits,
c    i              rbuff,
c    o              retcod)
c       write (*,*) 'wrote 1000',retcod
c     end if

      write (*,*) 'building dsn 101 as spacetime'
      dsn= 101
      dsntyp= 7
      call mkdsn(wdmsfl,dsn,dsntyp,messfl,
     o           retcod)
      write (*,*) 'mkdsn retcod',retcod
      if (retcod .eq. 0) then
        ndim= 3
        numn(1)= 10
        numn(2)= 20
        numn(3)= 5
        basn(1)= 1
        basn(2)= 1
        basn(3)= 1
        skpn(1)= 0
        skpn(2)= 0
        skpn(3)= 0
        nval= 8000
        call wstptr(wdmsfl,dsn,stdate,ndim,numn,basn,skpn,nval,
     i              rbuff,
     o              retcod)
        write (*,*) 'wrote nval',nval,retcod
      end if

      call wdflcl(wdmsfl,retcod)
      call wdflcl(messfl,retcod)
      end



      subroutine mkdsn(wdmsfl,dsn,dsntyp,messfl,
     o                 retcod)
      implicit none
      integer wdmsfl,dsn,dsntyp,retcod,messfl
      integer lrec,grpcnt,lind,pdat,pdatv,psa
      integer dimx,dimy,dimz,dimdat,dtype
      integer ind,ilen,saval(1)
      character*1 savac(4)

      external wdrcgo
      integer wdrcgo

      include 'CFBUFF.INC'

C     call wdbcrl(wdmsfl,dsn,dsntyp,
C    o            retcod)
      call wdlbad(wdmsfl,dsn,dsntyp,
     o            psa)
      write(*,*) 'made dsn,psa',dsn,psa

      if (dsntyp .eq. 7) then
C       set dimensions
        ind= 266
        ilen= 1
        saval(1)= 10
        call wdbsai(wdmsfl,dsn,messfl,ind,ilen,saval,
     o              retcod)
        write(*,*) 'added dimx',saval(1),retcod
        ind= 267
        ilen= 1
        saval(1)= 20
        call wdbsai(wdmsfl,dsn,messfl,ind,ilen,saval,
     o              retcod)
        write(*,*) 'added dimy',saval(1),retcod
        ind= 268
        ilen= 1
        saval(1)= 5
        call wdbsai(wdmsfl,dsn,messfl,ind,ilen,saval,
     o              retcod)
        write(*,*) 'added dimz',saval(1),retcod
        ind= 265
        ilen= 4
        savac(1)= 'R'
        savac(2)= 'E'
        savac(3)= 'A'
        savac(4)= 'L'
        call wdbsac(wdmsfl,dsn,messfl,ind,ilen,savac,
     o              retcod)
        write(*,*) 'added data type:',savac,':',retcod

        call wdschk(wdmsfl,dsn,dsntyp,
     o              lrec,grpcnt,retcod)
        write (*,*) 'lrec,grpcnt,retcod',lrec,grpcnt,retcod
C       if (retcod .eq. 0) then
C         lind= wdrcgo(wdmsfl,lrec)
C         write (*,*) 'lind',lind
C         if (lind .gt. 0) then
C           pdat= wibuff(11,lind)
C           pdatv= wibuff(12,lind)
C           write(*,*)'wdmsfl,dsn,lind,pdat,pdatv',
C    $                 wdmsfl,dsn,lind,pdat,pdatv
C         end if
C       end if
      end if

      if (retcod .eq. 0) then
        call wdschk(wdmsfl,dsn,dsntyp,
     o              lrec,grpcnt,retcod)
        write (*,*) 'checking dsn: lrec,grpcnt,retcod',
     $               lrec,grpcnt,retcod
        if (retcod .eq. 0) then
          lind= wdrcgo(wdmsfl,lrec)
          write (*,*) 'get record index',lind
          if (lind .le. 0) then
C           retcod= 3
          else
            if (dsntyp .eq. 7) then
C             check dimensions
              call wstdim(wibuff(1,lind),
     o                    dimx,dimy,dimz,dimdat,dtype)
              write (*,*) 'check dims,type',dimx,dimy,dimz,dimdat,dtype
            end if
          end if
        else
C         retcod= 2
        end if
      else
C       retcod= 1
      end if

      return
      end
