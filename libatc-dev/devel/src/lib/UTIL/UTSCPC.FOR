C
C
C
      SUBROUTINE   GETKEY
     O                    (GROUP,CODE)
C
C     + + + PURPOSE + + +
C     *** PC SPECIFIC ***
C     catch keyboard interrupt
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER   GROUP,CODE
C
C     + + + ARGUMENT DEFINITIONS + + +
C     GROUP  - key group number:
C              =0 for failure
C              =1 printable character
C              =2 unprintable keys
C              =3 arrow keys
C                 CODE=1,2,3,4 for UP,DOWN,RIGHT,LEFT
C              =4 function/keypad keys
C                 CODE=0,1,2,3,4,5,6,7,8,9 for KP0-9
C                 CODE=10,11,12,13 for ENTER,".","-",","
C                 CODE=21,22,23,24 for PF1 PF2 PF3 PF4
C                 For EMIFE utility: CODE=1  HELP
C                                    CODE=2  CMDS
C                                    CODE=3  NEXT
C                                    CODE=4  BACK
C                                    CODE=5  END
C                                    CODE=6  EXIT
C     CODE   - ASCII code or function/keypad key number
C
C     + + + LOCAL VARIABLES + + +
      INTEGER     AH,AL,ICHR,CRFLG
      CHARACTER*1 ACHAR(1)
C
C     + + + INTRINSICS + + +
      INTRINSIC   ICHAR
C
C     + + + EXTERNALS + + +
      EXTERNAL    QCHR
C
C     + + + END SPECIFICATIONS + + +
C
C     get a character
      CALL QCHR (ACHAR,ICHR)
      IF (ICHR.EQ.13) THEN
C       carriage return typed
        CRFLG= 1
      ELSE
C       something else
        CRFLG= 0
      END IF
C
      IF (CRFLG.EQ.1) THEN
C       whoops, a <cr>
        GROUP= 2
        CODE = 13
      ELSE
        AL= ICHAR(ACHAR(1))
        GROUP= 0
        CODE = 0
C
        IF (AL .NE. 0) THEN
C         a character in al
          CODE = AL
          IF (AL .GE. 32) THEN
C           a printing character
            GROUP= 1
          ELSE
C           non-printing character
            GROUP= 2
          END IF
        ELSE
C         extended code on pc, get second char
          CALL QCHR (ACHAR,ICHR)
          AH= ICHAR(ACHAR(1))
          IF (AH .LE. 68 .AND. AH .GE. 59) THEN
C           function key
            GROUP= 4
            CODE = AH - 58
          ELSE
C           cursor movement key
            GROUP = 3
            IF (AH .EQ. 72) THEN
C             up arrow
              CODE = 1
            ELSE IF (AH .EQ. 80) THEN
C             down arrow
              CODE = 2
            ELSE IF (AH .EQ. 77) THEN
C             right arrow
              CODE = 3
            ELSE IF (AH .EQ. 75) THEN
C             left arrow
              CODE = 4
            ELSE IF (AH .EQ. 71) THEN
C             home
              CODE = 5
            ELSE IF (AH .EQ. 79) THEN
C             end
              CODE = 6
            ELSE IF (AH .EQ. 73) THEN
C             pg up
              CODE = 7
            ELSE IF (AH .EQ. 81) THEN
C             pg dn
              CODE = 8
            ELSE IF (AH .EQ. 83) THEN
C             del
              CODE = 9
            ELSE IF (AH .EQ. 82) THEN
C             ins
              CODE = 10
            ELSE
              GROUP= 0
              CODE = 0
            END IF
          END IF
        END IF
      END IF
C
      RETURN
      END
C
C
C
      SUBROUTINE   SCPRBN
     I                    (LEN,RMFLG,CRFLG,STR)
C
C     + + + PURPOSE + + +
C     prints a string to the terminal
C     *** PC SPECIFIC ***
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER     LEN,RMFLG,CRFLG
      CHARACTER*1 STR(LEN)
