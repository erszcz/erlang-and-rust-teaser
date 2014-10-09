# 1 "c_src/er.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 170 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "c_src/er.c" 2
# 1 "c_src/er.h" 1



# 1 "/Users/erszcz/.kerl/builds/17.1/otp_src_17.1/erts/emulator/beam/erl_nif.h" 1
# 30 "/Users/erszcz/.kerl/builds/17.1/otp_src_17.1/erts/emulator/beam/erl_nif.h"
# 1 "/Users/erszcz/.kerl/builds/17.1/otp_src_17.1/erts/include/x86_64-apple-darwin13.2.0/erl_native_features_config.h" 1
# 31 "/Users/erszcz/.kerl/builds/17.1/otp_src_17.1/erts/emulator/beam/erl_nif.h" 2
# 1 "/Users/erszcz/.kerl/builds/17.1/otp_src_17.1/erts/emulator/beam/erl_drv_nif.h" 1
# 27 "/Users/erszcz/.kerl/builds/17.1/otp_src_17.1/erts/emulator/beam/erl_drv_nif.h"
typedef struct {
    int driver_major_version;
    int driver_minor_version;
    char *erts_version;
    char *otp_release;
    int thread_support;
    int smp_support;
    int async_threads;
    int scheduler_threads;
    int nif_major_version;
    int nif_minor_version;
} ErlDrvSysInfo;

typedef struct {
    int suggested_stack_size;
} ErlDrvThreadOpts;
# 32 "/Users/erszcz/.kerl/builds/17.1/otp_src_17.1/erts/emulator/beam/erl_nif.h" 2
# 61 "/Users/erszcz/.kerl/builds/17.1/otp_src_17.1/erts/emulator/beam/erl_nif.h"
# 1 "/usr/include/stdlib.h" 1 3 4
# 61 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/Availability.h" 1 3 4
# 148 "/usr/include/Availability.h" 3 4
# 1 "/usr/include/AvailabilityInternal.h" 1 3 4
# 149 "/usr/include/Availability.h" 2 3 4
# 62 "/usr/include/stdlib.h" 2 3 4

# 1 "/usr/include/_types.h" 1 3 4
# 27 "/usr/include/_types.h" 3 4
# 1 "/usr/include/sys/_types.h" 1 3 4
# 32 "/usr/include/sys/_types.h" 3 4
# 1 "/usr/include/sys/cdefs.h" 1 3 4
# 484 "/usr/include/sys/cdefs.h" 3 4
# 1 "/usr/include/sys/_symbol_aliasing.h" 1 3 4
# 485 "/usr/include/sys/cdefs.h" 2 3 4
# 550 "/usr/include/sys/cdefs.h" 3 4
# 1 "/usr/include/sys/_posix_availability.h" 1 3 4
# 551 "/usr/include/sys/cdefs.h" 2 3 4
# 33 "/usr/include/sys/_types.h" 2 3 4
# 1 "/usr/include/machine/_types.h" 1 3 4
# 32 "/usr/include/machine/_types.h" 3 4
# 1 "/usr/include/i386/_types.h" 1 3 4
# 37 "/usr/include/i386/_types.h" 3 4
typedef signed char __int8_t;



typedef unsigned char __uint8_t;
typedef short __int16_t;
typedef unsigned short __uint16_t;
typedef int __int32_t;
typedef unsigned int __uint32_t;
typedef long long __int64_t;
typedef unsigned long long __uint64_t;

typedef long __darwin_intptr_t;
typedef unsigned int __darwin_natural_t;
# 70 "/usr/include/i386/_types.h" 3 4
typedef int __darwin_ct_rune_t;





typedef union {
 char __mbstate8[128];
 long long _mbstateL;
} __mbstate_t;

typedef __mbstate_t __darwin_mbstate_t;


typedef long int __darwin_ptrdiff_t;







typedef long unsigned int __darwin_size_t;





typedef __builtin_va_list __darwin_va_list;





typedef int __darwin_wchar_t;




typedef __darwin_wchar_t __darwin_rune_t;


typedef int __darwin_wint_t;




typedef unsigned long __darwin_clock_t;
typedef __uint32_t __darwin_socklen_t;
typedef long __darwin_ssize_t;
typedef long __darwin_time_t;
# 33 "/usr/include/machine/_types.h" 2 3 4
# 34 "/usr/include/sys/_types.h" 2 3 4
# 58 "/usr/include/sys/_types.h" 3 4
struct __darwin_pthread_handler_rec
{
 void (*__routine)(void *);
 void *__arg;
 struct __darwin_pthread_handler_rec *__next;
};
struct _opaque_pthread_attr_t { long __sig; char __opaque[56]; };
struct _opaque_pthread_cond_t { long __sig; char __opaque[40]; };
struct _opaque_pthread_condattr_t { long __sig; char __opaque[8]; };
struct _opaque_pthread_mutex_t { long __sig; char __opaque[56]; };
struct _opaque_pthread_mutexattr_t { long __sig; char __opaque[8]; };
struct _opaque_pthread_once_t { long __sig; char __opaque[8]; };
struct _opaque_pthread_rwlock_t { long __sig; char __opaque[192]; };
struct _opaque_pthread_rwlockattr_t { long __sig; char __opaque[16]; };
struct _opaque_pthread_t { long __sig; struct __darwin_pthread_handler_rec *__cleanup_stack; char __opaque[1168]; };
# 94 "/usr/include/sys/_types.h" 3 4
typedef __int64_t __darwin_blkcnt_t;
typedef __int32_t __darwin_blksize_t;
typedef __int32_t __darwin_dev_t;
typedef unsigned int __darwin_fsblkcnt_t;
typedef unsigned int __darwin_fsfilcnt_t;
typedef __uint32_t __darwin_gid_t;
typedef __uint32_t __darwin_id_t;
typedef __uint64_t __darwin_ino64_t;

typedef __darwin_ino64_t __darwin_ino_t;



typedef __darwin_natural_t __darwin_mach_port_name_t;
typedef __darwin_mach_port_name_t __darwin_mach_port_t;
typedef __uint16_t __darwin_mode_t;
typedef __int64_t __darwin_off_t;
typedef __int32_t __darwin_pid_t;
typedef struct _opaque_pthread_attr_t
   __darwin_pthread_attr_t;
typedef struct _opaque_pthread_cond_t
   __darwin_pthread_cond_t;
typedef struct _opaque_pthread_condattr_t
   __darwin_pthread_condattr_t;
typedef unsigned long __darwin_pthread_key_t;
typedef struct _opaque_pthread_mutex_t
   __darwin_pthread_mutex_t;
typedef struct _opaque_pthread_mutexattr_t
   __darwin_pthread_mutexattr_t;
typedef struct _opaque_pthread_once_t
   __darwin_pthread_once_t;
typedef struct _opaque_pthread_rwlock_t
   __darwin_pthread_rwlock_t;
typedef struct _opaque_pthread_rwlockattr_t
   __darwin_pthread_rwlockattr_t;
typedef struct _opaque_pthread_t
   *__darwin_pthread_t;
typedef __uint32_t __darwin_sigset_t;
typedef __int32_t __darwin_suseconds_t;
typedef __uint32_t __darwin_uid_t;
typedef __uint32_t __darwin_useconds_t;
typedef unsigned char __darwin_uuid_t[16];
typedef char __darwin_uuid_string_t[37];
# 28 "/usr/include/_types.h" 2 3 4
# 39 "/usr/include/_types.h" 3 4
typedef int __darwin_nl_item;
typedef int __darwin_wctrans_t;

typedef __uint32_t __darwin_wctype_t;
# 64 "/usr/include/stdlib.h" 2 3 4

# 1 "/usr/include/sys/wait.h" 1 3 4
# 79 "/usr/include/sys/wait.h" 3 4
typedef enum {
 P_ALL,
 P_PID,
 P_PGID
} idtype_t;






# 1 "/usr/include/sys/_types/_pid_t.h" 1 3 4
# 30 "/usr/include/sys/_types/_pid_t.h" 3 4
typedef __darwin_pid_t pid_t;
# 90 "/usr/include/sys/wait.h" 2 3 4
# 1 "/usr/include/sys/_types/_id_t.h" 1 3 4
# 30 "/usr/include/sys/_types/_id_t.h" 3 4
typedef __darwin_id_t id_t;
# 91 "/usr/include/sys/wait.h" 2 3 4
# 109 "/usr/include/sys/wait.h" 3 4
# 1 "/usr/include/sys/signal.h" 1 3 4
# 73 "/usr/include/sys/signal.h" 3 4
# 1 "/usr/include/sys/appleapiopts.h" 1 3 4
# 74 "/usr/include/sys/signal.h" 2 3 4







