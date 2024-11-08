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

/* External Global Variable Declarations */

/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
float MAC(float llvm_cbe_a, float llvm_cbe_b, float llvm_cbe_c, signed int llvm_cbe_j);
float MAC_hw_stub(float llvm_cbe_a, float llvm_cbe_b, float llvm_cbe_c, signed int llvm_cbe_j);
float apatb_MAC_sw(float llvm_cbe_a, float llvm_cbe_b, float llvm_cbe_c, signed int llvm_cbe_j);
float apatb_MAC_ir(float , float , float , signed int );


/* Global Variable Definitions and Initialization */
static float aesl_internal_MAC_OC_tanh_in[13] = { 0x1.191688p-1, 0x1.051eb8p-2, 0x1p-3, 0x1.fbe76cp-5, 0x1.fbe76cp-6, 0x1.eb851ep-7, 0x1.ff2e48p-8, 0x1.ff2e48p-9, 0x1.f212d8p-10, 0x1.fc8f32p-11, 0x1.f75104p-12, 0x1.f75104p-13, 0x0p0 };


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

float MAC(float llvm_cbe_a, float llvm_cbe_b, float llvm_cbe_c, signed int llvm_cbe_j) {
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
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
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
  static  unsigned long long aesl_llvm_cbe_storemerge8_count = 0;
  unsigned int llvm_cbe_storemerge8;
  unsigned int llvm_cbe_storemerge8__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_57_count = 0;
  float llvm_cbe_tmp__1;
  float llvm_cbe_tmp__1__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
  float llvm_cbe_tmp__2;
  float llvm_cbe_tmp__2__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
  float llvm_cbe_tmp__3;
  float llvm_cbe_tmp__3__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;
  static  unsigned long long aesl_llvm_cbe_61_count = 0;
  static  unsigned long long aesl_llvm_cbe_62_count = 0;
  float llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_63_count = 0;
  float llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
  float llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
  float llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
  static  unsigned long long aesl_llvm_cbe_68_count = 0;
  static  unsigned long long aesl_llvm_cbe_69_count = 0;
  static  unsigned long long aesl_llvm_cbe_70_count = 0;
  static  unsigned long long aesl_llvm_cbe_71_count = 0;
  static  unsigned long long aesl_llvm_cbe_72_count = 0;
  static  unsigned long long aesl_llvm_cbe_73_count = 0;
  float llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_74_count = 0;
  float llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_75_count = 0;
  static  unsigned long long aesl_llvm_cbe_76_count = 0;
  static  unsigned long long aesl_llvm_cbe_77_count = 0;
  static  unsigned long long aesl_llvm_cbe_78_count = 0;
  static  unsigned long long aesl_llvm_cbe_79_count = 0;
  static  unsigned long long aesl_llvm_cbe_80_count = 0;
  float llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_81_count = 0;
  static  unsigned long long aesl_llvm_cbe_82_count = 0;
  static  unsigned long long aesl_llvm_cbe_83_count = 0;
  static  unsigned long long aesl_llvm_cbe_84_count = 0;
  static  unsigned long long aesl_llvm_cbe_85_count = 0;
  static  unsigned long long aesl_llvm_cbe_86_count = 0;
  static  unsigned long long aesl_llvm_cbe_87_count = 0;
  static  unsigned long long aesl_llvm_cbe_88_count = 0;
  unsigned int llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_89_count = 0;
  static  unsigned long long aesl_llvm_cbe_90_count = 0;
  static  unsigned long long aesl_llvm_cbe_91_count = 0;
  static  unsigned long long aesl_llvm_cbe_92_count = 0;
  static  unsigned long long aesl_llvm_cbe_93_count = 0;
  static  unsigned long long aesl_llvm_cbe_94_count = 0;
  static  unsigned long long aesl_llvm_cbe_95_count = 0;
  static  unsigned long long aesl_llvm_cbe_96_count = 0;
  static  unsigned long long aesl_llvm_cbe_97_count = 0;
  static  unsigned long long aesl_llvm_cbe_98_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond15_count = 0;
  static  unsigned long long aesl_llvm_cbe_99_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge15_count = 0;
  unsigned int llvm_cbe_storemerge15;
  unsigned int llvm_cbe_storemerge15__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_100_count = 0;
  float llvm_cbe_tmp__12;
  float llvm_cbe_tmp__12__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_101_count = 0;
  float llvm_cbe_tmp__13;
  float llvm_cbe_tmp__13__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_102_count = 0;
  float llvm_cbe_tmp__14;
  float llvm_cbe_tmp__14__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_103_count = 0;
  float llvm_cbe_tmp__15;
  float llvm_cbe_tmp__15__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_104_count = 0;
  static  unsigned long long aesl_llvm_cbe_105_count = 0;
  static  unsigned long long aesl_llvm_cbe_106_count = 0;
  float llvm_cbe_tmp__16;
  static  unsigned long long aesl_llvm_cbe_107_count = 0;
  float llvm_cbe_tmp__17;
  static  unsigned long long aesl_llvm_cbe_108_count = 0;
  float llvm_cbe_tmp__18;
  static  unsigned long long aesl_llvm_cbe_109_count = 0;
  float llvm_cbe_tmp__19;
  static  unsigned long long aesl_llvm_cbe_110_count = 0;
  float llvm_cbe_tmp__20;
  static  unsigned long long aesl_llvm_cbe_111_count = 0;
  float llvm_cbe_tmp__21;
  static  unsigned long long aesl_llvm_cbe_112_count = 0;
  float llvm_cbe_tmp__22;
  static  unsigned long long aesl_llvm_cbe_113_count = 0;
  static  unsigned long long aesl_llvm_cbe_114_count = 0;
  static  unsigned long long aesl_llvm_cbe_115_count = 0;
  static  unsigned long long aesl_llvm_cbe_116_count = 0;
  static  unsigned long long aesl_llvm_cbe_117_count = 0;
  static  unsigned long long aesl_llvm_cbe_118_count = 0;
  static  unsigned long long aesl_llvm_cbe_119_count = 0;
  static  unsigned long long aesl_llvm_cbe_120_count = 0;
  unsigned long long llvm_cbe_tmp__23;
  static  unsigned long long aesl_llvm_cbe_121_count = 0;
  float *llvm_cbe_tmp__24;
  static  unsigned long long aesl_llvm_cbe_122_count = 0;
  float llvm_cbe_tmp__25;
  static  unsigned long long aesl_llvm_cbe_123_count = 0;
  float llvm_cbe_tmp__26;
  static  unsigned long long aesl_llvm_cbe_124_count = 0;
  float llvm_cbe_tmp__27;
  static  unsigned long long aesl_llvm_cbe_125_count = 0;
  static  unsigned long long aesl_llvm_cbe_126_count = 0;
  static  unsigned long long aesl_llvm_cbe_127_count = 0;
  static  unsigned long long aesl_llvm_cbe_128_count = 0;
  static  unsigned long long aesl_llvm_cbe_129_count = 0;
  static  unsigned long long aesl_llvm_cbe_130_count = 0;
  float llvm_cbe_tmp__28;
  static  unsigned long long aesl_llvm_cbe_131_count = 0;
  static  unsigned long long aesl_llvm_cbe_132_count = 0;
  static  unsigned long long aesl_llvm_cbe_133_count = 0;
  static  unsigned long long aesl_llvm_cbe_134_count = 0;
  static  unsigned long long aesl_llvm_cbe_135_count = 0;
  static  unsigned long long aesl_llvm_cbe_136_count = 0;
  static  unsigned long long aesl_llvm_cbe_137_count = 0;
  static  unsigned long long aesl_llvm_cbe_138_count = 0;
  unsigned int llvm_cbe_tmp__29;
  static  unsigned long long aesl_llvm_cbe_139_count = 0;
  static  unsigned long long aesl_llvm_cbe_140_count = 0;
  static  unsigned long long aesl_llvm_cbe_141_count = 0;
  static  unsigned long long aesl_llvm_cbe_142_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_143_count = 0;
  static  unsigned long long aesl_llvm_cbe__2e_lcssa4_count = 0;
  float llvm_cbe__2e_lcssa4;
  float llvm_cbe__2e_lcssa4__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe__2e_lcssa_count = 0;
  float llvm_cbe__2e_lcssa;
  float llvm_cbe__2e_lcssa__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_144_count = 0;
  float llvm_cbe_tmp__30;
  static  unsigned long long aesl_llvm_cbe_145_count = 0;
  static  unsigned long long aesl_llvm_cbe_146_count = 0;
  static  unsigned long long aesl_llvm_cbe_147_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @MAC\n");
  if ((((signed int )llvm_cbe_j) > ((signed int )0u))) {
    llvm_cbe_storemerge8__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    llvm_cbe_tmp__1__PHI_TEMPORARY = (float )llvm_cbe_c;   /* for PHI node */
    llvm_cbe_tmp__2__PHI_TEMPORARY = (float )llvm_cbe_b;   /* for PHI node */
    llvm_cbe_tmp__3__PHI_TEMPORARY = (float )0x1p0;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph10;
  } else {
    llvm_cbe__2e_lcssa4__PHI_TEMPORARY = (float )0x1.453f7cp0;   /* for PHI node */
    llvm_cbe__2e_lcssa__PHI_TEMPORARY = (float )0x0p0;   /* for PHI node */
    goto llvm_cbe__2e__crit_edge;
  }

llvm_cbe__2e_preheader:
  if ((((signed int )llvm_cbe_j) > ((signed int )0u))) {
    llvm_cbe_storemerge15__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    llvm_cbe_tmp__12__PHI_TEMPORARY = (float )0x1.453f7cp0;   /* for PHI node */
    llvm_cbe_tmp__13__PHI_TEMPORARY = (float )0x0p0;   /* for PHI node */
    llvm_cbe_tmp__14__PHI_TEMPORARY = (float )llvm_cbe_tmp__7;   /* for PHI node */
    llvm_cbe_tmp__15__PHI_TEMPORARY = (float )0x1p-1;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph;
  } else {
    llvm_cbe__2e_lcssa4__PHI_TEMPORARY = (float )0x1.453f7cp0;   /* for PHI node */
    llvm_cbe__2e_lcssa__PHI_TEMPORARY = (float )0x0p0;   /* for PHI node */
    goto llvm_cbe__2e__crit_edge;
  }

  do {     /* Syntactic loop '.lr.ph10' to make GCC happy */
llvm_cbe__2e_lr_2e_ph10:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge8 = phi i32 [ %%13, %%.lr.ph10 ], [ 0, %%0  for 0x%I64xth hint within @MAC  --> \n", ++aesl_llvm_cbe_storemerge8_count);
  llvm_cbe_storemerge8 = (unsigned int )llvm_cbe_storemerge8__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge8 = 0x%X",llvm_cbe_storemerge8);
printf("\n = 0x%X",llvm_cbe_tmp__11);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = phi float [ %%9, %%.lr.ph10 ], [ %%c, %%0  for 0x%I64xth hint within @MAC  --> \n", ++aesl_llvm_cbe_57_count);
  llvm_cbe_tmp__1 = (float )llvm_cbe_tmp__1__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__1);
printf("\n = %f",llvm_cbe_tmp__7);
printf("\nc = %f",llvm_cbe_c);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = phi float [ %%11, %%.lr.ph10 ], [ %%b, %%0  for 0x%I64xth hint within @MAC  --> \n", ++aesl_llvm_cbe_58_count);
  llvm_cbe_tmp__2 = (float )llvm_cbe_tmp__2__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__2);
printf("\n = %f",llvm_cbe_tmp__9);
printf("\nb = %f",llvm_cbe_b);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = phi float [ %%12, %%.lr.ph10 ], [ 1.000000e+00, %%0  for 0x%I64xth hint within @MAC  --> \n", ++aesl_llvm_cbe_59_count);
  llvm_cbe_tmp__3 = (float )llvm_cbe_tmp__3__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__3);
printf("\n = %f",llvm_cbe_tmp__10);
printf("\n = %f",0x1p0);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = select i1 %%5, float 1.000000e+00, float -1.000000e+00, !dbg !4 for 0x%I64xth hint within @MAC  --> \n", ++aesl_llvm_cbe_62_count);
  llvm_cbe_tmp__4 = (float )(((llvm_fcmp_ogt(llvm_cbe_tmp__2, 0x0p0))) ? ((float )0x1p0) : ((float )-0x1p0));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__4, *(int*)(&llvm_cbe_tmp__4));
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = fmul float %%6, %%a, !dbg !4 for 0x%I64xth hint within @MAC  --> \n", ++aesl_llvm_cbe_63_count);
  llvm_cbe_tmp__5 = (float )((float )(llvm_cbe_tmp__4 * llvm_cbe_a));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__5, *(int*)(&llvm_cbe_tmp__5));
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = fmul float %%7, %%4, !dbg !4 for 0x%I64xth hint within @MAC  --> \n", ++aesl_llvm_cbe_64_count);
  llvm_cbe_tmp__6 = (float )((float )(llvm_cbe_tmp__5 * llvm_cbe_tmp__3));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__6, *(int*)(&llvm_cbe_tmp__6));
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = fadd float %%2, %%8, !dbg !4 for 0x%I64xth hint within @MAC  --> \n", ++aesl_llvm_cbe_65_count);
  llvm_cbe_tmp__7 = (float )((float )(llvm_cbe_tmp__1 + llvm_cbe_tmp__6));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__7, *(int*)(&llvm_cbe_tmp__7));
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = fmul float %%6, %%4, !dbg !6 for 0x%I64xth hint within @MAC  --> \n", ++aesl_llvm_cbe_73_count);
  llvm_cbe_tmp__8 = (float )((float )(llvm_cbe_tmp__4 * llvm_cbe_tmp__3));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__8, *(int*)(&llvm_cbe_tmp__8));
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = fsub float %%3, %%10, !dbg !6 for 0x%I64xth hint within @MAC  --> \n", ++aesl_llvm_cbe_74_count);
  llvm_cbe_tmp__9 = (float )((float )(llvm_cbe_tmp__2 - llvm_cbe_tmp__8));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__9, *(int*)(&llvm_cbe_tmp__9));
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = fmul float %%4, 5.000000e-01, !dbg !7 for 0x%I64xth hint within @MAC  --> \n", ++aesl_llvm_cbe_80_count);
  llvm_cbe_tmp__10 = (float )((float )(llvm_cbe_tmp__3 * 0x1p-1));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__10, *(int*)(&llvm_cbe_tmp__10));
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = add nsw i32 %%storemerge8, 1, !dbg !7 for 0x%I64xth hint within @MAC  --> \n", ++aesl_llvm_cbe_88_count);
  llvm_cbe_tmp__11 = (unsigned int )((unsigned int )(llvm_cbe_storemerge8&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__11&4294967295ull)));
  if (((llvm_cbe_tmp__11&4294967295U) == (llvm_cbe_j&4294967295U))) {
    goto llvm_cbe__2e_preheader;
  } else {
    llvm_cbe_storemerge8__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__11;   /* for PHI node */
    llvm_cbe_tmp__1__PHI_TEMPORARY = (float )llvm_cbe_tmp__7;   /* for PHI node */
    llvm_cbe_tmp__2__PHI_TEMPORARY = (float )llvm_cbe_tmp__9;   /* for PHI node */
    llvm_cbe_tmp__3__PHI_TEMPORARY = (float )llvm_cbe_tmp__10;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph10;
  }

  } while (1); /* end of syntactic loop '.lr.ph10' */
  do {     /* Syntactic loop '.lr.ph' to make GCC happy */
llvm_cbe__2e_lr_2e_ph:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge15 = phi i32 [ %%32, %%.lr.ph ], [ 0, %%.preheader  for 0x%I64xth hint within @MAC  --> \n", ++aesl_llvm_cbe_storemerge15_count);
  llvm_cbe_storemerge15 = (unsigned int )llvm_cbe_storemerge15__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge15 = 0x%X",llvm_cbe_storemerge15);
printf("\n = 0x%X",llvm_cbe_tmp__29);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = phi float [ %%22, %%.lr.ph ], [ 0x3FF453F7C0000000, %%.preheader  for 0x%I64xth hint within @MAC  --> \n", ++aesl_llvm_cbe_100_count);
  llvm_cbe_tmp__12 = (float )llvm_cbe_tmp__12__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__12);
printf("\n = %f",llvm_cbe_tmp__19);
printf("\n = %f",0x1.453f7cp0);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = phi float [ %%25, %%.lr.ph ], [ 0.000000e+00, %%.preheader  for 0x%I64xth hint within @MAC  --> \n", ++aesl_llvm_cbe_101_count);
  llvm_cbe_tmp__13 = (float )llvm_cbe_tmp__13__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__13);
printf("\n = %f",llvm_cbe_tmp__22);
printf("\n = %f",0x0p0);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = phi float [ %%30, %%.lr.ph ], [ %%9, %%.preheader  for 0x%I64xth hint within @MAC  --> \n", ++aesl_llvm_cbe_102_count);
  llvm_cbe_tmp__14 = (float )llvm_cbe_tmp__14__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__14);
printf("\n = %f",llvm_cbe_tmp__27);
printf("\n = %f",llvm_cbe_tmp__7);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = phi float [ %%31, %%.lr.ph ], [ 5.000000e-01, %%.preheader  for 0x%I64xth hint within @MAC  --> \n", ++aesl_llvm_cbe_103_count);
  llvm_cbe_tmp__15 = (float )llvm_cbe_tmp__15__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__15);
printf("\n = %f",llvm_cbe_tmp__28);
printf("\n = %f",0x1p-1);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = select i1 %%18, float 1.000000e+00, float -1.000000e+00, !dbg !5 for 0x%I64xth hint within @MAC  --> \n", ++aesl_llvm_cbe_106_count);
  llvm_cbe_tmp__16 = (float )(((llvm_fcmp_ogt(llvm_cbe_tmp__14, 0x0p0))) ? ((float )0x1p0) : ((float )-0x1p0));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__16, *(int*)(&llvm_cbe_tmp__16));
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = fmul float %%19, %%15, !dbg !5 for 0x%I64xth hint within @MAC  --> \n", ++aesl_llvm_cbe_107_count);
  llvm_cbe_tmp__17 = (float )((float )(llvm_cbe_tmp__16 * llvm_cbe_tmp__13));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__17, *(int*)(&llvm_cbe_tmp__17));
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = fmul float %%20, %%17, !dbg !5 for 0x%I64xth hint within @MAC  --> \n", ++aesl_llvm_cbe_108_count);
  llvm_cbe_tmp__18 = (float )((float )(llvm_cbe_tmp__17 * llvm_cbe_tmp__15));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__18, *(int*)(&llvm_cbe_tmp__18));
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = fadd float %%14, %%21, !dbg !5 for 0x%I64xth hint within @MAC  --> \n", ++aesl_llvm_cbe_109_count);
  llvm_cbe_tmp__19 = (float )((float )(llvm_cbe_tmp__12 + llvm_cbe_tmp__18));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__19, *(int*)(&llvm_cbe_tmp__19));
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = fmul float %%19, %%14, !dbg !5 for 0x%I64xth hint within @MAC  --> \n", ++aesl_llvm_cbe_110_count);
  llvm_cbe_tmp__20 = (float )((float )(llvm_cbe_tmp__16 * llvm_cbe_tmp__12));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__20, *(int*)(&llvm_cbe_tmp__20));
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = fmul float %%23, %%17, !dbg !5 for 0x%I64xth hint within @MAC  --> \n", ++aesl_llvm_cbe_111_count);
  llvm_cbe_tmp__21 = (float )((float )(llvm_cbe_tmp__20 * llvm_cbe_tmp__15));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__21, *(int*)(&llvm_cbe_tmp__21));
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = fadd float %%15, %%24, !dbg !5 for 0x%I64xth hint within @MAC  --> \n", ++aesl_llvm_cbe_112_count);
  llvm_cbe_tmp__22 = (float )((float )(llvm_cbe_tmp__13 + llvm_cbe_tmp__21));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__22, *(int*)(&llvm_cbe_tmp__22));
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = sext i32 %%storemerge15 to i64, !dbg !6 for 0x%I64xth hint within @MAC  --> \n", ++aesl_llvm_cbe_120_count);
  llvm_cbe_tmp__23 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge15);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__23);
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = getelementptr inbounds [13 x float]* @aesl_internal_MAC.tanh_in, i64 0, i64 %%26, !dbg !6 for 0x%I64xth hint within @MAC  --> \n", ++aesl_llvm_cbe_121_count);
  llvm_cbe_tmp__24 = (float *)(&aesl_internal_MAC_OC_tanh_in[(((signed long long )llvm_cbe_tmp__23))
#ifdef AESL_BC_SIM
 % 13
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__23));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__23) < 13)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_MAC.tanh_in' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = load float* %%27, align 4, !dbg !6 for 0x%I64xth hint within @MAC  --> \n", ++aesl_llvm_cbe_122_count);
  llvm_cbe_tmp__25 = (float )*llvm_cbe_tmp__24;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__25, *(int*)(&llvm_cbe_tmp__25));
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = fmul float %%19, %%28, !dbg !6 for 0x%I64xth hint within @MAC  --> \n", ++aesl_llvm_cbe_123_count);
  llvm_cbe_tmp__26 = (float )((float )(llvm_cbe_tmp__16 * llvm_cbe_tmp__25));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__26, *(int*)(&llvm_cbe_tmp__26));
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = fsub float %%16, %%29, !dbg !6 for 0x%I64xth hint within @MAC  --> \n", ++aesl_llvm_cbe_124_count);
  llvm_cbe_tmp__27 = (float )((float )(llvm_cbe_tmp__14 - llvm_cbe_tmp__26));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__27, *(int*)(&llvm_cbe_tmp__27));
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = fmul float %%17, 5.000000e-01, !dbg !7 for 0x%I64xth hint within @MAC  --> \n", ++aesl_llvm_cbe_130_count);
  llvm_cbe_tmp__28 = (float )((float )(llvm_cbe_tmp__15 * 0x1p-1));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__28, *(int*)(&llvm_cbe_tmp__28));
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = add nsw i32 %%storemerge15, 1, !dbg !7 for 0x%I64xth hint within @MAC  --> \n", ++aesl_llvm_cbe_138_count);
  llvm_cbe_tmp__29 = (unsigned int )((unsigned int )(llvm_cbe_storemerge15&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__29&4294967295ull)));
  if (((llvm_cbe_tmp__29&4294967295U) == (llvm_cbe_j&4294967295U))) {
    llvm_cbe__2e_lcssa4__PHI_TEMPORARY = (float )llvm_cbe_tmp__19;   /* for PHI node */
    llvm_cbe__2e_lcssa__PHI_TEMPORARY = (float )llvm_cbe_tmp__22;   /* for PHI node */
    goto llvm_cbe__2e__crit_edge;
  } else {
    llvm_cbe_storemerge15__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__29;   /* for PHI node */
    llvm_cbe_tmp__12__PHI_TEMPORARY = (float )llvm_cbe_tmp__19;   /* for PHI node */
    llvm_cbe_tmp__13__PHI_TEMPORARY = (float )llvm_cbe_tmp__22;   /* for PHI node */
    llvm_cbe_tmp__14__PHI_TEMPORARY = (float )llvm_cbe_tmp__27;   /* for PHI node */
    llvm_cbe_tmp__15__PHI_TEMPORARY = (float )llvm_cbe_tmp__28;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph;
  }

  } while (1); /* end of syntactic loop '.lr.ph' */