C
C     + + + ARGUMENT DEFINITIONS + + +
C     LEN    - len of string to write (characters)
C     RMFLG  - relative movement flag 0-no,1-yes
C     CRFLG  - carriage return flag 0-no,1-yes
C     STR    - characters to write
C
C     + + + COMMON BLOCKS + + +
      INCLUDE 'color.inc'
C
C     + + + LOCAL VARIABLES + + +
      INTEGER    BLIN
C
C     + + + EXTERNALS + + +
      EXTERNAL   PCPRTC
C
C     + + + END SPECIFICATIONS + + +
C
      BLIN= 0
C     CALL PCPRTC (LEN,CRFLG,STR,FORE,BACK,BLIN)
C
      RETURN
      END
C
C
C
      SUBROUTINE   C1IN
     O                  (I2CHAR)
C
C     + + + PURPOSE + + +
C     get a single character with no carriage return, time out if not there
C     *** pc specific ***
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER*2 I2CHAR
C
C     + + + ARGUMENT DEFINITIONS + + +
C     I2CHAR - integer*2 equivalent of keyboard response
C
C     + + + END SPECIFICATIONS + + +
C
C     otg equivalent of dg routine not yet written, return no keystroke
      I2CHAR= -1
C
      RETURN
      END
C
C
C
      SUBROUTINE   C1INT
     O                  (I2CHAR)
C
C     + + + PURPOSE + + +
C     get a single character with no carriage return, time out if not there
C     *** pc specific ***
C
C     + + + DUMMY ARGUMENTS + + +
      INTEGER*2 I2CHAR
C
C     + + + ARGUMENT DEFINITIONS + + +
C     I2CHAR - integer*2 equivalent of keyboard response
C
C     + + + END SPECIFICATIONS + + +
C
C     otg equivalent of dg routine not yet written, return no keystroke
      I2CHAR= -1
C
      RETURN
      END
C
C
C
      SUBROUTINE   OSDIRL
     I                   (WRKDIR,IFNAME,
     O                    UMFNMS,UMNFIL)
C
C     + + + PURPOSE + + +
C     dummy for link
C
C     + + + DUMMY ARGUMENTS + + +
      CHARACTER*64 WRKDIR,IFNAME,UMFNMS(*)
      INTEGER      UMNFIL
C
C     + + + LOCAL VARIABLES + + +
      INTEGER       I
      CHARACTER*120 SYSCMD
      CHARACTER*12  FNAME
C
C     + + + INPUT FORMATS + + +
 1000 FORMAT(A12)
C
C     + + + END SPECIFCATIONS + + +
C
      SYSCMD= 'DIR'
C
      I= LEN_TRIM(WRKDIR)
      IF (I .GT. 0) THEN
        SYSCMD= SYSCMD(1:4) // ' ' // WRKDIR(1:I)
      END IF
C
      I= LEN_TRIM(IFNAME)
      IF (I .GT. 0) THEN
        SYSCMD= SYSCMD(1:LEN_TRIM(SYSCMD)) // ' ' // IFNAME(1:I)
      END IF
C
      SYSCMD= SYSCMD(1:LEN_TRIM(SYSCMD)) // ' >DIR.LIS /B'
C
      CALL SYSTEM(SYSCMD)
C
      UMNFIL = 0
      OPEN(UNIT=100,FILE='DIR.LIS',STATUS='OLD',ERR=30)
 10   CONTINUE
        READ(100,1000,END=20) FNAME
        UMNFIL = UMNFIL+ 1
        UMFNMS(UMNFIL)= FNAME
      GO TO 10
 20   CONTINUE
      CLOSE(UNIT=100,STATUS='DELETE')
      GO TO 40
 30   CONTINUE
        WRITE(99,*) 'OSDIRL:error opening DIR.LIS',SYSCMD
        UMNFIL = UMNFIL+ 1
        UMFNMS(UMNFIL)= IFNAME(1:I)
 40   CONTINUE
C
      RETURN
      END