# 1 "/usr/include/machine/signal.h" 1 3 4
# 32 "/usr/include/machine/signal.h" 3 4
# 1 "/usr/include/i386/signal.h" 1 3 4
# 39 "/usr/include/i386/signal.h" 3 4
typedef int sig_atomic_t;
# 33 "/usr/include/machine/signal.h" 2 3 4
# 82 "/usr/include/sys/signal.h" 2 3 4
# 145 "/usr/include/sys/signal.h" 3 4
# 1 "/usr/include/machine/_mcontext.h" 1 3 4
# 29 "/usr/include/machine/_mcontext.h" 3 4
# 1 "/usr/include/i386/_mcontext.h" 1 3 4
# 33 "/usr/include/i386/_mcontext.h" 3 4
# 1 "/usr/include/mach/i386/_structs.h" 1 3 4
# 43 "/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_i386_thread_state
{
    unsigned int __eax;
    unsigned int __ebx;
    unsigned int __ecx;
    unsigned int __edx;
    unsigned int __edi;
    unsigned int __esi;
    unsigned int __ebp;
    unsigned int __esp;
    unsigned int __ss;
    unsigned int __eflags;
    unsigned int __eip;
    unsigned int __cs;
    unsigned int __ds;
    unsigned int __es;
    unsigned int __fs;
    unsigned int __gs;
};
# 89 "/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_fp_control
{
    unsigned short __invalid :1,
        __denorm :1,
    __zdiv :1,
    __ovrfl :1,
    __undfl :1,
    __precis :1,
      :2,
    __pc :2,





    __rc :2,






             :1,
      :3;
};
typedef struct __darwin_fp_control __darwin_fp_control_t;
# 147 "/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_fp_status
{
    unsigned short __invalid :1,
        __denorm :1,
    __zdiv :1,
    __ovrfl :1,
    __undfl :1,
    __precis :1,
    __stkflt :1,
    __errsumm :1,
    __c0 :1,
    __c1 :1,
    __c2 :1,
    __tos :3,
    __c3 :1,
    __busy :1;
};
typedef struct __darwin_fp_status __darwin_fp_status_t;
# 191 "/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_mmst_reg
{
 char __mmst_reg[10];
 char __mmst_rsrv[6];
};
# 210 "/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_xmm_reg
{
 char __xmm_reg[16];
};
# 232 "/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_i386_float_state
{
 int __fpu_reserved[2];
 struct __darwin_fp_control __fpu_fcw;
 struct __darwin_fp_status __fpu_fsw;
 __uint8_t __fpu_ftw;
 __uint8_t __fpu_rsrv1;
 __uint16_t __fpu_fop;
 __uint32_t __fpu_ip;
 __uint16_t __fpu_cs;
 __uint16_t __fpu_rsrv2;
 __uint32_t __fpu_dp;
 __uint16_t __fpu_ds;
 __uint16_t __fpu_rsrv3;
 __uint32_t __fpu_mxcsr;
 __uint32_t __fpu_mxcsrmask;
 struct __darwin_mmst_reg __fpu_stmm0;
 struct __darwin_mmst_reg __fpu_stmm1;
 struct __darwin_mmst_reg __fpu_stmm2;
 struct __darwin_mmst_reg __fpu_stmm3;
 struct __darwin_mmst_reg __fpu_stmm4;
 struct __darwin_mmst_reg __fpu_stmm5;
 struct __darwin_mmst_reg __fpu_stmm6;
 struct __darwin_mmst_reg __fpu_stmm7;
 struct __darwin_xmm_reg __fpu_xmm0;
 struct __darwin_xmm_reg __fpu_xmm1;
 struct __darwin_xmm_reg __fpu_xmm2;
 struct __darwin_xmm_reg __fpu_xmm3;
 struct __darwin_xmm_reg __fpu_xmm4;
 struct __darwin_xmm_reg __fpu_xmm5;
 struct __darwin_xmm_reg __fpu_xmm6;
 struct __darwin_xmm_reg __fpu_xmm7;
 char __fpu_rsrv4[14*16];
 int __fpu_reserved1;
};


struct __darwin_i386_avx_state
{
 int __fpu_reserved[2];
 struct __darwin_fp_control __fpu_fcw;
 struct __darwin_fp_status __fpu_fsw;
 __uint8_t __fpu_ftw;
 __uint8_t __fpu_rsrv1;
 __uint16_t __fpu_fop;
 __uint32_t __fpu_ip;
 __uint16_t __fpu_cs;
 __uint16_t __fpu_rsrv2;
 __uint32_t __fpu_dp;
 __uint16_t __fpu_ds;
 __uint16_t __fpu_rsrv3;
 __uint32_t __fpu_mxcsr;
 __uint32_t __fpu_mxcsrmask;
 struct __darwin_mmst_reg __fpu_stmm0;
 struct __darwin_mmst_reg __fpu_stmm1;
 struct __darwin_mmst_reg __fpu_stmm2;
 struct __darwin_mmst_reg __fpu_stmm3;
 struct __darwin_mmst_reg __fpu_stmm4;
 struct __darwin_mmst_reg __fpu_stmm5;
 struct __darwin_mmst_reg __fpu_stmm6;
 struct __darwin_mmst_reg __fpu_stmm7;
 struct __darwin_xmm_reg __fpu_xmm0;
 struct __darwin_xmm_reg __fpu_xmm1;
 struct __darwin_xmm_reg __fpu_xmm2;
 struct __darwin_xmm_reg __fpu_xmm3;
 struct __darwin_xmm_reg __fpu_xmm4;
 struct __darwin_xmm_reg __fpu_xmm5;
 struct __darwin_xmm_reg __fpu_xmm6;
 struct __darwin_xmm_reg __fpu_xmm7;
 char __fpu_rsrv4[14*16];
 int __fpu_reserved1;
 char __avx_reserved1[64];
 struct __darwin_xmm_reg __fpu_ymmh0;
 struct __darwin_xmm_reg __fpu_ymmh1;
 struct __darwin_xmm_reg __fpu_ymmh2;
 struct __darwin_xmm_reg __fpu_ymmh3;
 struct __darwin_xmm_reg __fpu_ymmh4;
 struct __darwin_xmm_reg __fpu_ymmh5;
 struct __darwin_xmm_reg __fpu_ymmh6;
 struct __darwin_xmm_reg __fpu_ymmh7;
};
# 402 "/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_i386_exception_state
{
 __uint16_t __trapno;
 __uint16_t __cpu;
 __uint32_t __err;
 __uint32_t __faultvaddr;
};
# 422 "/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_x86_debug_state32
{
 unsigned int __dr0;
 unsigned int __dr1;
 unsigned int __dr2;
 unsigned int __dr3;
 unsigned int __dr4;
 unsigned int __dr5;
 unsigned int __dr6;
 unsigned int __dr7;
};
# 454 "/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_x86_thread_state64
{
 __uint64_t __rax;
 __uint64_t __rbx;
 __uint64_t __rcx;
 __uint64_t __rdx;
 __uint64_t __rdi;
 __uint64_t __rsi;
 __uint64_t __rbp;
 __uint64_t __rsp;
 __uint64_t __r8;
 __uint64_t __r9;
 __uint64_t __r10;
 __uint64_t __r11;
 __uint64_t __r12;
 __uint64_t __r13;
 __uint64_t __r14;
 __uint64_t __r15;
 __uint64_t __rip;
 __uint64_t __rflags;
 __uint64_t __cs;
 __uint64_t __fs;
 __uint64_t __gs;
};
# 509 "/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_x86_float_state64
{
 int __fpu_reserved[2];
 struct __darwin_fp_control __fpu_fcw;
 struct __darwin_fp_status __fpu_fsw;
 __uint8_t __fpu_ftw;
 __uint8_t __fpu_rsrv1;
 __uint16_t __fpu_fop;


 __uint32_t __fpu_ip;
 __uint16_t __fpu_cs;

 __uint16_t __fpu_rsrv2;


 __uint32_t __fpu_dp;
 __uint16_t __fpu_ds;

 __uint16_t __fpu_rsrv3;
 __uint32_t __fpu_mxcsr;
 __uint32_t __fpu_mxcsrmask;
 struct __darwin_mmst_reg __fpu_stmm0;
 struct __darwin_mmst_reg __fpu_stmm1;
 struct __darwin_mmst_reg __fpu_stmm2;
 struct __darwin_mmst_reg __fpu_stmm3;
 struct __darwin_mmst_reg __fpu_stmm4;
 struct __darwin_mmst_reg __fpu_stmm5;
 struct __darwin_mmst_reg __fpu_stmm6;
 struct __darwin_mmst_reg __fpu_stmm7;
 struct __darwin_xmm_reg __fpu_xmm0;
 struct __darwin_xmm_reg __fpu_xmm1;
 struct __darwin_xmm_reg __fpu_xmm2;
 struct __darwin_xmm_reg __fpu_xmm3;
 struct __darwin_xmm_reg __fpu_xmm4;
 struct __darwin_xmm_reg __fpu_xmm5;
 struct __darwin_xmm_reg __fpu_xmm6;
 struct __darwin_xmm_reg __fpu_xmm7;
 struct __darwin_xmm_reg __fpu_xmm8;
 struct __darwin_xmm_reg __fpu_xmm9;
 struct __darwin_xmm_reg __fpu_xmm10;
 struct __darwin_xmm_reg __fpu_xmm11;
 struct __darwin_xmm_reg __fpu_xmm12;
 struct __darwin_xmm_reg __fpu_xmm13;
 struct __darwin_xmm_reg __fpu_xmm14;
 struct __darwin_xmm_reg __fpu_xmm15;
 char __fpu_rsrv4[6*16];
 int __fpu_reserved1;
};


