C         include file FHSMES.INC
C         installation defaults for HMSNAM
C
C     Defines the name of the message file

      CALL GETENV('USGSHOME', HMSNAM)
      
      IF (LEN_TRIM(HMSNAM) .EQ. 0) THEN
          HMSNAM = '/usr/local/share/usgs/hspfmsg.wdm'
      ELSE
          HMSNAM = HMSNAM(:LEN_TRIM(HMSNAM)) // 
     &             '/share/usgs/hspfmsg.wdm'
      END IF
C