llvm_cbe__2e__crit_edge:
if (AESL_DEBUG_TRACE)
printf("\n  %%.lcssa4 = phi float [ 0x3FF453F7C0000000, %%.preheader ], [ %%22, %%.lr.ph ], [ 0x3FF453F7C0000000, %%0  for 0x%I64xth hint within @MAC  --> \n", ++aesl_llvm_cbe__2e_lcssa4_count);
  llvm_cbe__2e_lcssa4 = (float )llvm_cbe__2e_lcssa4__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n.lcssa4 = %f",llvm_cbe__2e_lcssa4);
printf("\n = %f",0x1.453f7cp0);
printf("\n = %f",llvm_cbe_tmp__19);
printf("\n = %f",0x1.453f7cp0);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%.lcssa = phi float [ 0.000000e+00, %%.preheader ], [ %%25, %%.lr.ph ], [ 0.000000e+00, %%0  for 0x%I64xth hint within @MAC  --> \n", ++aesl_llvm_cbe__2e_lcssa_count);
  llvm_cbe__2e_lcssa = (float )llvm_cbe__2e_lcssa__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n.lcssa = %f",llvm_cbe__2e_lcssa);
printf("\n = %f",0x0p0);
printf("\n = %f",llvm_cbe_tmp__22);
printf("\n = %f",0x0p0);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = fdiv float %%.lcssa, %%.lcssa4, !dbg !5 for 0x%I64xth hint within @MAC  --> \n", ++aesl_llvm_cbe_144_count);
  llvm_cbe_tmp__30 = (float )((float )(llvm_cbe__2e_lcssa / llvm_cbe__2e_lcssa4));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__30, *(int*)(&llvm_cbe_tmp__30));
  if (AESL_DEBUG_TRACE)
      printf("\nEND @MAC}\n");
  return llvm_cbe_tmp__30;
}


