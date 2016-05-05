C
C
C
      SUBROUTINE   GSCR
     I                 (WKID, CI, CR, CG, CB)
C
C     + + + PURPOSE + + +
C     set color representation. also set background color if CI=0
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER WKID, CI
      REAL CR, CG, CB
      RETURN
      END
C
C
C
      SUBROUTINE GSTXCI
     I                 (COLI)
C
C     + + + PURPOSE + + +
C     set text color index individual
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER COLI
      RETURN
      END
C
C
C
      SUBROUTINE GSASF
     I                (LASF)
C
C     + + + PURPOSE + + +
C     set aspect source flags.  really a bad name.  aspect is confusing.
C     sets flags for the mode of referencing various attributes.
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER LASF(13)
      RETURN
      END
C
C
C
      SUBROUTINE GSFACI
     I                 (COLI)
C
C     + + + PURPOSE + + +
C     set fill area color index individual
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER COLI
      RETURN
      END
C
C
C
      SUBROUTINE GSMKSC
     I                 (MSZSF)
C
C     + + + PURPOSE + + +
C     set marker scale factor
C
C     + + + DUMMY ARGUMENTS + + +
      REAL MSZSF
      RETURN
      END
C
C
C
      SUBROUTINE GSTXP
     M                (TXP)
C
C     + + + PURPOSE + + +
C     set text path
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER TXP
      RETURN
      END
C
C
C
      SUBROUTINE GTX
     I              (PX, PY, CHARS)
C
C     + + + PURPOSE + + +
C     Output graphics text.
C
C     + + + DUMMY ARGUMENTS + + +
      REAL          PX, PY
      CHARACTER*(*) CHARS
      RETURN
      END
C
C
C
      SUBROUTINE GSWN
     M               (TNR,
     I                XMIN, XMAX, YMIN, YMAX)
C
C     + + + PURPOSE + + +
C     Set window in world coordinates
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER   TNR
      REAL      XMIN, XMAX, YMIN, YMAX
      RETURN
      END
C
C
C
      SUBROUTINE GQLN
     O               (ERRIND,LTYPE)
C
C     + + + PURPOSE + + +
C     Inquire linetype.
C     Dummy routine added by p. duda.
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER  ERRIND,LTYPE
      RETURN
      END
C
C
C
      SUBROUTINE GQCHH
     O                (ERRIND, CHH)
C
C     + + + PURPOSE + + +
C     inquire character heigth
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER ERRIND
      REAL CHH
      RETURN
      END
C
C
C
      SUBROUTINE GQCF
     O               (WTYPE, ERRIND, NCOLI, COLA, NPCI)
C
C     + + + PURPOSE + + +
C     inquire color facilities
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER WTYPE, ERRIND, NCOLI, COLA, NPCI
      RETURN
      END
C
C
C
      SUBROUTINE GQDSP
     I                (DEVCOD,
     O                 ERR, DCUNIT, RX, RY, LX, LY)
C
C     + + + PURPOSE + + +
C     inquire about the display characteristics
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER DEVCOD, ERR, DCUNIT, LX, LY
      REAL    RX, RY
      RETURN
      END
C
C
C
      SUBROUTINE GSELNT
     I                 (TNR)
C
C     + + + PURPOSE + + +
C     Select normalization transformation.  Define the global
C     values for the co-ordinate transformations
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER TNR
      RETURN
      END
C
C
C
      SUBROUTINE GFA
     I              (N, PX, PY)
C
C     + + + PURPOSE + + +
C     fill area
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER N
      REAL PX(N), PY(N)
      RETURN
      END
C
C
C
      SUBROUTINE   GACWK
     I                  (WKID)
C
C     + + + PURPOSE + + +
C     activate the workstation
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER WKID
      RETURN
      END
C
C
C
      SUBROUTINE   GRQLC
     I                  (WKID,LCDNR,
     O                   STAT,TNR,PX,PY)
C
C     + + + PURPOSE + + +
C     Dummy version of routine to request locator.
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER   WKID,LCDNR,STAT,TNR
      REAL      PX,PY
      RETURN
      END
C
C
C
      SUBROUTINE GSFAI
     I                (INDEX)
C
C     + + + PURPOSE + + +
C     set fill area index bundled
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER INDEX
      RETURN
      END
C
C
C
      SUBROUTINE GSFAIS
     I                 (INTS)
C
C     + + + PURPOSE + + +
C     set fill area interior style individual.
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER INTS
      RETURN
      END
C
C
C
      SUBROUTINE GSFASI
     I                 (STYLI)
C
C     + + + PURPOSE + + +
C     set fill area style index individual
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER STYLI
      RETURN
      END
C
C
C
      SUBROUTINE GSWKWN
     ?                 (WKID, XMIN, XMAX, YMIN, YMAX)
C
C     + + + PURPOSE + + +
C     set the workstation window and compute scale factors if
C     possible
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER WKID
      REAL XMIN, XMAX, YMIN, YMAX
      RETURN
      END