struct __darwin_x86_avx_state64
{
 int __fpu_reserved[2];
 struct __darwin_fp_control __fpu_fcw;
 struct __darwin_fp_status __fpu_fsw;
 __uint8_t __fpu_ftw;
 __uint8_t __fpu_rsrv1;
 __uint16_t __fpu_fop;


 __uint32_t __fpu_ip;
 __uint16_t __fpu_cs;

 __uint16_t __fpu_rsrv2;


 __uint32_t __fpu_dp;
 __uint16_t __fpu_ds;

 __uint16_t __fpu_rsrv3;
 __uint32_t __fpu_mxcsr;
 __uint32_t __fpu_mxcsrmask;
 struct __darwin_mmst_reg __fpu_stmm0;
 struct __darwin_mmst_reg __fpu_stmm1;
 struct __darwin_mmst_reg __fpu_stmm2;
 struct __darwin_mmst_reg __fpu_stmm3;
 struct __darwin_mmst_reg __fpu_stmm4;
 struct __darwin_mmst_reg __fpu_stmm5;
 struct __darwin_mmst_reg __fpu_stmm6;
 struct __darwin_mmst_reg __fpu_stmm7;
 struct __darwin_xmm_reg __fpu_xmm0;
 struct __darwin_xmm_reg __fpu_xmm1;
 struct __darwin_xmm_reg __fpu_xmm2;
 struct __darwin_xmm_reg __fpu_xmm3;
 struct __darwin_xmm_reg __fpu_xmm4;
 struct __darwin_xmm_reg __fpu_xmm5;
 struct __darwin_xmm_reg __fpu_xmm6;
 struct __darwin_xmm_reg __fpu_xmm7;
 struct __darwin_xmm_reg __fpu_xmm8;
 struct __darwin_xmm_reg __fpu_xmm9;
 struct __darwin_xmm_reg __fpu_xmm10;
 struct __darwin_xmm_reg __fpu_xmm11;
 struct __darwin_xmm_reg __fpu_xmm12;
 struct __darwin_xmm_reg __fpu_xmm13;
 struct __darwin_xmm_reg __fpu_xmm14;
 struct __darwin_xmm_reg __fpu_xmm15;
 char __fpu_rsrv4[6*16];
 int __fpu_reserved1;
 char __avx_reserved1[64];
 struct __darwin_xmm_reg __fpu_ymmh0;
 struct __darwin_xmm_reg __fpu_ymmh1;
 struct __darwin_xmm_reg __fpu_ymmh2;
 struct __darwin_xmm_reg __fpu_ymmh3;
 struct __darwin_xmm_reg __fpu_ymmh4;
 struct __darwin_xmm_reg __fpu_ymmh5;
 struct __darwin_xmm_reg __fpu_ymmh6;
 struct __darwin_xmm_reg __fpu_ymmh7;
 struct __darwin_xmm_reg __fpu_ymmh8;
 struct __darwin_xmm_reg __fpu_ymmh9;
 struct __darwin_xmm_reg __fpu_ymmh10;
 struct __darwin_xmm_reg __fpu_ymmh11;
 struct __darwin_xmm_reg __fpu_ymmh12;
 struct __darwin_xmm_reg __fpu_ymmh13;
 struct __darwin_xmm_reg __fpu_ymmh14;
 struct __darwin_xmm_reg __fpu_ymmh15;
};
# 751 "/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_x86_exception_state64
{
    __uint16_t __trapno;
    __uint16_t __cpu;
    __uint32_t __err;
    __uint64_t __faultvaddr;
};
# 771 "/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_x86_debug_state64
{
 __uint64_t __dr0;
 __uint64_t __dr1;
 __uint64_t __dr2;
 __uint64_t __dr3;
 __uint64_t __dr4;
 __uint64_t __dr5;
 __uint64_t __dr6;
 __uint64_t __dr7;
};
# 34 "/usr/include/i386/_mcontext.h" 2 3 4




struct __darwin_mcontext32
{
 struct __darwin_i386_exception_state __es;
 struct __darwin_i386_thread_state __ss;
 struct __darwin_i386_float_state __fs;
};


struct __darwin_mcontext_avx32
{
 struct __darwin_i386_exception_state __es;
 struct __darwin_i386_thread_state __ss;
 struct __darwin_i386_avx_state __fs;
};
# 76 "/usr/include/i386/_mcontext.h" 3 4
struct __darwin_mcontext64
{
 struct __darwin_x86_exception_state64 __es;
 struct __darwin_x86_thread_state64 __ss;
 struct __darwin_x86_float_state64 __fs;
};


struct __darwin_mcontext_avx64
{
 struct __darwin_x86_exception_state64 __es;
 struct __darwin_x86_thread_state64 __ss;
 struct __darwin_x86_avx_state64 __fs;
};
# 115 "/usr/include/i386/_mcontext.h" 3 4
typedef struct __darwin_mcontext64 *mcontext_t;
# 30 "/usr/include/machine/_mcontext.h" 2 3 4
# 146 "/usr/include/sys/signal.h" 2 3 4
# 1 "/usr/include/sys/_types/_sigaltstack.h" 1 3 4
# 36 "/usr/include/sys/_types/_sigaltstack.h" 3 4
struct __darwin_sigaltstack
{
 void *ss_sp;
 __darwin_size_t ss_size;
 int ss_flags;
};
typedef struct __darwin_sigaltstack stack_t;
# 147 "/usr/include/sys/signal.h" 2 3 4
# 1 "/usr/include/sys/_types/_ucontext.h" 1 3 4
# 34 "/usr/include/sys/_types/_ucontext.h" 3 4
struct __darwin_ucontext
{
 int uc_onstack;
 __darwin_sigset_t uc_sigmask;
 struct __darwin_sigaltstack uc_stack;
 struct __darwin_ucontext *uc_link;
 __darwin_size_t uc_mcsize;
 struct __darwin_mcontext64 *uc_mcontext;



};


typedef struct __darwin_ucontext ucontext_t;
# 148 "/usr/include/sys/signal.h" 2 3 4


# 1 "/usr/include/sys/_types/_pthread_attr_t.h" 1 3 4
# 30 "/usr/include/sys/_types/_pthread_attr_t.h" 3 4
typedef __darwin_pthread_attr_t pthread_attr_t;
# 151 "/usr/include/sys/signal.h" 2 3 4
# 1 "/usr/include/sys/_types/_sigset_t.h" 1 3 4
# 30 "/usr/include/sys/_types/_sigset_t.h" 3 4
typedef __darwin_sigset_t sigset_t;
# 152 "/usr/include/sys/signal.h" 2 3 4
# 1 "/usr/include/sys/_types/_size_t.h" 1 3 4
# 30 "/usr/include/sys/_types/_size_t.h" 3 4
typedef __darwin_size_t size_t;
# 153 "/usr/include/sys/signal.h" 2 3 4
# 1 "/usr/include/sys/_types/_uid_t.h" 1 3 4
# 30 "/usr/include/sys/_types/_uid_t.h" 3 4
typedef __darwin_uid_t uid_t;
# 154 "/usr/include/sys/signal.h" 2 3 4

union sigval {

 int sival_int;
 void *sival_ptr;
};





struct sigevent {
 int sigev_notify;
 int sigev_signo;
 union sigval sigev_value;
 void (*sigev_notify_function)(union sigval);
 pthread_attr_t *sigev_notify_attributes;
};


typedef struct __siginfo {
 int si_signo;
 int si_errno;
 int si_code;
 pid_t si_pid;
 uid_t si_uid;
 int si_status;
 void *si_addr;
 union sigval si_value;
 long si_band;
 unsigned long __pad[7];
} siginfo_t;
# 266 "/usr/include/sys/signal.h" 3 4
union __sigaction_u {
 void (*__sa_handler)(int);
 void (*__sa_sigaction)(int, struct __siginfo *,
         void *);
};


struct __sigaction {
 union __sigaction_u __sigaction_u;
 void (*sa_tramp)(void *, int, int, siginfo_t *, void *);
 sigset_t sa_mask;
 int sa_flags;
};