float MAC_hw_stub(float llvm_cbe_a, float llvm_cbe_b, float llvm_cbe_c, signed int llvm_cbe_j) {
  static  unsigned long long aesl_llvm_cbe_148_count = 0;
  static  unsigned long long aesl_llvm_cbe_149_count = 0;
  static  unsigned long long aesl_llvm_cbe_150_count = 0;
  static  unsigned long long aesl_llvm_cbe_151_count = 0;
  static  unsigned long long aesl_llvm_cbe_152_count = 0;
  static  unsigned long long aesl_llvm_cbe_153_count = 0;
  static  unsigned long long aesl_llvm_cbe_154_count = 0;
  static  unsigned long long aesl_llvm_cbe_155_count = 0;
  static  unsigned long long aesl_llvm_cbe_156_count = 0;
  float llvm_cbe_tmp__31;
  static  unsigned long long aesl_llvm_cbe_157_count = 0;
  static  unsigned long long aesl_llvm_cbe_158_count = 0;
  static  unsigned long long aesl_llvm_cbe_159_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @MAC_hw_stub\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = tail call float @MAC(float %%a, float %%b, float %%c, i32 %%j), !dbg !3 for 0x%I64xth hint within @MAC_hw_stub  --> \n", ++aesl_llvm_cbe_156_count);
  llvm_cbe_tmp__31 = (float ) /*tail*/ MAC(llvm_cbe_a, llvm_cbe_b, llvm_cbe_c, llvm_cbe_j);
if (AESL_DEBUG_TRACE) {
printf("\nArgument a = %f,  0x%x",llvm_cbe_a, *(int*)(&llvm_cbe_a));
printf("\nArgument b = %f,  0x%x",llvm_cbe_b, *(int*)(&llvm_cbe_b));
printf("\nArgument c = %f,  0x%x",llvm_cbe_c, *(int*)(&llvm_cbe_c));
printf("\nArgument j = 0x%X",llvm_cbe_j);
printf("\nReturn  = %f",llvm_cbe_tmp__31);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @MAC_hw_stub}\n");
  return llvm_cbe_tmp__31;
}


