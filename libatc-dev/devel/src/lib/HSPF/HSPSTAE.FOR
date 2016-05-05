C
C
      SUBROUTINE   HSPF_INI
     I                      (DELT,OPST,OPND,OPNTAB,
     O                       EXUPFG,EXTWID)
C
C     + + + PURPOSE + + +
C     Passes start-up information from HSPF to integrated model driver
C     program, and returns the number of intervals to run.  If a run
C     has multiple INSPANs, the driver must be able to respond to
C     multiple messages from this subroutine, each with its own DELT.
C
C     dummy for the DOS version of HSPF
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER   DELT,OPST,OPND,OPNTAB(20,OPND),EXUPFG,EXTWID
C
C     + + + ARGUMENT DEFINITIONS + + +
C     DELT   - timestep of run, in minutes
C     OPST   - first operation of this ingroup
C     OPND   - last operation of this ingroup
C     OPNTAB - table of operation information and keys
C     EXUPFG - flag indicating whether updates are needed from
C              external driver during the run
C     EXTWID - maximum inspan width required by external driver
C
C     + + + END SPECIFICATIONS + + +
C
      EXUPFG= 0
      EXTWID= 0
C
      RETURN
      END
C
C
C
      SUBROUTINE   EXT_UPDATE
     I                        (WDMSFL,FOPKEY,LOPKEY,OSUPM)
C
C     + + + PURPOSE + + +
C     Pause the run each inspan, read updates from file, and alter OSV as
C     needed.
C
C     dummy for the DOS version of HSPF
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER WDMSFL(5),FOPKEY,LOPKEY,OSUPM(11,LOPKEY)
C
C     + + + ARGUMENT DEFINITIONS + + +
C     WDMSFL - array of WDM file unit numbers
C     FOPKEY - pointer to first operation in osuper file
C     LOPKEY - pointer to last operation in osuper file
C     OSUPM  - osuper file
C
C     + + + END SPECIFICATIONS + + +
C
      RETURN
      END