struct sigaction {
 union __sigaction_u __sigaction_u;
 sigset_t sa_mask;
 int sa_flags;
};
# 328 "/usr/include/sys/signal.h" 3 4
typedef void (*sig_t)(int);
# 345 "/usr/include/sys/signal.h" 3 4
struct sigvec {
 void (*sv_handler)(int);
 int sv_mask;
 int sv_flags;
};
# 364 "/usr/include/sys/signal.h" 3 4
struct sigstack {
 char *ss_sp;
 int ss_onstack;
};
# 387 "/usr/include/sys/signal.h" 3 4
void (*signal(int, void (*)(int)))(int);
# 110 "/usr/include/sys/wait.h" 2 3 4
# 1 "/usr/include/sys/resource.h" 1 3 4
# 72 "/usr/include/sys/resource.h" 3 4
# 1 "/Library/Developer/CommandLineTools/usr/bin/../lib/clang/6.0/include/stdint.h" 1 3 4
# 64 "/Library/Developer/CommandLineTools/usr/bin/../lib/clang/6.0/include/stdint.h" 3 4
# 1 "/usr/include/stdint.h" 1 3 4
# 18 "/usr/include/stdint.h" 3 4
# 1 "/usr/include/sys/_types/_int8_t.h" 1 3 4
# 30 "/usr/include/sys/_types/_int8_t.h" 3 4
typedef signed char int8_t;
# 19 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/sys/_types/_int16_t.h" 1 3 4
# 30 "/usr/include/sys/_types/_int16_t.h" 3 4
typedef short int16_t;
# 20 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/sys/_types/_int32_t.h" 1 3 4
# 30 "/usr/include/sys/_types/_int32_t.h" 3 4
typedef int int32_t;
# 21 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/sys/_types/_int64_t.h" 1 3 4
# 30 "/usr/include/sys/_types/_int64_t.h" 3 4
typedef long long int64_t;
# 22 "/usr/include/stdint.h" 2 3 4

# 1 "/usr/include/_types/_uint8_t.h" 1 3 4
# 31 "/usr/include/_types/_uint8_t.h" 3 4
typedef unsigned char uint8_t;
# 24 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/_types/_uint16_t.h" 1 3 4
# 31 "/usr/include/_types/_uint16_t.h" 3 4
typedef unsigned short uint16_t;
# 25 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/_types/_uint32_t.h" 1 3 4
# 31 "/usr/include/_types/_uint32_t.h" 3 4
typedef unsigned int uint32_t;
# 26 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/_types/_uint64_t.h" 1 3 4
# 31 "/usr/include/_types/_uint64_t.h" 3 4
typedef unsigned long long uint64_t;
# 27 "/usr/include/stdint.h" 2 3 4


typedef int8_t int_least8_t;
typedef int16_t int_least16_t;
typedef int32_t int_least32_t;
typedef int64_t int_least64_t;
typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;
typedef uint32_t uint_least32_t;
typedef uint64_t uint_least64_t;



typedef int8_t int_fast8_t;
typedef int16_t int_fast16_t;
typedef int32_t int_fast32_t;
typedef int64_t int_fast64_t;
typedef uint8_t uint_fast8_t;
typedef uint16_t uint_fast16_t;
typedef uint32_t uint_fast32_t;
typedef uint64_t uint_fast64_t;






# 1 "/usr/include/sys/_types/_intptr_t.h" 1 3 4
# 30 "/usr/include/sys/_types/_intptr_t.h" 3 4
typedef __darwin_intptr_t intptr_t;
# 54 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/sys/_types/_uintptr_t.h" 1 3 4
# 30 "/usr/include/sys/_types/_uintptr_t.h" 3 4
typedef unsigned long uintptr_t;
# 55 "/usr/include/stdint.h" 2 3 4



# 1 "/usr/include/_types/_intmax_t.h" 1 3 4
# 32 "/usr/include/_types/_intmax_t.h" 3 4
typedef long int intmax_t;
# 59 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/_types/_uintmax_t.h" 1 3 4
# 32 "/usr/include/_types/_uintmax_t.h" 3 4
typedef long unsigned int uintmax_t;
# 60 "/usr/include/stdint.h" 2 3 4
# 65 "/Library/Developer/CommandLineTools/usr/bin/../lib/clang/6.0/include/stdint.h" 2 3 4
# 73 "/usr/include/sys/resource.h" 2 3 4







# 1 "/usr/include/sys/_types/_timeval.h" 1 3 4
# 30 "/usr/include/sys/_types/_timeval.h" 3 4
struct timeval
{
 __darwin_time_t tv_sec;
 __darwin_suseconds_t tv_usec;
};
# 81 "/usr/include/sys/resource.h" 2 3 4








typedef __uint64_t rlim_t;
# 151 "/usr/include/sys/resource.h" 3 4
struct rusage {
 struct timeval ru_utime;
 struct timeval ru_stime;
# 162 "/usr/include/sys/resource.h" 3 4
 long ru_maxrss;

 long ru_ixrss;
 long ru_idrss;
 long ru_isrss;
 long ru_minflt;
 long ru_majflt;
 long ru_nswap;
 long ru_inblock;
 long ru_oublock;
 long ru_msgsnd;
 long ru_msgrcv;
 long ru_nsignals;
 long ru_nvcsw;
 long ru_nivcsw;


};
# 190 "/usr/include/sys/resource.h" 3 4
typedef void *rusage_info_t;

struct rusage_info_v0 {
 uint8_t ri_uuid[16];
 uint64_t ri_user_time;
 uint64_t ri_system_time;
 uint64_t ri_pkg_idle_wkups;
 uint64_t ri_interrupt_wkups;
 uint64_t ri_pageins;
 uint64_t ri_wired_size;
 uint64_t ri_resident_size;
 uint64_t ri_phys_footprint;
 uint64_t ri_proc_start_abstime;
 uint64_t ri_proc_exit_abstime;
};

struct rusage_info_v1 {
 uint8_t ri_uuid[16];
 uint64_t ri_user_time;
 uint64_t ri_system_time;
 uint64_t ri_pkg_idle_wkups;
 uint64_t ri_interrupt_wkups;
 uint64_t ri_pageins;
 uint64_t ri_wired_size;
 uint64_t ri_resident_size;
 uint64_t ri_phys_footprint;
 uint64_t ri_proc_start_abstime;
 uint64_t ri_proc_exit_abstime;
 uint64_t ri_child_user_time;
 uint64_t ri_child_system_time;
 uint64_t ri_child_pkg_idle_wkups;
 uint64_t ri_child_interrupt_wkups;
 uint64_t ri_child_pageins;
 uint64_t ri_child_elapsed_abstime;
};

struct rusage_info_v2 {
 uint8_t ri_uuid[16];
 uint64_t ri_user_time;
 uint64_t ri_system_time;
 uint64_t ri_pkg_idle_wkups;
 uint64_t ri_interrupt_wkups;
 uint64_t ri_pageins;
 uint64_t ri_wired_size;
 uint64_t ri_resident_size;
 uint64_t ri_phys_footprint;
 uint64_t ri_proc_start_abstime;
 uint64_t ri_proc_exit_abstime;
 uint64_t ri_child_user_time;
 uint64_t ri_child_system_time;
 uint64_t ri_child_pkg_idle_wkups;
 uint64_t ri_child_interrupt_wkups;
 uint64_t ri_child_pageins;
 uint64_t ri_child_elapsed_abstime;
 uint64_t ri_diskio_bytesread;
 uint64_t ri_diskio_byteswritten;
};
# 290 "/usr/include/sys/resource.h" 3 4
struct rlimit {
 rlim_t rlim_cur;
 rlim_t rlim_max;
};
# 317 "/usr/include/sys/resource.h" 3 4
struct proc_rlimit_control_wakeupmon {
 uint32_t wm_flags;
 int32_t wm_rate;
};
# 347 "/usr/include/sys/resource.h" 3 4
int getpriority(int, id_t);

int getiopolicy_np(int, int) __attribute__((availability(macosx,introduced=10.5)));

int getrlimit(int, struct rlimit *) __asm("_" "getrlimit") ;
int getrusage(int, struct rusage *);
int setpriority(int, id_t, int);

int setiopolicy_np(int, int, int) __attribute__((availability(macosx,introduced=10.5)));

