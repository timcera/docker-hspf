C     from CRHOX.INC   
C     RCHRES module common
C            OXRX section
C
C     + + + PARAMETERS + + +
      INCLUDE 'PMXEXI.INC'
C
      COMMON/SCRTCH/HYDRFG,ADFG,CONSFG,HTFG,SEDFG,GQFG,OXFG,NUTFG,
     $              PLKFG,PHFG,ACIDFG,DUMZ,PFLAG,BFLAG,DUMY,PIVL,BIVL,
     $              PYREND,BYREND,RCHPFG,RCHBFG,UUNITS,IUNITS,OUNITS,
     $              PUNIT,BUNIT,MESSU,MSGFL,RCHNO,RCHID,DELT,DELT60,
     $              DELTS,NDAY,NDAYS,LKFG,NEXITS,HRFG,DAYFG,STFG,
     $              EDAYFG,EMONFG,EPYRFG,EBYRFG,YR,MON,DAY,HR,MIN,IVL,
     $              IVL1,PIVLNO,BIVLNO,NXTMON,SPAFP,SPAKND,SPIVL,
     $              SPOPNO,SPOUT,SPNUND,DUMGEN,DUM1,DELTH,DUM2,LEN,
     $              DUM3,VOL,VOLS,DUM4,VOLFP,DUM5,SROVOL,EROVOL,SOVOL,
     $              EOVOL,DUM6,WIND,DUM7,WDFP,DUM8,ELEV,DUM9,CFPRES,
     $              DUM10,TW,DUM11,TWFP,DUM12,GQALFG,DUM13,BENRFG,
     $              DUM14,SCRFAC,DEPCOR,AVDEPE,AVVELE,OXIF,OXIFX,
     $              RCOXFP,REAMFG,KBOD20,TCBOD,KODSET,SUPSAT,CFOREA,
     $              REAKT,BENOD,TCBEN,EXPOD,BRBOD,EXPREL,TCGINV,REAK,
     $              EXPRED,EXPREV,OXWCNT,DOX,BOD,OXST2,SATDO,DOFP,
     $              BODFP,SATFP,OXCF1,OXCF1X,KOREA,BODOX,OXCF2,OXCF2X,
     $              OXCF3,OXCF4,OXCF3X,OXCF4X,DUMRCH
      INTEGER       HYDRFG,ADFG,CONSFG,HTFG,SEDFG,GQFG,OXFG,NUTFG,
     $              PLKFG,PHFG,ACIDFG,DUMZ(2),PFLAG(11),BFLAG(11),
     $              DUMY(1),PIVL,BIVL,PYREND,BYREND,RCHPFG,RCHBFG,
     $              UUNITS,IUNITS,OUNITS,PUNIT(2),BUNIT(2),MESSU,
     $              MSGFL,RCHNO,RCHID(5),NDAY(12),NDAYS,LKFG,NEXITS,
     $              HRFG,DAYFG,STFG,EDAYFG,EMONFG,EPYRFG,EBYRFG,YR,
     $              MON,DAY,HR,MIN,IVL,IVL1,PIVLNO,BIVLNO,NXTMON,
     $              SPAFP,SPAKND,SPIVL,SPOPNO,SPOUT,SPNUND,DUMGEN(13),
     $              VOLFP,WDFP,TWFP,GQALFG(7),BENRFG,OXIFX(2),
     $              RCOXFP(2),REAMFG,OXWCNT,DOFP,BODFP,SATFP,
     $              OXCF1X(2),OXCF2X(MXEXIT,2),OXCF3X(8),OXCF4X(8)
      REAL          DELT,DELT60,DELTS,DELTH,LEN,SROVOL,EROVOL,
     $              SOVOL(MXEXIT),EOVOL(MXEXIT),WIND,ELEV,CFPRES,TW,
     $              SCRFAC,DEPCOR,AVDEPE,AVVELE,OXIF(2,5),KBOD20,
     $              TCBOD,KODSET,SUPSAT,CFOREA,REAKT,BENOD,TCBEN,
     $              EXPOD,BRBOD(2),EXPREL,TCGINV,REAK,EXPRED,EXPREV,
     $              DOX,BOD,OXST2(2,5),SATDO,OXCF1(2,5),KOREA,BODOX,
     $              OXCF2(MXEXIT,2,5),OXCF3(8,5),OXCF4(8,5)
      DOUBLE PRECISION  VOL,VOLS
      INTEGER       DUM1(2744),DUM2(1004),DUM3(15),DUM4(823),
     $              DUM5(8691),DUM6(1100),DUM7(7),DUM8(5),DUM9(29),
     $              DUM10(230),DUM11,DUM12(809),DUM13(3984),DUM14(4),
     $              DUMRCH(34188)
C
      EQUIVALENCE   (ASVEC,HYDRFG),(UNIT,UUNITS),(TIMFG,HRFG),
     $              (DATIM,YR),(IDOX,OXIF(1,1)),(IBOD,OXIF(2,1)),
     $              (IDOFP,OXIFX(1)),(IODFP,OXIFX(2)),(OXPM1,REAMFG),
     $              (OXPM2,KBOD20),(OXPM3,BENOD),(OXPM4,TCGINV),
     $              (OXST,DOX),(RDOX,OXST2(1,1)),(RBOD,OXST2(2,1)),
     $              (OXSTX,DOFP),(RODOX,OXCF1(1,1)),
     $              (ROBOD,OXCF1(2,1)),(RODOFP,OXCF1X(1)),
     $              (ROODFP,OXCF1X(2)),(ODOX,OXCF2(1,1,1)),
     $              (OBOD,OXCF2(1,2,1)),(ODOFP,OXCF2X(1,1)),
     $              (OODFP,OXCF2X(1,2)),(READOX,OXCF3(1,1))
      EQUIVALENCE   (BODDOX,OXCF3(2,1)),(BENDOX,OXCF3(3,1)),
     $              (NITDOX,OXCF3(4,1)),(PHYDOX,OXCF3(5,1)),
     $              (ZOODOX,OXCF3(6,1)),(BALDOX,OXCF3(7,1)),
     $              (TOTDOX,OXCF3(8,1)),(DECBOD,OXCF4(1,1)),
     $              (BNRBOD,OXCF4(2,1)),(SNKBOD,OXCF4(3,1)),
     $              (DENBOD,OXCF4(4,1)),(PHYBOD,OXCF4(5,1)),
     $              (ZOOBOD,OXCF4(6,1)),(BALBOD,OXCF4(7,1)),
     $              (TOTBOD,OXCF4(8,1))
      INTEGER       ASVEC(11),UNIT(7),TIMFG(6),DATIM(5),IDOFP,IODFP,
     $              OXPM1,OXSTX(2),RODOFP,ROODFP,ODOFP(MXEXIT),
     $              OODFP(MXEXIT)
      REAL          IDOX,IBOD,OXPM2(4),OXPM3(6),OXPM4(4),OXST(2),RDOX,
     $              RBOD,RODOX,ROBOD,ODOX(MXEXIT),OBOD(MXEXIT),READOX,
     $              BODDOX,BENDOX,NITDOX,PHYDOX,ZOODOX,BALDOX,TOTDOX,
     $              DECBOD,BNRBOD,SNKBOD,DENBOD,PHYBOD,ZOOBOD,BALBOD,
     $              TOTBOD
C     end byte: 216000 word:54000
