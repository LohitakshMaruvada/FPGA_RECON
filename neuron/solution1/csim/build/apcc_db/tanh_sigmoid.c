/* Provide Declarations */
#include <stdarg.h>
#include <setjmp.h>
#include <limits.h>
#ifdef NEED_CBEAPINT
#include <autopilot_cbe.h>
#else
#define aesl_fopen fopen
#define aesl_freopen freopen
#define aesl_tmpfile tmpfile
#endif
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#ifdef __STRICT_ANSI__
#define inline __inline__
#define typeof __typeof__ 
#endif
#define __isoc99_fscanf fscanf
#define __isoc99_sscanf sscanf
#undef ferror
#undef feof
/* get a declaration for alloca */
#if defined(__CYGWIN__) || defined(__MINGW32__)
#define  alloca(x) __builtin_alloca((x))
#define _alloca(x) __builtin_alloca((x))
#elif defined(__APPLE__)
extern void *__builtin_alloca(unsigned long);
#define alloca(x) __builtin_alloca(x)
#define longjmp _longjmp
#define setjmp _setjmp
#elif defined(__sun__)
#if defined(__sparcv9)
extern void *__builtin_alloca(unsigned long);
#else
extern void *__builtin_alloca(unsigned int);
#endif
#define alloca(x) __builtin_alloca(x)
#elif defined(__FreeBSD__) || defined(__NetBSD__) || defined(__OpenBSD__) || defined(__DragonFly__) || defined(__arm__)
#define alloca(x) __builtin_alloca(x)
#elif defined(_MSC_VER)
#define inline _inline
#define alloca(x) _alloca(x)
#else
#include <alloca.h>
#endif

#ifndef __GNUC__  /* Can only support "linkonce" vars with GCC */
#define __attribute__(X)
#endif

#if defined(__GNUC__) && defined(__APPLE_CC__)
#define __EXTERNAL_WEAK__ __attribute__((weak_import))
#elif defined(__GNUC__)
#define __EXTERNAL_WEAK__ __attribute__((weak))
#else
#define __EXTERNAL_WEAK__
#endif

#if defined(__GNUC__) && (defined(__APPLE_CC__) || defined(__CYGWIN__) || defined(__MINGW32__))
#define __ATTRIBUTE_WEAK__
#elif defined(__GNUC__)
#define __ATTRIBUTE_WEAK__ __attribute__((weak))
#else
#define __ATTRIBUTE_WEAK__
#endif

#if defined(__GNUC__)
#define __HIDDEN__ __attribute__((visibility("hidden")))
#endif

#ifdef __GNUC__
#define LLVM_NAN(NanStr)   __builtin_nan(NanStr)   /* Double */
#define LLVM_NANF(NanStr)  __builtin_nanf(NanStr)  /* Float */
#define LLVM_NANS(NanStr)  __builtin_nans(NanStr)  /* Double */
#define LLVM_NANSF(NanStr) __builtin_nansf(NanStr) /* Float */
#define LLVM_INF           __builtin_inf()         /* Double */
#define LLVM_INFF          __builtin_inff()        /* Float */
#define LLVM_PREFETCH(addr,rw,locality) __builtin_prefetch(addr,rw,locality)
#define __ATTRIBUTE_CTOR__ __attribute__((constructor))
#define __ATTRIBUTE_DTOR__ __attribute__((destructor))
#define LLVM_ASM           __asm__
#else
#define LLVM_NAN(NanStr)   ((double)0.0)           /* Double */
#define LLVM_NANF(NanStr)  0.0F                    /* Float */
#define LLVM_NANS(NanStr)  ((double)0.0)           /* Double */
#define LLVM_NANSF(NanStr) 0.0F                    /* Float */
#define LLVM_INF           ((double)0.0)           /* Double */
#define LLVM_INFF          0.0F                    /* Float */
#define LLVM_PREFETCH(addr,rw,locality)            /* PREFETCH */
#define __ATTRIBUTE_CTOR__
#define __ATTRIBUTE_DTOR__
#define LLVM_ASM(X)
#endif

#if __GNUC__ < 4 /* Old GCC's, or compilers not GCC */ 
#define __builtin_stack_save() 0   /* not implemented */
#define __builtin_stack_restore(X) /* noop */
#endif