int setrlimit(int, const struct rlimit *) __asm("_" "setrlimit") ;
# 111 "/usr/include/sys/wait.h" 2 3 4
# 186 "/usr/include/sys/wait.h" 3 4
# 1 "/usr/include/machine/endian.h" 1 3 4
# 35 "/usr/include/machine/endian.h" 3 4
# 1 "/usr/include/i386/endian.h" 1 3 4
# 99 "/usr/include/i386/endian.h" 3 4
# 1 "/usr/include/sys/_endian.h" 1 3 4
# 124 "/usr/include/sys/_endian.h" 3 4
# 1 "/usr/include/libkern/_OSByteOrder.h" 1 3 4
# 66 "/usr/include/libkern/_OSByteOrder.h" 3 4
# 1 "/usr/include/libkern/i386/_OSByteOrder.h" 1 3 4
# 44 "/usr/include/libkern/i386/_OSByteOrder.h" 3 4
static inline
__uint16_t
_OSSwapInt16(
    __uint16_t _data
)
{
    return ((__uint16_t)((_data << 8) | (_data >> 8)));
}

static inline
__uint32_t
_OSSwapInt32(
    __uint32_t _data
)
{

    return __builtin_bswap32(_data);




}


static inline
__uint64_t
_OSSwapInt64(
    __uint64_t _data
)
{
    return __builtin_bswap64(_data);
}
# 67 "/usr/include/libkern/_OSByteOrder.h" 2 3 4
# 125 "/usr/include/sys/_endian.h" 2 3 4
# 100 "/usr/include/i386/endian.h" 2 3 4
# 36 "/usr/include/machine/endian.h" 2 3 4
# 187 "/usr/include/sys/wait.h" 2 3 4







union wait {
 int w_status;



 struct {

  unsigned int w_Termsig:7,
    w_Coredump:1,
    w_Retcode:8,
    w_Filler:16;







 } w_T;





 struct {

  unsigned int w_Stopval:8,
    w_Stopsig:8,
    w_Filler:16;






 } w_S;
};
# 248 "/usr/include/sys/wait.h" 3 4
pid_t wait(int *) __asm("_" "wait") ;
pid_t waitpid(pid_t, int *, int) __asm("_" "waitpid") ;

int waitid(idtype_t, id_t, siginfo_t *, int) __asm("_" "waitid") ;


pid_t wait3(int *, int, struct rusage *);
pid_t wait4(pid_t, int *, int, struct rusage *);
# 66 "/usr/include/stdlib.h" 2 3 4

# 1 "/usr/include/alloca.h" 1 3 4
# 32 "/usr/include/alloca.h" 3 4
void *alloca(size_t);
# 68 "/usr/include/stdlib.h" 2 3 4








# 1 "/usr/include/sys/_types/_ct_rune_t.h" 1 3 4
# 31 "/usr/include/sys/_types/_ct_rune_t.h" 3 4
typedef __darwin_ct_rune_t ct_rune_t;
# 77 "/usr/include/stdlib.h" 2 3 4
# 1 "/usr/include/sys/_types/_rune_t.h" 1 3 4
# 30 "/usr/include/sys/_types/_rune_t.h" 3 4
typedef __darwin_rune_t rune_t;
# 78 "/usr/include/stdlib.h" 2 3 4


# 1 "/usr/include/sys/_types/_wchar_t.h" 1 3 4
# 33 "/usr/include/sys/_types/_wchar_t.h" 3 4
typedef __darwin_wchar_t wchar_t;
# 81 "/usr/include/stdlib.h" 2 3 4

typedef struct {
 int quot;
 int rem;
} div_t;

typedef struct {
 long quot;
 long rem;
} ldiv_t;


typedef struct {
 long long quot;
 long long rem;
} lldiv_t;



# 1 "/usr/include/sys/_types/_null.h" 1 3 4
# 100 "/usr/include/stdlib.h" 2 3 4
# 117 "/usr/include/stdlib.h" 3 4
extern int __mb_cur_max;
# 128 "/usr/include/stdlib.h" 3 4
void abort(void) __attribute__((noreturn));
int abs(int) __attribute__((const));
int atexit(void (*)(void));
double atof(const char *);
int atoi(const char *);
long atol(const char *);

long long
  atoll(const char *);

void *bsearch(const void *, const void *, size_t,
     size_t, int (*)(const void *, const void *));
void *calloc(size_t, size_t);
div_t div(int, int) __attribute__((const));
void exit(int) __attribute__((noreturn));
void free(void *);
char *getenv(const char *);
long labs(long) __attribute__((const));
ldiv_t ldiv(long, long) __attribute__((const));

long long
  llabs(long long);
lldiv_t lldiv(long long, long long);

void *malloc(size_t);
int mblen(const char *, size_t);
size_t mbstowcs(wchar_t * restrict , const char * restrict, size_t);
int mbtowc(wchar_t * restrict, const char * restrict, size_t);
int posix_memalign(void **, size_t, size_t) __attribute__((availability(macosx,introduced=10.6)));
void qsort(void *, size_t, size_t,
     int (*)(const void *, const void *));
int rand(void);
void *realloc(void *, size_t);
void srand(unsigned);
double strtod(const char *, char **) __asm("_" "strtod") ;
float strtof(const char *, char **) __asm("_" "strtof") ;
long strtol(const char *, char **, int);
long double
  strtold(const char *, char **);

long long
  strtoll(const char *, char **, int);

unsigned long
  strtoul(const char *, char **, int);

unsigned long long
  strtoull(const char *, char **, int);

int system(const char *) __asm("_" "system") ;
size_t wcstombs(char * restrict, const wchar_t * restrict, size_t);
int wctomb(char *, wchar_t);


void _Exit(int) __attribute__((noreturn));
long a64l(const char *);
double drand48(void);
char *ecvt(double, int, int *restrict, int *restrict);
double erand48(unsigned short[3]);
char *fcvt(double, int, int *restrict, int *restrict);
char *gcvt(double, int, char *);
int getsubopt(char **, char * const *, char **);
int grantpt(int);

char *initstate(unsigned, char *, size_t);



long jrand48(unsigned short[3]);
char *l64a(long);
void lcong48(unsigned short[7]);
long lrand48(void);
char *mktemp(char *);
int mkstemp(char *);
long mrand48(void);
long nrand48(unsigned short[3]);
int posix_openpt(int);
char *ptsname(int);
int putenv(char *) __asm("_" "putenv") ;
long random(void);
int rand_r(unsigned *);

char *realpath(const char * restrict, char * restrict) __asm("_" "realpath" "$DARWIN_EXTSN");



unsigned short
 *seed48(unsigned short[3]);
int setenv(const char *, const char *, int) __asm("_" "setenv") ;

void setkey(const char *) __asm("_" "setkey") ;



char *setstate(const char *);
void srand48(long);

void srandom(unsigned);



int unlockpt(int);

int unsetenv(const char *) __asm("_" "unsetenv") ;







# 1 "/usr/include/machine/types.h" 1 3 4
# 35 "/usr/include/machine/types.h" 3 4
# 1 "/usr/include/i386/types.h" 1 3 4
# 81 "/usr/include/i386/types.h" 3 4
typedef unsigned char u_int8_t;
typedef unsigned short u_int16_t;
typedef unsigned int u_int32_t;
typedef unsigned long long u_int64_t;


typedef int64_t register_t;
# 97 "/usr/include/i386/types.h" 3 4
typedef u_int64_t user_addr_t;
typedef u_int64_t user_size_t;
typedef int64_t user_ssize_t;
typedef int64_t user_long_t;
typedef u_int64_t user_ulong_t;
typedef int64_t user_time_t;
typedef int64_t user_off_t;







typedef u_int64_t syscall_arg_t;


# 1 "/usr/include/sys/_types/___offsetof.h" 1 3 4
# 114 "/usr/include/i386/types.h" 2 3 4
# 36 "/usr/include/machine/types.h" 2 3 4
# 239 "/usr/include/stdlib.h" 2 3 4

# 1 "/usr/include/sys/_types/_dev_t.h" 1 3 4
# 30 "/usr/include/sys/_types/_dev_t.h" 3 4
typedef __darwin_dev_t dev_t;
# 241 "/usr/include/stdlib.h" 2 3 4
# 1 "/usr/include/sys/_types/_mode_t.h" 1 3 4
# 30 "/usr/include/sys/_types/_mode_t.h" 3 4
typedef __darwin_mode_t mode_t;
# 242 "/usr/include/stdlib.h" 2 3 4

u_int32_t arc4random(void);
void arc4random_addrandom(unsigned char * , int );
void arc4random_buf(void * , size_t ) __attribute__((availability(macosx,introduced=10.7)));
void arc4random_stir(void);
u_int32_t
  arc4random_uniform(u_int32_t ) __attribute__((availability(macosx,introduced=10.7)));

int atexit_b(void (^)(void)) __attribute__((availability(macosx,introduced=10.6)));
void *bsearch_b(const void *, const void *, size_t,
     size_t, int (^)(const void *, const void *)) __attribute__((availability(macosx,introduced=10.6)));



