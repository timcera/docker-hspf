      MODULE WIN32
          USE ISO_C_BINDING
          IMPLICIT NONE
  
          PUBLIC OVERLAPPED_T
          TYPE, bind(C) :: OVERLAPPED_T
             TYPE(C_PTR) Internal
             TYPE(C_PTR) InternalHigh
             TYPE(C_PTR) Pointer ! Union with DWORD Offset; DWORD OffsetHigh
             INTEGER(C_INTPTR_T) hEvent
          END TYPE OVERLAPPED_T
  
          PUBLIC GetStdHandle
          INTERFACE
             FUNCTION GetStdHandle(nStdHandle) &
                      bind(C,name='GetStdHandle')
                USE ISO_C_BINDING
                IMPLICIT NONE
                INTEGER(C_INTPTR_T) GetStdHandle
                INTEGER(C_LONG), VALUE :: nStdHandle
             END FUNCTION GetStdHandle
          END INTERFACE
       
       ! Possible values for nStdHandle
          INTEGER(C_LONG), PARAMETER, PUBLIC :: STD_INPUT_HANDLE = -10
          INTEGER(C_LONG), PARAMETER, PUBLIC :: STD_OUTPUT_HANDLE = -11
          INTEGER(C_LONG), PARAMETER, PUBLIC :: STD_ERROR_HANDLE = -12
  
          PUBLIC PeekNamedPipe
          INTERFACE
              FUNCTION PeekNamedPipe(hNamedPipe, &
                                     lpBuffer, &
                                     nBufferSize, &
                                     lpBytesRead, lpTotalBytesAvail, &
                                     lpBytesLeftThisMessage) &
                       bind(C, name='PeekNamedPipe')
                  USE ISO_C_BINDING
                  IMPLICIT NONE
                  !DEC$ ATTRIBUTES STDCALL :: PeekNamedPipe
                  INTEGER(C_LONG) :: PeekNamedPipe
                  INTEGER(C_INTPTR_T), INTENT(IN), VALUE :: hNamedPipe
                  CHARACTER(kind=C_CHAR), INTENT(OUT) :: lpBuffer(*)
                  INTEGER(C_INT32_T), INTENT(IN) :: nBufferSize
                  INTEGER(C_LONG), INTENT(OUT) :: lpBytesRead
                  INTEGER(C_LONG), INTENT(OUT) :: &
                          lpTotalBytesAvail
                  INTEGER(C_LONG), INTENT(OUT) :: &
                          lpBytesLeftThisMessage
              END FUNCTION PeekNamedPipe 
          END INTERFACE
  
  
        PUBLIC WriteFile
        INTERFACE
           INTEGER(C_LONG) FUNCTION WriteFile(hFile,lpBuffer, &
              nNumberOfBytesToWrite,lpNumberOfBytesWritten, &
              lpOverlapped) bind(C,name='WriteFile')
     
              USE ISO_C_BINDING
              IMPORT OVERLAPPED_T
              IMPLICIT NONE
              !DEC$ ATTRIBUTES STDCALL :: WriteFile
              INTEGER(C_INTPTR_T), VALUE :: hFile
              CHARACTER(KIND=C_CHAR) lpBuffer(*)
              INTEGER(C_LONG), VALUE :: nNumberOfBytesToWrite
              INTEGER(C_LONG) lpNumberOfBytesWritten
              TYPE(OVERLAPPED_T) lpOverLapped
           END FUNCTION WriteFile
        END INTERFACE


        PUBLIC ReadFile
        INTERFACE
           INTEGER(C_LONG) FUNCTION ReadFile(hFile,lpBuffer, &
              nNumberOfBytesToRead,lpNumberOfBytesRead, &
              lpOverlapped) bind(C,name='ReadFile')
     
              USE ISO_C_BINDING
              IMPORT OVERLAPPED_T
              IMPLICIT NONE
              !DEC$ ATTRIBUTES STDCALL :: ReadFile
              INTEGER(C_INTPTR_T), VALUE :: hFile
              CHARACTER(KIND=C_CHAR) lpBuffer(*)
              INTEGER(C_LONG), VALUE :: nNumberOfBytesToRead
              INTEGER(C_LONG) lpNumberOfBytesRead
              TYPE(OVERLAPPED_T) lpOverLapped
           END FUNCTION ReadFile
        END INTERFACE
      END MODULE WIN32
