      INTEGER FUNCTION IHM2M (CTIME)
C
C     CHANGE FROM CODED MILITARY TIME TO MINUTES SINCE MIDNIGHT
C
      CHARACTER CTIME*(*)
C
      READ ( CTIME, 10, ERR=900) IHR
 10   FORMAT (I2)
C
      READ ( CTIME, 20, ERR=900) IMIN
 20   FORMAT (2X,I2)
C
      IHM2M = (IHR*60) + IMIN
      RETURN
C
C     ERROR
  900 IHM2M = -1
      RETURN
      END