char *cgetcap(char *, const char *, int);
int cgetclose(void);
int cgetent(char **, char **, const char *);
int cgetfirst(char **, char **);
int cgetmatch(const char *, const char *);
int cgetnext(char **, char **);
int cgetnum(char *, const char *, long *);
int cgetset(const char *);
int cgetstr(char *, const char *, char **);
int cgetustr(char *, const char *, char **);

int daemon(int, int) __asm("_" "daemon" "$1050") __attribute__((availability(macosx,introduced=10.0,deprecated=10.5)));
char *devname(dev_t, mode_t);
char *devname_r(dev_t, mode_t, char *buf, int len);
char *getbsize(int *, long *);
int getloadavg(double [], int);
const char
 *getprogname(void);

int heapsort(void *, size_t, size_t,
     int (*)(const void *, const void *));

int heapsort_b(void *, size_t, size_t,
     int (^)(const void *, const void *)) __attribute__((availability(macosx,introduced=10.6)));

int mergesort(void *, size_t, size_t,
     int (*)(const void *, const void *));

int mergesort_b(void *, size_t, size_t,
     int (^)(const void *, const void *)) __attribute__((availability(macosx,introduced=10.6)));

void psort(void *, size_t, size_t,
     int (*)(const void *, const void *)) __attribute__((availability(macosx,introduced=10.6)));

void psort_b(void *, size_t, size_t,
     int (^)(const void *, const void *)) __attribute__((availability(macosx,introduced=10.6)));

void psort_r(void *, size_t, size_t, void *,
     int (*)(void *, const void *, const void *)) __attribute__((availability(macosx,introduced=10.6)));

void qsort_b(void *, size_t, size_t,
     int (^)(const void *, const void *)) __attribute__((availability(macosx,introduced=10.6)));

void qsort_r(void *, size_t, size_t, void *,
     int (*)(void *, const void *, const void *));
int radixsort(const unsigned char **, int, const unsigned char *,
     unsigned);
void setprogname(const char *);
int sradixsort(const unsigned char **, int, const unsigned char *,
     unsigned);
void sranddev(void);
void srandomdev(void);
void *reallocf(void *, size_t);

long long
  strtoq(const char *, char **, int);
unsigned long long
  strtouq(const char *, char **, int);

extern char *suboptarg;
void *valloc(size_t);
# 62 "/Users/erszcz/.kerl/builds/17.1/otp_src_17.1/erts/emulator/beam/erl_nif.h" 2
# 87 "/Users/erszcz/.kerl/builds/17.1/otp_src_17.1/erts/emulator/beam/erl_nif.h"
# 1 "/Users/erszcz/.kerl/builds/17.1/otp_src_17.1/erts/include/x86_64-apple-darwin13.2.0/erl_int_sizes_config.h" 1
# 88 "/Users/erszcz/.kerl/builds/17.1/otp_src_17.1/erts/emulator/beam/erl_nif.h" 2
# 97 "/Users/erszcz/.kerl/builds/17.1/otp_src_17.1/erts/emulator/beam/erl_nif.h"
typedef unsigned long ErlNifUInt64;
typedef long ErlNifSInt64;
# 112 "/Users/erszcz/.kerl/builds/17.1/otp_src_17.1/erts/emulator/beam/erl_nif.h"
typedef unsigned long ERL_NIF_TERM;





typedef ERL_NIF_TERM ERL_NIF_UINT;

struct enif_environment_t;
typedef struct enif_environment_t ErlNifEnv;

typedef struct
{
    const char* name;
    unsigned arity;
    ERL_NIF_TERM (*fptr)(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[]);
}ErlNifFunc;

typedef struct enif_entry_t
{
    int major;
    int minor;
    const char* name;
    int num_of_funcs;
    ErlNifFunc* funcs;
    int (*load) (ErlNifEnv*, void** priv_data, ERL_NIF_TERM load_info);
    int (*reload) (ErlNifEnv*, void** priv_data, ERL_NIF_TERM load_info);
    int (*upgrade)(ErlNifEnv*, void** priv_data, void** old_priv_data, ERL_NIF_TERM load_info);
    void (*unload) (ErlNifEnv*, void* priv_data);
    const char* vm_variant;
}ErlNifEntry;



typedef struct
{
    size_t size;
    unsigned char* data;


    ERL_NIF_TERM bin_term;
    void* ref_bin;
}ErlNifBinary;

typedef struct enif_resource_type_t ErlNifResourceType;
typedef void ErlNifResourceDtor(ErlNifEnv*, void*);
typedef enum
{
    ERL_NIF_RT_CREATE = 1,
    ERL_NIF_RT_TAKEOVER = 2
}ErlNifResourceFlags;

typedef enum
{
    ERL_NIF_LATIN1 = 1
}ErlNifCharEncoding;

typedef struct
{
    ERL_NIF_TERM pid;
}ErlNifPid;

typedef ErlDrvSysInfo ErlNifSysInfo;

typedef struct ErlDrvTid_ *ErlNifTid;
typedef struct ErlDrvMutex_ ErlNifMutex;
typedef struct ErlDrvCond_ ErlNifCond;
typedef struct ErlDrvRWLock_ ErlNifRWLock;
typedef int ErlNifTSDKey;

typedef ErlDrvThreadOpts ErlNifThreadOpts;
# 192 "/Users/erszcz/.kerl/builds/17.1/otp_src_17.1/erts/emulator/beam/erl_nif.h"
typedef struct
{
    ERL_NIF_TERM map;
    ERL_NIF_UINT t_limit;
    ERL_NIF_UINT idx;
    ERL_NIF_TERM *ks;
    ERL_NIF_TERM *vs;
    void* __spare__[2];
} ErlNifMapIterator;

typedef enum {
    ERL_NIF_MAP_ITERATOR_HEAD = 1,
    ERL_NIF_MAP_ITERATOR_TAIL = 2
} ErlNifMapIteratorEntry;
# 224 "/Users/erszcz/.kerl/builds/17.1/otp_src_17.1/erts/emulator/beam/erl_nif.h"
# 1 "/Users/erszcz/.kerl/builds/17.1/otp_src_17.1/erts/emulator/beam/erl_nif_api_funcs.h" 1
# 32 "/Users/erszcz/.kerl/builds/17.1/otp_src_17.1/erts/emulator/beam/erl_nif_api_funcs.h"
extern void* enif_priv_data (ErlNifEnv*);
extern void* enif_alloc (size_t size);
extern void enif_free (void* ptr);
extern int enif_is_atom (ErlNifEnv*, ERL_NIF_TERM term);
extern int enif_is_binary (ErlNifEnv*, ERL_NIF_TERM term);
extern int enif_is_ref (ErlNifEnv*, ERL_NIF_TERM term);
extern int enif_inspect_binary (ErlNifEnv*, ERL_NIF_TERM bin_term, ErlNifBinary* bin);
extern int enif_alloc_binary (size_t size, ErlNifBinary* bin);
extern int enif_realloc_binary (ErlNifBinary* bin, size_t size);
extern void enif_release_binary (ErlNifBinary* bin);
extern int enif_get_int (ErlNifEnv*, ERL_NIF_TERM term, int* ip);
extern int enif_get_ulong (ErlNifEnv*, ERL_NIF_TERM term, unsigned long* ip);
extern int enif_get_double (ErlNifEnv*, ERL_NIF_TERM term, double* dp);
extern int enif_get_list_cell (ErlNifEnv* env, ERL_NIF_TERM term, ERL_NIF_TERM* head, ERL_NIF_TERM* tail);
extern int enif_get_tuple (ErlNifEnv* env, ERL_NIF_TERM tpl, int* arity, const ERL_NIF_TERM** array);
extern int enif_is_identical (ERL_NIF_TERM lhs, ERL_NIF_TERM rhs);
extern int enif_compare (ERL_NIF_TERM lhs, ERL_NIF_TERM rhs);
extern ERL_NIF_TERM enif_make_binary (ErlNifEnv* env, ErlNifBinary* bin);
extern ERL_NIF_TERM enif_make_badarg (ErlNifEnv* env);
extern ERL_NIF_TERM enif_make_int (ErlNifEnv* env, int i);
extern ERL_NIF_TERM enif_make_ulong (ErlNifEnv* env, unsigned long i);
extern ERL_NIF_TERM enif_make_double (ErlNifEnv* env, double d);
extern ERL_NIF_TERM enif_make_atom (ErlNifEnv* env, const char* name);
extern int enif_make_existing_atom (ErlNifEnv* env, const char* name, ERL_NIF_TERM* atom, ErlNifCharEncoding);
extern ERL_NIF_TERM enif_make_tuple (ErlNifEnv* env, unsigned cnt, ...);
extern ERL_NIF_TERM enif_make_list (ErlNifEnv* env, unsigned cnt, ...);
extern ERL_NIF_TERM enif_make_list_cell (ErlNifEnv* env, ERL_NIF_TERM car, ERL_NIF_TERM cdr);
extern ERL_NIF_TERM enif_make_string (ErlNifEnv* env, const char* string, ErlNifCharEncoding);
extern ERL_NIF_TERM enif_make_ref (ErlNifEnv* env);

