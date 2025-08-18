;NES GAME YAYYY
.segment "HEADERS"

    .byte "NES"                     ;identification string 
    .byte $1A 
    .byte $02                       ;amount of PRG ROM in 16K
    .byte $01                       ;amount of CHR ROM in 8K
    .byte $00                       ;mapping and mirroring

    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00, $00

.segment "ZEROPAGE"

    VAR:    .RES 1                  ;reserves 1 byte of memory

.segment "STARTUP"

    RESET :
        INFLOOP:
            JMF INFLOOP

    NMI   : 
        RTI

.segment "VECTORS"

    .word NMI
    .word RESET

.segment "CHARS"
    .incbin "rom.chr"