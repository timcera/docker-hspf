      SUBROUTINE DATIME (JYR,NDAY,J10SEC)                               MLlg
C
C     PC VERSION
C
C     INTEGER*2 IHR, IMIN, ISEC, I100SC, IYR, IMON, IDAY                M
C     INTEGER*4 J10SEC, JDAY, JHR, JMIN, IYMDJL                         M
C
      CHARACTER CT*10
      INTEGER*4 J10SEC, JHR, JMIN, JSEC, J100SC, JUL, IYMDJL            L

C
C     CALL GETTIM(IHR,IMIN,ISEC,I100SC)                                 M
C     CALL GETDAT(IYR,IMON,IDAY)                                        M
C     JYR = IYR                                                         M
C     JMON = IMON                                                       M
C     NDAY = IDAY                                                       M
C     JDAY = IYMDJL (JYR,JMON,NDAY)                                     M
C     NDAY = JDAY - IYMDJL(JYR,1,1) + 1                                 M
C     JHR = IHR                                                         M
C     JMIN = IMIN                                                       M
C     J100SC = I100SC                                                   M
C     J10SEC = JHR*36000 + JMIN*600 + J100SC/10                         M
C
C     Lahey Fortran version
C      CALL TIME (CT)                                                    L
C      READ (CT, '(4(I2,1X))') JHR, JMIN, JSEC, J100SC                   L
C      J10SEC = (JHR * 36000) + (JMIN * 600) + (JSEC * 10) + (J100SC/10) L
C      CT = ' '                                                          L
C      CALL DATE (CT)                                                    L
C      CALL DATYMD (CT, JYR, IMON, IDAY, IERR)                           L
C      JUL = IYMDJL (JYR, IMON, IDAY)                                    L
C      NDAY = JUL - IYMDJL (JYR, 1, 1) + 1                               L
C
C     CALL SYSTIM (JUL, ISEC)                                           lg
C     J10SEC = ISEC * 10                                                lg
C     I =  JLIYMD (JUL, JYR, IMON, IDAY)                                lg
C     NDAY = JUL - IYMDJL (JYR, 1, 1) + 1                               lg
C
C     FORTRAN 90
      CALL DATE_AND_TIME(DATE=CT)
      CALL DATYMD (CT(5:6) // '/' // CT(7:8) // '/' // CT(1:4)
     +            ,JYR, IMON, IDAY, IERR)
      JUL = IYMDJL (JYR, IMON, IDAY)
      NDAY = JUL - IYMDJL (JYR, 1, 1) + 1

      CALL DATE_AND_TIME(TIME=CT)
      READ (CT, '(3(I2), 1X, I2)') JHR, JMIN, JSEC, J100SC
      J10SEC = (JHR * 36000) + (JMIN * 600) + (JSEC * 10) + (J100SC/10)


      RETURN                                                            MLlg
      END                                                               MLlg