extern ErlNifMutex* enif_mutex_create (char *name);
extern void enif_mutex_destroy (ErlNifMutex *mtx);
extern int enif_mutex_trylock (ErlNifMutex *mtx);
extern void enif_mutex_lock (ErlNifMutex *mtx);
extern void enif_mutex_unlock (ErlNifMutex *mtx);
extern ErlNifCond* enif_cond_create (char *name);
extern void enif_cond_destroy (ErlNifCond *cnd);
extern void enif_cond_signal (ErlNifCond *cnd);
extern void enif_cond_broadcast (ErlNifCond *cnd);
extern void enif_cond_wait (ErlNifCond *cnd, ErlNifMutex *mtx);
extern ErlNifRWLock* enif_rwlock_create (char *name);
extern void enif_rwlock_destroy (ErlNifRWLock *rwlck);
extern int enif_rwlock_tryrlock (ErlNifRWLock *rwlck);
extern void enif_rwlock_rlock (ErlNifRWLock *rwlck);
extern void enif_rwlock_runlock (ErlNifRWLock *rwlck);
extern int enif_rwlock_tryrwlock (ErlNifRWLock *rwlck);
extern void enif_rwlock_rwlock (ErlNifRWLock *rwlck);
extern void enif_rwlock_rwunlock (ErlNifRWLock *rwlck);
extern int enif_tsd_key_create (char *name, ErlNifTSDKey *key);
extern void enif_tsd_key_destroy (ErlNifTSDKey key);
extern void enif_tsd_set (ErlNifTSDKey key, void *data);
extern void* enif_tsd_get (ErlNifTSDKey key);
extern ErlNifThreadOpts* enif_thread_opts_create (char *name);
extern void enif_thread_opts_destroy (ErlNifThreadOpts *opts);
extern int enif_thread_create (char *name,ErlNifTid *tid,void * (*func)(void *),void *args,ErlNifThreadOpts *opts);
extern ErlNifTid enif_thread_self (void);
extern int enif_equal_tids (ErlNifTid tid1, ErlNifTid tid2);
extern void enif_thread_exit (void *resp);
extern int enif_thread_join (ErlNifTid, void **respp);

extern void* enif_realloc (void* ptr, size_t size);
extern void enif_system_info (ErlNifSysInfo *sip, size_t si_size);
extern int enif_fprintf (void *filep, const char *format, ...);
extern int enif_inspect_iolist_as_binary (ErlNifEnv*, ERL_NIF_TERM term, ErlNifBinary* bin);
extern ERL_NIF_TERM enif_make_sub_binary (ErlNifEnv*, ERL_NIF_TERM bin_term, size_t pos, size_t size);
extern int enif_get_string (ErlNifEnv*, ERL_NIF_TERM list, char* buf, unsigned len, ErlNifCharEncoding);
extern int enif_get_atom (ErlNifEnv*, ERL_NIF_TERM atom, char* buf, unsigned len, ErlNifCharEncoding);
extern int enif_is_fun (ErlNifEnv*, ERL_NIF_TERM term);
extern int enif_is_pid (ErlNifEnv*, ERL_NIF_TERM term);
extern int enif_is_port (ErlNifEnv*, ERL_NIF_TERM term);
extern int enif_get_uint (ErlNifEnv*, ERL_NIF_TERM term, unsigned* ip);
extern int enif_get_long (ErlNifEnv*, ERL_NIF_TERM term, long* ip);
extern ERL_NIF_TERM enif_make_uint (ErlNifEnv*, unsigned i);
extern ERL_NIF_TERM enif_make_long (ErlNifEnv*, long i);
extern ERL_NIF_TERM enif_make_tuple_from_array (ErlNifEnv*, const ERL_NIF_TERM arr[], unsigned cnt);
extern ERL_NIF_TERM enif_make_list_from_array (ErlNifEnv*, const ERL_NIF_TERM arr[], unsigned cnt);
extern int enif_is_empty_list (ErlNifEnv*, ERL_NIF_TERM term);
extern ErlNifResourceType* enif_open_resource_type (ErlNifEnv*, const char* module_str, const char* name_str, void (*dtor)(ErlNifEnv*,void *), ErlNifResourceFlags flags, ErlNifResourceFlags* tried);
extern void* enif_alloc_resource (ErlNifResourceType* type, size_t size);
extern void enif_release_resource (void* obj);
extern ERL_NIF_TERM enif_make_resource (ErlNifEnv*, void* obj);
extern int enif_get_resource (ErlNifEnv*, ERL_NIF_TERM term, ErlNifResourceType* type, void** objp);
extern size_t enif_sizeof_resource (void* obj);
extern unsigned char* enif_make_new_binary (ErlNifEnv*,size_t size,ERL_NIF_TERM* termp);
extern int enif_is_list (ErlNifEnv*, ERL_NIF_TERM term);
extern int enif_is_tuple (ErlNifEnv*, ERL_NIF_TERM term);
extern int enif_get_atom_length (ErlNifEnv*, ERL_NIF_TERM atom, unsigned* len, ErlNifCharEncoding);
extern int enif_get_list_length (ErlNifEnv* env, ERL_NIF_TERM term, unsigned* len);
extern ERL_NIF_TERM enif_make_atom_len (ErlNifEnv* env, const char* name, size_t len);
extern int enif_make_existing_atom_len (ErlNifEnv* env, const char* name, size_t len, ERL_NIF_TERM* atom, ErlNifCharEncoding);
extern ERL_NIF_TERM enif_make_string_len (ErlNifEnv* env, const char* string, size_t len, ErlNifCharEncoding);
extern ErlNifEnv* enif_alloc_env (void);
extern void enif_free_env (ErlNifEnv* env);
extern void enif_clear_env (ErlNifEnv* env);
extern int enif_send (ErlNifEnv* env, const ErlNifPid* to_pid, ErlNifEnv* msg_env, ERL_NIF_TERM msg);
extern ERL_NIF_TERM enif_make_copy (ErlNifEnv* dst_env, ERL_NIF_TERM src_term);
extern ErlNifPid* enif_self (ErlNifEnv* caller_env, ErlNifPid* pid);
extern int enif_get_local_pid (ErlNifEnv* env, ERL_NIF_TERM, ErlNifPid* pid);
extern void enif_keep_resource (void* obj);
extern ERL_NIF_TERM enif_make_resource_binary (ErlNifEnv*,void* obj,const void* data, size_t size);






extern int enif_is_exception (ErlNifEnv*, ERL_NIF_TERM term);
extern int enif_make_reverse_list (ErlNifEnv*, ERL_NIF_TERM term, ERL_NIF_TERM *list);
extern int enif_is_number (ErlNifEnv*, ERL_NIF_TERM term);
extern void* enif_dlopen (const char* lib, void (*err_handler)(void*,const char*), void* err_arg);
extern void* enif_dlsym (void* handle, const char* symbol, void (*err_handler)(void*,const char*), void* err_arg);
extern int enif_consume_timeslice (ErlNifEnv*, int percent);
# 152 "/Users/erszcz/.kerl/builds/17.1/otp_src_17.1/erts/emulator/beam/erl_nif_api_funcs.h"
extern int enif_is_map (ErlNifEnv* env, ERL_NIF_TERM term);
extern int enif_get_map_size (ErlNifEnv* env, ERL_NIF_TERM term, size_t *size);
extern ERL_NIF_TERM enif_make_new_map (ErlNifEnv* env);
extern int enif_make_map_put (ErlNifEnv* env, ERL_NIF_TERM map_in, ERL_NIF_TERM key, ERL_NIF_TERM value, ERL_NIF_TERM* map_out);
extern int enif_get_map_value (ErlNifEnv* env, ERL_NIF_TERM map, ERL_NIF_TERM key, ERL_NIF_TERM* value);
extern int enif_make_map_update (ErlNifEnv* env, ERL_NIF_TERM map_in, ERL_NIF_TERM key, ERL_NIF_TERM value, ERL_NIF_TERM* map_out);
extern int enif_make_map_remove (ErlNifEnv* env, ERL_NIF_TERM map_in, ERL_NIF_TERM key, ERL_NIF_TERM* map_out);
extern int enif_map_iterator_create (ErlNifEnv *env, ERL_NIF_TERM map, ErlNifMapIterator *iter, ErlNifMapIteratorEntry entry);
extern void enif_map_iterator_destroy (ErlNifEnv *env, ErlNifMapIterator *iter);
extern int enif_map_iterator_is_head (ErlNifEnv *env, ErlNifMapIterator *iter);
extern int enif_map_iterator_is_tail (ErlNifEnv *env, ErlNifMapIterator *iter);
extern int enif_map_iterator_next (ErlNifEnv *env, ErlNifMapIterator *iter);
extern int enif_map_iterator_prev (ErlNifEnv *env, ErlNifMapIterator *iter);
extern int enif_map_iterator_get_pair (ErlNifEnv *env, ErlNifMapIterator *iter, ERL_NIF_TERM *key, ERL_NIF_TERM *value);
# 329 "/Users/erszcz/.kerl/builds/17.1/otp_src_17.1/erts/emulator/beam/erl_nif_api_funcs.h"
static __inline__ ERL_NIF_TERM enif_make_tuple1(ErlNifEnv* env,
          ERL_NIF_TERM e1)
{
    return enif_make_tuple(env, 1, e1);
}

