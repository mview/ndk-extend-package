#include <private/bionic_asm.h>

ENTRY_PRIVATE(__sysenter)
    pushl   %ecx
    .cfi_adjust_cfa_offset 4
    .cfi_rel_offset ecx, 0
    pushl   %edx
    .cfi_adjust_cfa_offset 4
    .cfi_rel_offset edx, 0
    pushl   %ebp
    .cfi_adjust_cfa_offset 4
    .cfi_rel_offset ebp, 0
    movl    %esp,%ebp
    sysenter
    .space 7,0x90
    int     $0x80
    popl    %ebp
    .cfi_adjust_cfa_offset -4
    .cfi_restore ebp
    popl    %edx
    .cfi_adjust_cfa_offset -4
    .cfi_restore edx
    popl    %ecx
    .cfi_adjust_cfa_offset -4
    .cfi_restore ecx
    ret
END(__sysenter)
