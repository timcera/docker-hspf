      SUBROUTINE CTIMEX (CARRAY)
C
C
C     INTEGER IARRAY(3)                                                 H
      CHARACTER CARRAY*10
      CHARACTER CT*11                                                   L

      INTEGER IARRAY(8)
C     INTEGER*2 IHR,IMIN,ISEC,I100SC                                    M
C
C
      I = LEN(CARRAY)
      IF (I.LT.8) THEN
      CALL CHRFIL (CARRAY,'*')
      RETURN
      ENDIF

C     Fortran 90
      CALL DATE_AND_TIME(values=IARRAY)
      WRITE (CARRAY,20) IARRAY(5),IARRAY(6),IARRAY(7)
 20   FORMAT (I2.2,':',I2.2,':',I2.2)

C
C     Harris time routine
C     DO 10 I = 1,3                                                     H
C     IARRAY(I) = 3H                                                    H
C10   CONTINUE                                                          H
C
C     CALL TIME(IARRAY)                                                 H
C     CALL HOLCHR(IARRAY,2,8,CARRAY,1)                                  H
C     IF (CARRAY(1:1).EQ.' ') CARRAY(1:1) = '0'                         H
C
C     MS FORTRAN TIME ROUTINE
C     CALL GETTIM (IHR,IMIN,ISEC,I100SC)                                M
C     WRITE (CARRAY,20) IHR,IMIN,ISEC                                   M
C20   FORMAT (I2.2,':',I2.2,':',I2.2)                                   M
C
C     Lahey time routine
C     CALL TIME (CT)                                                    L
C     CT(9:) = ' '                                                      L
C     CARRAY = CT                                                       L
C
C     Unix time
C     CALL SYSTIM (JUL, ISECS)                                          lg
C     IHR = ISECS / 3600                                                lg
C     IMIN = (ISECS - (IHR * 3600)) / 60                                lg
C     ISEC = ISECS - (IHR * 3600) - (IMIN * 60)                         lg
C     WRITE (CARRAY,20) IHR,IMIN,ISEC                                   lg
C20   FORMAT (I2.2,':',I2.2,':',I2.2)                                   lg
C
      RETURN
      END
