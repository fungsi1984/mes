; A: Heart color, X: Timer multiplier, Y: Timer counter.
 LDY #$00
 LDA #$02   ; Dark color
 LDX #$05   ; Short timer multiplier
 STA $0000
 STX $0001
start: 
 LDA #$0a   ; Light color
 LDX #$0a   ; Long timer multiplier
draw:
 STA $03ce
 STA $03d0
 STA $03ed
 STA $03ee
 STA $03ef
 STA $03f0
 STA $03f1
 STA $040e
 STA $040f
 STA $0410
 STA $042f
wait:
 INY
 CPY #$00
 BNE wait
 DEX
 CPX #$00
 BNE wait
 ; Change color and waiting time
 CMP $0000  ; Swap color/timing if using dark color  
 BEQ start
 LDA $0000  ; Load dark color
 LDX $0001  ; Load short multiplier
 JMP draw