#if __GNUC__ && __LP64__ /* 128-bit integer types */
typedef int __attribute__((mode(TI))) llvmInt128;
typedef unsigned __attribute__((mode(TI))) llvmUInt128;
#endif

#define CODE_FOR_MAIN() /* Any target-specific code for main()*/

#ifndef __cplusplus
typedef unsigned char bool;
#endif


/* Support for floating point constants */
typedef unsigned long long ConstantDoubleTy;
typedef unsigned int        ConstantFloatTy;
typedef struct { unsigned long long f1; unsigned short f2; unsigned short pad[3]; } ConstantFP80Ty;
typedef struct { unsigned long long f1; unsigned long long f2; } ConstantFP128Ty;


/* Global Declarations */
/* Helper union for bitcasts */
typedef union {
  unsigned int Int32;
  unsigned long long Int64;
  float Float;
  double Double;
} llvmBitCastUnion;

/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
float neuron(float llvm_cbe_angle, signed int llvm_cbe_sel);


/* Function Bodies */
static inline int llvm_fcmp_ord(double X, double Y) { return X == X && Y == Y; }
static inline int llvm_fcmp_uno(double X, double Y) { return X != X || Y != Y; }
static inline int llvm_fcmp_ueq(double X, double Y) { return X == Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_une(double X, double Y) { return X != Y; }
static inline int llvm_fcmp_ult(double X, double Y) { return X <  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ugt(double X, double Y) { return X >  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ule(double X, double Y) { return X <= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_uge(double X, double Y) { return X >= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_oeq(double X, double Y) { return X == Y ; }
static inline int llvm_fcmp_one(double X, double Y) { return X != Y && llvm_fcmp_ord(X, Y); }
static inline int llvm_fcmp_olt(double X, double Y) { return X <  Y ; }
static inline int llvm_fcmp_ogt(double X, double Y) { return X >  Y ; }
static inline int llvm_fcmp_ole(double X, double Y) { return X <= Y ; }
static inline int llvm_fcmp_oge(double X, double Y) { return X >= Y ; }

float neuron(float llvm_cbe_angle, signed int llvm_cbe_sel) {
  static  unsigned long long aesl_llvm_cbe_1_count = 0;
  static  unsigned long long aesl_llvm_cbe_2_count = 0;
  static  unsigned long long aesl_llvm_cbe_3_count = 0;
  static  unsigned long long aesl_llvm_cbe_4_count = 0;
  static  unsigned long long aesl_llvm_cbe_5_count = 0;
  static  unsigned long long aesl_llvm_cbe_6_count = 0;
  static  unsigned long long aesl_llvm_cbe_7_count = 0;
  static  unsigned long long aesl_llvm_cbe_8_count = 0;
  static  unsigned long long aesl_llvm_cbe_9_count = 0;
  static  unsigned long long aesl_llvm_cbe_10_count = 0;
  static  unsigned long long aesl_llvm_cbe_11_count = 0;
  static  unsigned long long aesl_llvm_cbe_12_count = 0;
  static  unsigned long long aesl_llvm_cbe_13_count = 0;
  static  unsigned long long aesl_llvm_cbe_14_count = 0;
  static  unsigned long long aesl_llvm_cbe_15_count = 0;
  static  unsigned long long aesl_llvm_cbe_16_count = 0;
  static  unsigned long long aesl_llvm_cbe_17_count = 0;
  static  unsigned long long aesl_llvm_cbe_18_count = 0;
  static  unsigned long long aesl_llvm_cbe_19_count = 0;
  static  unsigned long long aesl_llvm_cbe_20_count = 0;
  static  unsigned long long aesl_llvm_cbe_21_count = 0;
  static  unsigned long long aesl_llvm_cbe_22_count = 0;
  static  unsigned long long aesl_llvm_cbe_23_count = 0;
  static  unsigned long long aesl_llvm_cbe_24_count = 0;
  static  unsigned long long aesl_llvm_cbe_25_count = 0;
  static  unsigned long long aesl_llvm_cbe_26_count = 0;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge2_count = 0;
  float llvm_cbe_storemerge2;
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
  float llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  float llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  float llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  float llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  float llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  float llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  float llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  float llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge2_2e_1_count = 0;
  float llvm_cbe_storemerge2_2e_1;
  static  unsigned long long aesl_llvm_cbe_57_count = 0;
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;
  float llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_61_count = 0;
  float llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_62_count = 0;
  float llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_63_count = 0;
  float llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
  float llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
  float llvm_cbe_tmp__14;
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
  static  unsigned long long aesl_llvm_cbe_68_count = 0;
  static  unsigned long long aesl_llvm_cbe_69_count = 0;
  static  unsigned long long aesl_llvm_cbe_70_count = 0;
  static  unsigned long long aesl_llvm_cbe_71_count = 0;
  float llvm_cbe_tmp__15;
  static  unsigned long long aesl_llvm_cbe_72_count = 0;
  float llvm_cbe_tmp__16;
  static  unsigned long long aesl_llvm_cbe_73_count = 0;
  static  unsigned long long aesl_llvm_cbe_74_count = 0;
  static  unsigned long long aesl_llvm_cbe_75_count = 0;
  static  unsigned long long aesl_llvm_cbe_76_count = 0;
  static  unsigned long long aesl_llvm_cbe_77_count = 0;
  static  unsigned long long aesl_llvm_cbe_78_count = 0;
  static  unsigned long long aesl_llvm_cbe_79_count = 0;
  static  unsigned long long aesl_llvm_cbe_80_count = 0;
  static  unsigned long long aesl_llvm_cbe_81_count = 0;
  static  unsigned long long aesl_llvm_cbe_82_count = 0;
  static  unsigned long long aesl_llvm_cbe_83_count = 0;
  static  unsigned long long aesl_llvm_cbe_84_count = 0;
  static  unsigned long long aesl_llvm_cbe_85_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge2_2e_2_count = 0;
  float llvm_cbe_storemerge2_2e_2;
  static  unsigned long long aesl_llvm_cbe_86_count = 0;
  static  unsigned long long aesl_llvm_cbe_87_count = 0;
  static  unsigned long long aesl_llvm_cbe_88_count = 0;
  static  unsigned long long aesl_llvm_cbe_89_count = 0;
  float llvm_cbe_tmp__17;
  static  unsigned long long aesl_llvm_cbe_90_count = 0;
  float llvm_cbe_tmp__18;
  static  unsigned long long aesl_llvm_cbe_91_count = 0;
  float llvm_cbe_tmp__19;
  static  unsigned long long aesl_llvm_cbe_92_count = 0;
  float llvm_cbe_tmp__20;
  static  unsigned long long aesl_llvm_cbe_93_count = 0;
  float llvm_cbe_tmp__21;
  static  unsigned long long aesl_llvm_cbe_94_count = 0;
  float llvm_cbe_tmp__22;
  static  unsigned long long aesl_llvm_cbe_95_count = 0;
  static  unsigned long long aesl_llvm_cbe_96_count = 0;
  static  unsigned long long aesl_llvm_cbe_97_count = 0;
  static  unsigned long long aesl_llvm_cbe_98_count = 0;
  static  unsigned long long aesl_llvm_cbe_99_count = 0;
  static  unsigned long long aesl_llvm_cbe_100_count = 0;
  float llvm_cbe_tmp__23;
  static  unsigned long long aesl_llvm_cbe_101_count = 0;
  float llvm_cbe_tmp__24;
  static  unsigned long long aesl_llvm_cbe_102_count = 0;
  static  unsigned long long aesl_llvm_cbe_103_count = 0;
  static  unsigned long long aesl_llvm_cbe_104_count = 0;
  static  unsigned long long aesl_llvm_cbe_105_count = 0;
  static  unsigned long long aesl_llvm_cbe_106_count = 0;
  static  unsigned long long aesl_llvm_cbe_107_count = 0;
  static  unsigned long long aesl_llvm_cbe_108_count = 0;
  static  unsigned long long aesl_llvm_cbe_109_count = 0;
  static  unsigned long long aesl_llvm_cbe_110_count = 0;
  static  unsigned long long aesl_llvm_cbe_111_count = 0;
  static  unsigned long long aesl_llvm_cbe_112_count = 0;
  static  unsigned long long aesl_llvm_cbe_113_count = 0;
  static  unsigned long long aesl_llvm_cbe_114_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge2_2e_3_count = 0;
  float llvm_cbe_storemerge2_2e_3;
  static  unsigned long long aesl_llvm_cbe_115_count = 0;
  static  unsigned long long aesl_llvm_cbe_116_count = 0;
  static  unsigned long long aesl_llvm_cbe_117_count = 0;
  static  unsigned long long aesl_llvm_cbe_118_count = 0;
  float llvm_cbe_tmp__25;
  static  unsigned long long aesl_llvm_cbe_119_count = 0;
  float llvm_cbe_tmp__26;
  static  unsigned long long aesl_llvm_cbe_120_count = 0;
  float llvm_cbe_tmp__27;
  static  unsigned long long aesl_llvm_cbe_121_count = 0;
  float llvm_cbe_tmp__28;
  static  unsigned long long aesl_llvm_cbe_122_count = 0;
  float llvm_cbe_tmp__29;
  static  unsigned long long aesl_llvm_cbe_123_count = 0;
  float llvm_cbe_tmp__30;
  static  unsigned long long aesl_llvm_cbe_124_count = 0;
  static  unsigned long long aesl_llvm_cbe_125_count = 0;
  static  unsigned long long aesl_llvm_cbe_126_count = 0;
  static  unsigned long long aesl_llvm_cbe_127_count = 0;
  static  unsigned long long aesl_llvm_cbe_128_count = 0;
  static  unsigned long long aesl_llvm_cbe_129_count = 0;
  float llvm_cbe_tmp__31;
  static  unsigned long long aesl_llvm_cbe_130_count = 0;
  float llvm_cbe_tmp__32;
  static  unsigned long long aesl_llvm_cbe_131_count = 0;
  static  unsigned long long aesl_llvm_cbe_132_count = 0;
  static  unsigned long long aesl_llvm_cbe_133_count = 0;
  static  unsigned long long aesl_llvm_cbe_134_count = 0;
  static  unsigned long long aesl_llvm_cbe_135_count = 0;
  static  unsigned long long aesl_llvm_cbe_136_count = 0;
  static  unsigned long long aesl_llvm_cbe_137_count = 0;
  static  unsigned long long aesl_llvm_cbe_138_count = 0;
  static  unsigned long long aesl_llvm_cbe_139_count = 0;
  static  unsigned long long aesl_llvm_cbe_140_count = 0;
  static  unsigned long long aesl_llvm_cbe_141_count = 0;
  static  unsigned long long aesl_llvm_cbe_142_count = 0;
  static  unsigned long long aesl_llvm_cbe_143_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge2_2e_4_count = 0;
  float llvm_cbe_storemerge2_2e_4;
  static  unsigned long long aesl_llvm_cbe_144_count = 0;
  static  unsigned long long aesl_llvm_cbe_145_count = 0;
  static  unsigned long long aesl_llvm_cbe_146_count = 0;
  static  unsigned long long aesl_llvm_cbe_147_count = 0;
  float llvm_cbe_tmp__33;
  static  unsigned long long aesl_llvm_cbe_148_count = 0;
  float llvm_cbe_tmp__34;
  static  unsigned long long aesl_llvm_cbe_149_count = 0;
  float llvm_cbe_tmp__35;
  static  unsigned long long aesl_llvm_cbe_150_count = 0;
  float llvm_cbe_tmp__36;
  static  unsigned long long aesl_llvm_cbe_151_count = 0;
  float llvm_cbe_tmp__37;
  static  unsigned long long aesl_llvm_cbe_152_count = 0;
  float llvm_cbe_tmp__38;
  static  unsigned long long aesl_llvm_cbe_153_count = 0;
  static  unsigned long long aesl_llvm_cbe_154_count = 0;
  static  unsigned long long aesl_llvm_cbe_155_count = 0;
  static  unsigned long long aesl_llvm_cbe_156_count = 0;
  static  unsigned long long aesl_llvm_cbe_157_count = 0;
  static  unsigned long long aesl_llvm_cbe_158_count = 0;
  static  unsigned long long aesl_llvm_cbe_159_count = 0;
  static  unsigned long long aesl_llvm_cbe_160_count = 0;
  static  unsigned long long aesl_llvm_cbe_161_count = 0;
  static  unsigned long long aesl_llvm_cbe_162_count = 0;
  static  unsigned long long aesl_llvm_cbe_163_count = 0;
  static  unsigned long long aesl_llvm_cbe_164_count = 0;
  static  unsigned long long aesl_llvm_cbe_165_count = 0;
  static  unsigned long long aesl_llvm_cbe_166_count = 0;
  static  unsigned long long aesl_llvm_cbe_167_count = 0;
  static  unsigned long long aesl_llvm_cbe_168_count = 0;
  static  unsigned long long aesl_llvm_cbe_169_count = 0;
  static  unsigned long long aesl_llvm_cbe_170_count = 0;
  float llvm_cbe_tmp__39;
  static  unsigned long long aesl_llvm_cbe_171_count = 0;
  static  unsigned long long aesl_llvm_cbe_172_count = 0;
  static  unsigned long long aesl_llvm_cbe_173_count = 0;
  static  unsigned long long aesl_llvm_cbe_174_count = 0;
  static  unsigned long long aesl_llvm_cbe_175_count = 0;
  float llvm_cbe_tmp__40;
  static  unsigned long long aesl_llvm_cbe_176_count = 0;
  static  unsigned long long aesl_llvm_cbe_177_count = 0;
  float llvm_cbe_tmp__41;
  static  unsigned long long aesl_llvm_cbe_178_count = 0;
  static  unsigned long long aesl_llvm_cbe_179_count = 0;
  float llvm_cbe_tmp__42;
  static  unsigned long long aesl_llvm_cbe_180_count = 0;
  float llvm_cbe_tmp__43;
  static  unsigned long long aesl_llvm_cbe_181_count = 0;
  static  unsigned long long aesl_llvm_cbe_182_count = 0;
  static  unsigned long long aesl_llvm_cbe_183_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge1_count = 0;
  float llvm_cbe_storemerge1;
  static  unsigned long long aesl_llvm_cbe_184_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @neuron\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge2 = select i1 %%1, float 1.000000e+00, float -1.000000e+00, !dbg !4 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_storemerge2_count);
  llvm_cbe_storemerge2 = (float )(((llvm_fcmp_ogt(llvm_cbe_angle, 0x0p0))) ? ((float )0x1p0) : ((float )-0x1p0));
if (AESL_DEBUG_TRACE)
printf("\nstoremerge2 = %f,  0x%x\n", llvm_cbe_storemerge2, *(int*)(&llvm_cbe_storemerge2));
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = fmul float %%storemerge2, 0.000000e+00, !dbg !3 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_31_count);
  llvm_cbe_tmp__1 = (float )((float )(llvm_cbe_storemerge2 * 0x0p0));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__1, *(int*)(&llvm_cbe_tmp__1));
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = fmul float %%2, 5.000000e-01, !dbg !3 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_32_count);
  llvm_cbe_tmp__2 = (float )((float )(llvm_cbe_tmp__1 * 0x1p-1));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__2, *(int*)(&llvm_cbe_tmp__2));
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = fadd float %%3, 0x3FF453F7C0000000, !dbg !3 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_33_count);
  llvm_cbe_tmp__3 = (float )((float )(llvm_cbe_tmp__2 + 0x1.453f7cp0));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__3, *(int*)(&llvm_cbe_tmp__3));
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = fmul float %%storemerge2, 0x3FF453F7C0000000, !dbg !3 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_34_count);
  llvm_cbe_tmp__4 = (float )((float )(llvm_cbe_storemerge2 * 0x1.453f7cp0));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__4, *(int*)(&llvm_cbe_tmp__4));
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = fmul float %%5, 5.000000e-01, !dbg !3 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_35_count);
  llvm_cbe_tmp__5 = (float )((float )(llvm_cbe_tmp__4 * 0x1p-1));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__5, *(int*)(&llvm_cbe_tmp__5));
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = fadd float %%6, 0.000000e+00, !dbg !3 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_36_count);
  llvm_cbe_tmp__6 = (float )((float )(llvm_cbe_tmp__5 + 0x0p0));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__6, *(int*)(&llvm_cbe_tmp__6));
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = fmul float %%storemerge2, 0x3FE1916880000000, !dbg !4 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_42_count);
  llvm_cbe_tmp__7 = (float )((float )(llvm_cbe_storemerge2 * 0x1.191688p-1));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__7, *(int*)(&llvm_cbe_tmp__7));
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = fsub float %%angle, %%8, !dbg !4 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_43_count);
  llvm_cbe_tmp__8 = (float )((float )(llvm_cbe_angle - llvm_cbe_tmp__7));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__8, *(int*)(&llvm_cbe_tmp__8));
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge2.1 = select i1 %%10, float 1.000000e+00, float -1.000000e+00, !dbg !4 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_storemerge2_2e_1_count);
  llvm_cbe_storemerge2_2e_1 = (float )(((llvm_fcmp_ogt(llvm_cbe_tmp__8, 0x0p0))) ? ((float )0x1p0) : ((float )-0x1p0));
