#ifndef _FP_CUST_H_
#define _FP_CUST_H_

#include "system.h"

#define FP_ADD_OPCODE 0
#define FP_SUB_OPCODE 1
#define FP_MUL_OPCODE 2

#define FP_ADD_CI(a, b) __builtin_custom_fnff (ALT_CI_FP_CUST_INSN_0_N + (FP_ADD_OPCODE & ALT_CI_FP_CUST_INSN_0_N_MASK), (a), (b));
#define FP_SUB_CI(a, b) __builtin_custom_fnff (ALT_CI_FP_CUST_INSN_0_N + (FP_SUB_OPCODE & ALT_CI_FP_CUST_INSN_0_N_MASK), (a), (b));
#define FP_MUL_CI(a, b) __builtin_custom_fnff (ALT_CI_FP_CUST_INSN_0_N + (FP_MUL_OPCODE & ALT_CI_FP_CUST_INSN_0_N_MASK), (a), (b));

#endif _FP_CUST_H_