static __inline__ ERL_NIF_TERM enif_make_tuple2(ErlNifEnv* env,
          ERL_NIF_TERM e1,
          ERL_NIF_TERM e2)
{
    return enif_make_tuple(env, 2, e1, e2);
}

static __inline__ ERL_NIF_TERM enif_make_tuple3(ErlNifEnv* env,
          ERL_NIF_TERM e1,
          ERL_NIF_TERM e2,
          ERL_NIF_TERM e3)
{
    return enif_make_tuple(env, 3, e1, e2, e3);
}

static __inline__ ERL_NIF_TERM enif_make_tuple4(ErlNifEnv* env,
          ERL_NIF_TERM e1,
          ERL_NIF_TERM e2,
          ERL_NIF_TERM e3,
          ERL_NIF_TERM e4)
{
    return enif_make_tuple(env, 4, e1, e2, e3, e4);
}

static __inline__ ERL_NIF_TERM enif_make_tuple5(ErlNifEnv* env,
          ERL_NIF_TERM e1,
          ERL_NIF_TERM e2,
          ERL_NIF_TERM e3,
          ERL_NIF_TERM e4,
          ERL_NIF_TERM e5)
{
    return enif_make_tuple(env, 5, e1, e2, e3, e4, e5);
}

static __inline__ ERL_NIF_TERM enif_make_tuple6(ErlNifEnv* env,
          ERL_NIF_TERM e1,
          ERL_NIF_TERM e2,
          ERL_NIF_TERM e3,
          ERL_NIF_TERM e4,
          ERL_NIF_TERM e5,
          ERL_NIF_TERM e6)
{
    return enif_make_tuple(env, 6, e1, e2, e3, e4, e5, e6);
}

static __inline__ ERL_NIF_TERM enif_make_tuple7(ErlNifEnv* env,
          ERL_NIF_TERM e1,
          ERL_NIF_TERM e2,
          ERL_NIF_TERM e3,
          ERL_NIF_TERM e4,
          ERL_NIF_TERM e5,
          ERL_NIF_TERM e6,
          ERL_NIF_TERM e7)
{
    return enif_make_tuple(env, 7, e1, e2, e3, e4, e5, e6, e7);
}

static __inline__ ERL_NIF_TERM enif_make_tuple8(ErlNifEnv* env,
          ERL_NIF_TERM e1,
          ERL_NIF_TERM e2,
          ERL_NIF_TERM e3,
          ERL_NIF_TERM e4,
          ERL_NIF_TERM e5,
          ERL_NIF_TERM e6,
          ERL_NIF_TERM e7,
          ERL_NIF_TERM e8)
{
    return enif_make_tuple(env, 8, e1, e2, e3, e4, e5, e6, e7, e8);
}

static __inline__ ERL_NIF_TERM enif_make_tuple9(ErlNifEnv* env,
          ERL_NIF_TERM e1,
          ERL_NIF_TERM e2,
          ERL_NIF_TERM e3,
          ERL_NIF_TERM e4,
          ERL_NIF_TERM e5,
          ERL_NIF_TERM e6,
          ERL_NIF_TERM e7,
          ERL_NIF_TERM e8,
          ERL_NIF_TERM e9)
{
    return enif_make_tuple(env, 9, e1, e2, e3, e4, e5, e6, e7, e8, e9);
}

static __inline__ ERL_NIF_TERM enif_make_list1(ErlNifEnv* env,
         ERL_NIF_TERM e1)
{
    return enif_make_list(env, 1, e1);
}

static __inline__ ERL_NIF_TERM enif_make_list2(ErlNifEnv* env,
         ERL_NIF_TERM e1,
         ERL_NIF_TERM e2)
{
    return enif_make_list(env, 2, e1, e2);
}

static __inline__ ERL_NIF_TERM enif_make_list3(ErlNifEnv* env,
         ERL_NIF_TERM e1,
         ERL_NIF_TERM e2,
         ERL_NIF_TERM e3)
{
    return enif_make_list(env, 3, e1, e2, e3);
}

static __inline__ ERL_NIF_TERM enif_make_list4(ErlNifEnv* env,
         ERL_NIF_TERM e1,
         ERL_NIF_TERM e2,
         ERL_NIF_TERM e3,
         ERL_NIF_TERM e4)
{
    return enif_make_list(env, 4, e1, e2, e3, e4);
}

static __inline__ ERL_NIF_TERM enif_make_list5(ErlNifEnv* env,
         ERL_NIF_TERM e1,
         ERL_NIF_TERM e2,
         ERL_NIF_TERM e3,
         ERL_NIF_TERM e4,
         ERL_NIF_TERM e5)
{
    return enif_make_list(env, 5, e1, e2, e3, e4, e5);
}

static __inline__ ERL_NIF_TERM enif_make_list6(ErlNifEnv* env,
         ERL_NIF_TERM e1,
         ERL_NIF_TERM e2,
         ERL_NIF_TERM e3,
         ERL_NIF_TERM e4,
         ERL_NIF_TERM e5,
         ERL_NIF_TERM e6)
{
    return enif_make_list(env, 6, e1, e2, e3, e4, e5, e6);
}

static __inline__ ERL_NIF_TERM enif_make_list7(ErlNifEnv* env,
         ERL_NIF_TERM e1,
         ERL_NIF_TERM e2,
         ERL_NIF_TERM e3,
         ERL_NIF_TERM e4,
         ERL_NIF_TERM e5,
         ERL_NIF_TERM e6,
         ERL_NIF_TERM e7)
{
    return enif_make_list(env, 7, e1, e2, e3, e4, e5, e6, e7);
}

static __inline__ ERL_NIF_TERM enif_make_list8(ErlNifEnv* env,
         ERL_NIF_TERM e1,
         ERL_NIF_TERM e2,
         ERL_NIF_TERM e3,
         ERL_NIF_TERM e4,
         ERL_NIF_TERM e5,
         ERL_NIF_TERM e6,
         ERL_NIF_TERM e7,
         ERL_NIF_TERM e8)
{
    return enif_make_list(env, 8, e1, e2, e3, e4, e5, e6, e7, e8);
}

static __inline__ ERL_NIF_TERM enif_make_list9(ErlNifEnv* env,
         ERL_NIF_TERM e1,
         ERL_NIF_TERM e2,
         ERL_NIF_TERM e3,
         ERL_NIF_TERM e4,
         ERL_NIF_TERM e5,
         ERL_NIF_TERM e6,
         ERL_NIF_TERM e7,
         ERL_NIF_TERM e8,
         ERL_NIF_TERM e9)
{
    return enif_make_list(env, 9, e1, e2, e3, e4, e5, e6, e7, e8, e9);
}
# 225 "/Users/erszcz/.kerl/builds/17.1/otp_src_17.1/erts/emulator/beam/erl_nif.h" 2
# 5 "c_src/er.h" 2

extern ERL_NIF_TERM
native_add(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[]);

extern ERL_NIF_TERM
native_write_file(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[]);
# 2 "c_src/er.c" 2

ErlNifFunc funcs[] =
{
    {"native_add", 2, native_add}
};

// A copy'n'paste from erl_nif.h for reference
//typedef struct enif_entry_t
//{
//    int major;
//    int minor;
//    const char* name;
//    int num_of_funcs;
//    ErlNifFunc* funcs;
//    int  (*load)   (ErlNifEnv*, void** priv_data, ERL_NIF_TERM load_info);
//    int  (*reload) (ErlNifEnv*, void** priv_data, ERL_NIF_TERM load_info);
//    int  (*upgrade)(ErlNifEnv*, void** priv_data, void** old_priv_data, ERL_NIF_TERM load_info);
//    void (*unload) (ErlNifEnv*, void* priv_data);
//    const char* vm_variant;
//} ErlNifEntry;

ErlNifEntry* nif_init(void) {
    static ErlNifEntry entry = {
        2,
        6,
        "er",
        sizeof(funcs) / sizeof(*funcs),
        funcs, ((void *)0),
        ((void *)0),
        ((void *)0),
        ((void *)0),
        "beam.vanilla"
    };
    return &entry;
}
