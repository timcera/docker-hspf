C     Defines the name of the message file

      CALL GETENV('USGSHOME', WDNAME)
      
      IF (LEN_TRIM(WDNAME) .EQ. 0) THEN
          WDNAME = '/usr/local/share/usgs/message.wdm'
      ELSE
          WDNAME = WDNAME(:LEN_TRIM(WDNAME)) // 
     &             '/share/usgs/message.wdm'
      END IF

      RDOFLG = 1
      CALL WDBOPN (WDMSFL,FILNAM,RDOFLG,
     O             ERRFLG)
      IF (ERRFLG.NE.0) THEN
        WDNAME = 'message.wdm'
      END IF
      CALL WDFLCL (WDMSFL)      