float apatb_MAC_sw(float llvm_cbe_a, float llvm_cbe_b, float llvm_cbe_c, signed int llvm_cbe_j) {
  static  unsigned long long aesl_llvm_cbe_160_count = 0;
  static  unsigned long long aesl_llvm_cbe_161_count = 0;
  static  unsigned long long aesl_llvm_cbe_162_count = 0;
  static  unsigned long long aesl_llvm_cbe_163_count = 0;
  static  unsigned long long aesl_llvm_cbe_164_count = 0;
  static  unsigned long long aesl_llvm_cbe_165_count = 0;
  static  unsigned long long aesl_llvm_cbe_166_count = 0;
  static  unsigned long long aesl_llvm_cbe_167_count = 0;
  static  unsigned long long aesl_llvm_cbe_168_count = 0;
  float llvm_cbe_tmp__32;
  static  unsigned long long aesl_llvm_cbe_169_count = 0;
  static  unsigned long long aesl_llvm_cbe_170_count = 0;
  static  unsigned long long aesl_llvm_cbe_171_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @apatb_MAC_sw\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = tail call float @apatb_MAC_ir(float %%a, float %%b, float %%c, i32 %%j) nounwind, !dbg !3 for 0x%I64xth hint within @apatb_MAC_sw  --> \n", ++aesl_llvm_cbe_168_count);
  llvm_cbe_tmp__32 = (float ) /*tail*/ apatb_MAC_ir(llvm_cbe_a, llvm_cbe_b, llvm_cbe_c, llvm_cbe_j);
if (AESL_DEBUG_TRACE) {
printf("\nArgument a = %f,  0x%x",llvm_cbe_a, *(int*)(&llvm_cbe_a));
printf("\nArgument b = %f,  0x%x",llvm_cbe_b, *(int*)(&llvm_cbe_b));
printf("\nArgument c = %f,  0x%x",llvm_cbe_c, *(int*)(&llvm_cbe_c));
printf("\nArgument j = 0x%X",llvm_cbe_j);
printf("\nReturn  = %f",llvm_cbe_tmp__32);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @apatb_MAC_sw}\n");
  return llvm_cbe_tmp__32;
}