if (AESL_DEBUG_TRACE)
printf("\nstoremerge2.1 = %f,  0x%x\n", llvm_cbe_storemerge2_2e_1, *(int*)(&llvm_cbe_storemerge2_2e_1));
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = fmul float %%storemerge2.1, %%7, !dbg !3 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_60_count);
  llvm_cbe_tmp__9 = (float )((float )(llvm_cbe_storemerge2_2e_1 * llvm_cbe_tmp__6));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__9, *(int*)(&llvm_cbe_tmp__9));
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = fmul float %%11, 2.500000e-01, !dbg !3 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_61_count);
  llvm_cbe_tmp__10 = (float )((float )(llvm_cbe_tmp__9 * 0x1p-2));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__10, *(int*)(&llvm_cbe_tmp__10));
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = fadd float %%4, %%12, !dbg !3 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_62_count);
  llvm_cbe_tmp__11 = (float )((float )(llvm_cbe_tmp__3 + llvm_cbe_tmp__10));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__11, *(int*)(&llvm_cbe_tmp__11));
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = fmul float %%storemerge2.1, %%4, !dbg !3 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_63_count);
  llvm_cbe_tmp__12 = (float )((float )(llvm_cbe_storemerge2_2e_1 * llvm_cbe_tmp__3));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__12, *(int*)(&llvm_cbe_tmp__12));
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = fmul float %%14, 2.500000e-01, !dbg !3 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_64_count);
  llvm_cbe_tmp__13 = (float )((float )(llvm_cbe_tmp__12 * 0x1p-2));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__13, *(int*)(&llvm_cbe_tmp__13));
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = fadd float %%7, %%15, !dbg !3 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_65_count);
  llvm_cbe_tmp__14 = (float )((float )(llvm_cbe_tmp__6 + llvm_cbe_tmp__13));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__14, *(int*)(&llvm_cbe_tmp__14));
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = fmul float %%storemerge2.1, 0x3FD051EB80000000, !dbg !4 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_71_count);
  llvm_cbe_tmp__15 = (float )((float )(llvm_cbe_storemerge2_2e_1 * 0x1.051eb8p-2));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__15, *(int*)(&llvm_cbe_tmp__15));
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = fsub float %%9, %%17, !dbg !4 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_72_count);
  llvm_cbe_tmp__16 = (float )((float )(llvm_cbe_tmp__8 - llvm_cbe_tmp__15));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__16, *(int*)(&llvm_cbe_tmp__16));
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge2.2 = select i1 %%19, float 1.000000e+00, float -1.000000e+00, !dbg !4 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_storemerge2_2e_2_count);
  llvm_cbe_storemerge2_2e_2 = (float )(((llvm_fcmp_ogt(llvm_cbe_tmp__16, 0x0p0))) ? ((float )0x1p0) : ((float )-0x1p0));