C
C
C
      SUBROUTINE GQCHXP
     O                 (ERRIND, CHXP)
C
C     + + + PURPOSE + + +
C     inquire character expansion factor
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER ERRIND
      REAL CHXP
      RETURN
      END
C
C
C
      SUBROUTINE GQLWSC
     O                 (ERRIND,LWIDTH)
C
C     + + + PURPOSE + + +
C     Inquire linewidth scale factor.
C     Dummy routine added by p. duda.
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER  ERRIND
      REAL     LWIDTH
      RETURN
      END
C
C
C
      SUBROUTINE GQPMCI
     O                 (ERRIND,COLI)
C
C     + + + PURPOSE + + +
C     Inquire polymarker color index.
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER  ERRIND,COLI
      RETURN
      END
C
C
C
      SUBROUTINE GSCHH
     I                (CHH)
C
C     + + + PURPOSE + + +
C     set character height- in world units.  unclear as to
C     what this means when the characters are not vertical or
C     horizontal.  we will convert to device units here
C     remember only one work station can be open at a time
C     in this simple version of GKS.  Therefore conversion to
C     device co-ordinates is always possible!

C     the information I have on GKS does not make clear which
C     of the two world values are to be used for character
C     height!  I assume that the vertical, y, direction is always
C     used, no matter what the orientation of the text is to be.
C
C     + + + DUMMY ARGUMENTS + + +
      REAL CHH
      RETURN
      END
C
C
C
      SUBROUTINE GSWKVP
     M                 (WKID,
     I                  XMIN, XMAX, YMIN, YMAX)
C
C     + + + PURPOSE + + +
C     set the workstation viewport
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER WKID
      REAL XMIN, XMAX, YMIN, YMAX
      RETURN
      END
C
C
C
      SUBROUTINE GQTXFP
     O                 (ERRIND, FONT, PREC)
C
C     + + + PURPOSE + + +
C     inquire text font and precision
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER ERRIND, FONT, PREC
      RETURN
      END
C
C
C
      SUBROUTINE GQMKSC
     O                 (ERRIND, MSZSF)
C
C     + + + PURPOSE + + +
C     inquire marker size scale factor
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER ERRIND
      REAL MSZSF
      RETURN
      END
C
C
C
      SUBROUTINE   GOPWK
     I                  (WKID, CONID, WTYPE)
C
C     + + + PURPOSE + + +
C     open workstation, that is establish values about the work
C     station that will be needed later.
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER   WKID, CONID, WTYPE
      RETURN
      END
C
C
C
      SUBROUTINE GQPLCI
     O                 (ERRIND,COLI)
C
C     + + + PURPOSE + + +
C     Inquire polyline color index.
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER  ERRIND,COLI
      RETURN
      END
C
C
C
      SUBROUTINE GSLN
     I               (LTYP)
C
C     + + + PURPOSE + + +
C     set line type - individual access
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER LTYP
      RETURN
      END
C
C
C
      SUBROUTINE GQTXX
     I                (WKID, PX, PY, STR,
     O                 ERRIND,CPX,CPY,TXEXPX,TXEXPY)
C
C     + + + PURPOSE + + +
C     INQUIRE TEXT EXTENT- Finds the end point of the given string
C     and the rectangle that encloses the string.  All points to
C     be returned in world co-ordinates.
C
C     + + + DUMMY ARGUMENTS + + +
      CHARACTER*(*) STR
      INTEGER WKID, ERRIND
      REAL PX, PY, CPX, CPY
      REAL TXEXPX(4), TXEXPY(4)
      RETURN
      END
C
C
C
      SUBROUTINE   GCLWK
     I                  (WKID)
C
C     + + + PURPOSE + + +
C     close workstation- that is bring back the orignial video
C     mode when the workstation was activated.
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER   WKID
      RETURN
      END
C
C
C
      SUBROUTINE GCLKS
C
C     + + + PURPOSE + + +
C     stop working with GKS
      RETURN
      END
C
C
C
      SUBROUTINE GSLWSC
     I                 (LWID)
C
C     + + + PURPOSE + + +
C     set linewidth scale factor- individual
C
C     + + + DUMMY ARGUMENTS + + +
      REAL LWID
      RETURN
      END
C
C
C
      SUBROUTINE   GCLRWK
     I                   (WKID,COFL)
C
C     + + + PURPOSE + + +
C     clear workstation.
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER WKID, COFL
      RETURN
      END
C
C
C
      SUBROUTINE   GQACWK
     I                   (N,
     O                    ERRIND,OL,WKID)
C
C     + + + PURPOSE + + +
C     Inquire number of active work stations.
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER   N,ERRIND,OL,WKID
      RETURN
      END
C
C
C
      SUBROUTINE GQWKS
     O                (WKID, ERRIND, STATE)
