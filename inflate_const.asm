; Constants used by `inflate.asm`

; Zeropage space for state:
ZEROPAGE_BASE=$F0

; Pointer to compressed data
inputPointer=ZEROPAGE_BASE              ; lo/hi = 2 bytes

; Pointer to uncompressed data
outputPointer=ZEROPAGE_BASE+2           ; lo/hi = 2 bytes

; Local variables
getBit_buffer=ZEROPAGE_BASE+4               ; 1 byte
getBits_base=ZEROPAGE_BASE+5                ; 1 byte
inflateStored_pageCounter=ZEROPAGE_BASE+5   ; 1 byte

inflateCodes_sourcePointer=ZEROPAGE_BASE+6  ; 2 bytes
inflateDynamic_symbol=ZEROPAGE_BASE+6       ; 1 byte
inflateDynamic_lastLength=ZEROPAGE_BASE+7   ; 1 byte
inflateDynamic_tempCodes=ZEROPAGE_BASE+7    ; 1 byte

inflateCodes_lengthMinus2=ZEROPAGE_BASE+8   ; 1 byte
inflateDynamic_allCodes=ZEROPAGE_BASE+8     ; 1 byte

inflateDynamic_primaryCodes=ZEROPAGE_BASE+9  ; 1 byte


;
ZEROPAGE_LOAD_VECTOR=$DE ; $DE/$DF for progress hook