if (AESL_DEBUG_TRACE)
printf("\nstoremerge2.2 = %f,  0x%x\n", llvm_cbe_storemerge2_2e_2, *(int*)(&llvm_cbe_storemerge2_2e_2));
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = fmul float %%storemerge2.2, %%16, !dbg !3 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_89_count);
  llvm_cbe_tmp__17 = (float )((float )(llvm_cbe_storemerge2_2e_2 * llvm_cbe_tmp__14));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__17, *(int*)(&llvm_cbe_tmp__17));
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = fmul float %%20, 1.250000e-01, !dbg !3 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_90_count);
  llvm_cbe_tmp__18 = (float )((float )(llvm_cbe_tmp__17 * 0x1p-3));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__18, *(int*)(&llvm_cbe_tmp__18));
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = fadd float %%13, %%21, !dbg !3 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_91_count);
  llvm_cbe_tmp__19 = (float )((float )(llvm_cbe_tmp__11 + llvm_cbe_tmp__18));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__19, *(int*)(&llvm_cbe_tmp__19));
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = fmul float %%storemerge2.2, %%13, !dbg !3 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_92_count);
  llvm_cbe_tmp__20 = (float )((float )(llvm_cbe_storemerge2_2e_2 * llvm_cbe_tmp__11));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__20, *(int*)(&llvm_cbe_tmp__20));
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = fmul float %%23, 1.250000e-01, !dbg !3 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_93_count);
  llvm_cbe_tmp__21 = (float )((float )(llvm_cbe_tmp__20 * 0x1p-3));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__21, *(int*)(&llvm_cbe_tmp__21));
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = fadd float %%16, %%24, !dbg !3 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_94_count);
  llvm_cbe_tmp__22 = (float )((float )(llvm_cbe_tmp__14 + llvm_cbe_tmp__21));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__22, *(int*)(&llvm_cbe_tmp__22));
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = fmul float %%storemerge2.2, 1.250000e-01, !dbg !4 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_100_count);
  llvm_cbe_tmp__23 = (float )((float )(llvm_cbe_storemerge2_2e_2 * 0x1p-3));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__23, *(int*)(&llvm_cbe_tmp__23));
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = fsub float %%18, %%26, !dbg !4 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_101_count);
  llvm_cbe_tmp__24 = (float )((float )(llvm_cbe_tmp__16 - llvm_cbe_tmp__23));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__24, *(int*)(&llvm_cbe_tmp__24));
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge2.3 = select i1 %%28, float 1.000000e+00, float -1.000000e+00, !dbg !4 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_storemerge2_2e_3_count);
  llvm_cbe_storemerge2_2e_3 = (float )(((llvm_fcmp_ogt(llvm_cbe_tmp__24, 0x0p0))) ? ((float )0x1p0) : ((float )-0x1p0));
