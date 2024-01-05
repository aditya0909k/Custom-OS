global longmode_start

section .text
bits 64
longmode_start:
      ; load null into all data segments
      mov ax, 0
      mov ss, ax
      mov ds, ax
      mov es, ax
      mov fs, ax
      mov gs, ax

      ; print "OK"
      mov dword [0xb8000], 0x2f4b2f4f
      hlt