C
C     + + + PURPOSE + + +
C     inquire workstation state
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER WKID, ERRIND, STATE
      RETURN
      END
C
C
C
      SUBROUTINE GSPLCI
     I                 (COLI)
C
C     + + + PURPOSE + + +
C     set polyline color index
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER COLI
      RETURN
      END
C
C
C
      SUBROUTINE GSPMCI
     I                 (COLI)
C
C     + + + PURPOSE + + +
C     set polymarker color index individual
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER COLI
      RETURN
      END
C
C
C
      SUBROUTINE GQOPS
     O                (OPSTA)
C
C     + + + PURPOSE + + +
C     inquire operating state value
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER OPSTA
      RETURN
      END
C
C
C
      SUBROUTINE   GDAWK
     I                  (WKID)
C
C     + + + PURPOSE + + +
C     deactivate the workstation.  not clear what this means
C     in our current context.
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER   WKID
      RETURN
      END
C
C
C
      SUBROUTINE GSVP
     M               (TNR,
     I                XMIN, XMAX, YMIN, YMAX)
C
C     + + + PURPOSE + + +
C     set the viewpoint in normalized device co-ordinates of the
C     specified normalization transformation.  note:this sets the
C     relationship between the aspect of the world view and the
C     aspect of all other representations.
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER TNR
      REAL XMIN, XMAX, YMIN, YMAX
      RETURN
      END
C
C
C
      SUBROUTINE GSCHXP
     I                  (CHXP)
C
C     + + + PURPOSE + + +
C     set character expansion factor individual
C
C     + + + DUMMY ARGUMENTS + + +
      REAL CHXP
      RETURN
      END
C
C
C
      SUBROUTINE   GOPKS
     I                  (ERRFIL, BUFA)
C
C     + + + PURPOSE + + +
C     start working with GKS
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER   ERRFIL, BUFA
      RETURN
      END
C
C
C
      SUBROUTINE GESC
     I               (FCTID, LIDR, IDR, MODR, LODR, ODR)
C
C     + + + PURPOSE + + +
C     ???
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER FCTID, LIDR, MODR,  LODR
      CHARACTER*80 IDR(LIDR), ODR(MODR)
      RETURN
      END
C
C
C
      SUBROUTINE GQCHSP
     O                 (ERRIND, CHSP)
C
C     + + + PURPOSE + + +
C     inquire character spacing
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER ERRIND
      REAL CHSP
      RETURN
      END
C
C
C
      SUBROUTINE GSCHSP
     I                 (CHSP)
C
C     + + + PURPOSE + + +
C     set character spacing individual. variable character spacing
C     not supported
C
C     + + + DUMMY ARGUMENTS + + +
      REAL CHSP
      RETURN
      END
C
C
C
      SUBROUTINE   GPL
     I                (N,PX,PY)
C
C     + + + PURPOSE + + +
C     polyline- plot polyline in world coordinates
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER  N
      REAL     PX(N),PY(N)
      RETURN
      END
C
C
C
      SUBROUTINE GSCHUP
     I                 (CHUX, CHUY)
C
C     + + + PURPOSE + + +
C     set character up vector
C
C     + + + DUMMY ARGUMENTS + + +
      REAL CHUX, CHUY
      RETURN
      END
C
C
C
      SUBROUTINE GSTXAL
     O                 (TXALH, TXALV)
C
C     + + + PURPOSE + + +
C     set text alignment
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER TXALH, TXALV
      RETURN
      END
C
C
C
      SUBROUTINE GSTXFP
     I                 (FONT, PREC)
C
C     + + + PURPOSE + + +
C     set text font and precision individual
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER FONT, PREC
      RETURN
      END
C
C
C
      SUBROUTINE GQFAIS
     O                 (ERRIND,INTS)
C
C     + + + PURPOSE + + +
C     Inquire fill area interior style.
C     Dummy routine added by p. duda.
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER  ERRIND,INTS
      RETURN
      END
C
C
C
      SUBROUTINE GQFACI
     O                 (ERRIND,COLI)
C
C     + + + PURPOSE + + +
C     Inquire fill area color index.
C     Dummy routine added by p. duda.
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER  ERRIND,COLI
      RETURN
      END
C
C
C
      SUBROUTINE   GINLC
     I                  (WKID,LCDNR,TNR,IPX,IPY,PET,XMIN,XMAX,
     I                   YMIN,YMAX,LDR,DATREC)
C
C     + + + PURPOSE + + +
C     Dummy version of routine to initialize logical input locator.
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER      WKID,LCDNR,TNR,PET,LDR
      REAL         IPX,IPY,XMIN,XMAX,YMIN,YMAX
      CHARACTER*80 DATREC
      RETURN
      END
C
C
C
      SUBROUTINE GSCLIP
     I                 (CLSW)
C
C     + + + PURPOSE + + +
C     set clipping indicator
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER CLSW
      RETURN
      END