if (AESL_DEBUG_TRACE)
printf("\nstoremerge2.3 = %f,  0x%x\n", llvm_cbe_storemerge2_2e_3, *(int*)(&llvm_cbe_storemerge2_2e_3));
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = fmul float %%storemerge2.3, %%25, !dbg !3 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_118_count);
  llvm_cbe_tmp__25 = (float )((float )(llvm_cbe_storemerge2_2e_3 * llvm_cbe_tmp__22));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__25, *(int*)(&llvm_cbe_tmp__25));
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = fmul float %%29, 6.250000e-02, !dbg !3 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_119_count);
  llvm_cbe_tmp__26 = (float )((float )(llvm_cbe_tmp__25 * 0x1p-4));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__26, *(int*)(&llvm_cbe_tmp__26));
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = fadd float %%22, %%30, !dbg !3 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_120_count);
  llvm_cbe_tmp__27 = (float )((float )(llvm_cbe_tmp__19 + llvm_cbe_tmp__26));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__27, *(int*)(&llvm_cbe_tmp__27));
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = fmul float %%storemerge2.3, %%22, !dbg !3 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_121_count);
  llvm_cbe_tmp__28 = (float )((float )(llvm_cbe_storemerge2_2e_3 * llvm_cbe_tmp__19));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__28, *(int*)(&llvm_cbe_tmp__28));
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = fmul float %%32, 6.250000e-02, !dbg !3 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_122_count);
  llvm_cbe_tmp__29 = (float )((float )(llvm_cbe_tmp__28 * 0x1p-4));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__29, *(int*)(&llvm_cbe_tmp__29));
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = fadd float %%25, %%33, !dbg !3 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_123_count);
  llvm_cbe_tmp__30 = (float )((float )(llvm_cbe_tmp__22 + llvm_cbe_tmp__29));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__30, *(int*)(&llvm_cbe_tmp__30));
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = fmul float %%storemerge2.3, 0x3FAFBE76C0000000, !dbg !4 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_129_count);
  llvm_cbe_tmp__31 = (float )((float )(llvm_cbe_storemerge2_2e_3 * 0x1.fbe76cp-5));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__31, *(int*)(&llvm_cbe_tmp__31));
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = fsub float %%27, %%35, !dbg !4 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_130_count);
  llvm_cbe_tmp__32 = (float )((float )(llvm_cbe_tmp__24 - llvm_cbe_tmp__31));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__32, *(int*)(&llvm_cbe_tmp__32));
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge2.4 = select i1 %%37, float 1.000000e+00, float -1.000000e+00, !dbg !4 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_storemerge2_2e_4_count);
  llvm_cbe_storemerge2_2e_4 = (float )(((llvm_fcmp_ogt(llvm_cbe_tmp__32, 0x0p0))) ? ((float )0x1p0) : ((float )-0x1p0));
