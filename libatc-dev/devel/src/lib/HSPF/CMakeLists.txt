
set(
    SRCS
        HBMPRAC.FOR
        HDATUT.FOR
        HEXTUTIL.FOR
        HFILES.FOR
        HGENUT.FOR
        HIMP.FOR
        HIMPGAS.FOR
        HIMPQUA.FOR
        HIMPSLD.FOR
        HIMPWAT.FOR
        HIOOSUP.FOR
        HIOOSV.FOR
        HIOSTA.FOR
        HIOTSIN.FOR
        HIOUCI.FOR
        HIOWRK.FOR
        HIRRIG.FOR
        HOSUPER.FOR
        HPERAGUT.FOR
        HPERAIR.FOR
        HPER.FOR
        HPERGAS.FOR
        HPERMST.FOR
        HPERNIT.FOR
        HPERPES.FOR
        HPERPHO.FOR
        HPERQUA.FOR
        HPERSED.FOR
        HPERSNO.FOR
        HPERTMP.FOR
        HPERTRA.FOR
        HPERWAT.FOR
#        HPERWAT_NOFTAB.FOR
#        HPERWAT_SURET.FOR
        HPESTUT.FOR
        HPRBUT.FOR
        HRCHACI.FOR
        HRCHCON.FOR
        HRCH.FOR
        HRCHGQU.FOR
        HRCHHTR.FOR
        HRCHHYD.FOR
#        HRCHHYD_O.FOR
        HRCHNUT.FOR
        HRCHOXR.FOR
        HRCHPHC.FOR
        HRCHPLK.FOR
        HRCHRQ.FOR
        HRCHSED.FOR
        HRCHSHD.FOR
        HRCHUT.FOR
        HREPORT.FOR
        HRINGEN.FOR
        HRINGEUT.FOR
        HRINOPN.FOR
        HRINOPUT.FOR
        HRINSEQ.FOR
        HRINTS.FOR
        HRINTSS.FOR
        HRINWDM.FOR
        HRUNTSGP.FOR
        HRUNTSGQ.FOR
        HRUNTSGT.FOR
        HRUNTSGW.FOR
        HRUNTSPT.FOR
        HRUNTSPW.FOR
        HRUNTSUT.FOR
        HRUNUT.FOR
        HSPFEC.FOR
        HSPF.FOR
        HSPFITAB.FOR
        HTSINSI.FOR
        HTSINSZ.FOR
        HTSSUT.FOR
        HUTDURA.FOR
        HUTOP.FOR
        HUTOPINP.FOR
        HWDMUT.FOR
        SPECACT.FOR
    )

#if (UNIX)
    set(
        SRCS
            ${SRCS}
            HBINUX.FOR
        HSPSTAE.FOR # Dummy, Windows versions in HASSLIBS/Hspsta.FOR
        )
#endif ()

#if (WIN32)
#    set(
#        SRCS
#            ${SRCS}
#            HBINLH.FOR
#        )
#endif ()

include(../abspath.cmake)