if (AESL_DEBUG_TRACE)
printf("\nstoremerge2.4 = %f,  0x%x\n", llvm_cbe_storemerge2_2e_4, *(int*)(&llvm_cbe_storemerge2_2e_4));
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = fmul float %%storemerge2.4, %%34, !dbg !3 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_147_count);
  llvm_cbe_tmp__33 = (float )((float )(llvm_cbe_storemerge2_2e_4 * llvm_cbe_tmp__30));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__33, *(int*)(&llvm_cbe_tmp__33));
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = fmul float %%38, 3.125000e-02, !dbg !3 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_148_count);
  llvm_cbe_tmp__34 = (float )((float )(llvm_cbe_tmp__33 * 0x1p-5));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__34, *(int*)(&llvm_cbe_tmp__34));
if (AESL_DEBUG_TRACE)
printf("\n  %%40 = fadd float %%31, %%39, !dbg !3 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_149_count);
  llvm_cbe_tmp__35 = (float )((float )(llvm_cbe_tmp__27 + llvm_cbe_tmp__34));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__35, *(int*)(&llvm_cbe_tmp__35));
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = fmul float %%storemerge2.4, %%31, !dbg !3 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_150_count);
  llvm_cbe_tmp__36 = (float )((float )(llvm_cbe_storemerge2_2e_4 * llvm_cbe_tmp__27));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__36, *(int*)(&llvm_cbe_tmp__36));
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = fmul float %%41, 3.125000e-02, !dbg !3 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_151_count);
  llvm_cbe_tmp__37 = (float )((float )(llvm_cbe_tmp__36 * 0x1p-5));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__37, *(int*)(&llvm_cbe_tmp__37));
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = fadd float %%34, %%42, !dbg !3 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_152_count);
  llvm_cbe_tmp__38 = (float )((float )(llvm_cbe_tmp__30 + llvm_cbe_tmp__37));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__38, *(int*)(&llvm_cbe_tmp__38));
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = fdiv float %%43, %%40, !dbg !3 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_170_count);
  llvm_cbe_tmp__39 = (float )((float )(llvm_cbe_tmp__38 / llvm_cbe_tmp__35));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__39, *(int*)(&llvm_cbe_tmp__39));
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = fadd float %%43, %%40, !dbg !6 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_175_count);
  llvm_cbe_tmp__40 = (float )((float )(llvm_cbe_tmp__38 + llvm_cbe_tmp__35));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__40, *(int*)(&llvm_cbe_tmp__40));
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = fadd float %%43, 1.000000e+00, !dbg !6 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_177_count);
  llvm_cbe_tmp__41 = (float )((float )(llvm_cbe_tmp__38 + 0x1p0));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__41, *(int*)(&llvm_cbe_tmp__41));
if (AESL_DEBUG_TRACE)
printf("\n  %%47 = fadd float %%46, %%40, !dbg !6 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_179_count);
  llvm_cbe_tmp__42 = (float )((float )(llvm_cbe_tmp__41 + llvm_cbe_tmp__35));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__42, *(int*)(&llvm_cbe_tmp__42));
if (AESL_DEBUG_TRACE)
printf("\n  %%48 = fdiv float %%45, %%47, !dbg !6 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_180_count);
  llvm_cbe_tmp__43 = (float )((float )(llvm_cbe_tmp__40 / llvm_cbe_tmp__42));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__43, *(int*)(&llvm_cbe_tmp__43));
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge1 = select i1 %%49, float %%44, float %%48, !dbg !2 for 0x%I64xth hint within @neuron  --> \n", ++aesl_llvm_cbe_storemerge1_count);
  llvm_cbe_storemerge1 = (float )((((llvm_cbe_sel&4294967295U) == (0u&4294967295U))) ? ((float )llvm_cbe_tmp__39) : ((float )llvm_cbe_tmp__43));
if (AESL_DEBUG_TRACE)
printf("\nstoremerge1 = %f,  0x%x\n", llvm_cbe_storemerge1, *(int*)(&llvm_cbe_storemerge1));
  if (AESL_DEBUG_TRACE)
      printf("\nEND @neuron}\n");
  return llvm_cbe_storemerge1;
}

