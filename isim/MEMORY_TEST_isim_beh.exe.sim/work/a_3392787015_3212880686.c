/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Malcolm/Documents/GitHub/VHDL-Praktikum/MEMORY.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

unsigned char ieee_p_1242562249_sub_1781507893_1035706684(char *, char *, char *, int );
char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3392787015_3212880686_p_0(char *t0)
{
    char t25[16];
    char t26[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    char *t31;
    static char *nl0[] = {&&LAB9, &&LAB10, &&LAB11};

LAB0:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 568U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3656);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(69, ng0);
    t3 = (t0 + 776U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 2064U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (char *)((nl0) + t2);
    goto **((char **)t1);

LAB5:    xsi_set_current_line(70, ng0);
    t3 = (t0 + 3700);
    t7 = (t3 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 3736);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t7 = (t4 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 3772);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t7 = (t4 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 3808);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t7 = (t4 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 3844);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t7 = (t4 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 3880);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t7 = (t4 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(76, ng0);
    t1 = xsi_get_transient_memory(23U);
    memset(t1, 0, 23U);
    t3 = t1;
    memset(t3, (unsigned char)2, 23U);
    t4 = (t0 + 3916);
    t7 = (t4 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 23U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(77, ng0);
    t1 = xsi_get_transient_memory(23U);
    memset(t1, 0, 23U);
    t3 = t1;
    memset(t3, (unsigned char)2, 23U);
    t4 = (t0 + 3952);
    t7 = (t4 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 23U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(78, ng0);
    t1 = xsi_get_transient_memory(23U);
    memset(t1, 0, 23U);
    t3 = t1;
    memset(t3, (unsigned char)2, 23U);
    t4 = (t0 + 3988);
    t7 = (t4 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 23U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(79, ng0);
    t1 = xsi_get_transient_memory(12U);
    memset(t1, 0, 12U);
    t3 = t1;
    memset(t3, (unsigned char)2, 12U);
    t4 = (t0 + 4024);
    t7 = (t4 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 12U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(80, ng0);
    t1 = xsi_get_transient_memory(12U);
    memset(t1, 0, 12U);
    t3 = t1;
    memset(t3, (unsigned char)2, 12U);
    t4 = (t0 + 4060);
    t7 = (t4 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 12U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(81, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t3 = t1;
    memset(t3, (unsigned char)2, 16U);
    t4 = (t0 + 4096);
    t7 = (t4 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 16U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(82, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t3 = t1;
    memset(t3, (unsigned char)2, 8U);
    t4 = (t0 + 4132);
    t7 = (t4 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(83, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t3 = t1;
    memset(t3, (unsigned char)2, 8U);
    t4 = (t0 + 4168);
    t7 = (t4 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);

LAB6:    goto LAB3;

LAB8:    goto LAB6;

LAB9:    xsi_set_current_line(89, ng0);
    t4 = (t0 + 1604U);
    t7 = *((char **)t4);
    t11 = *((unsigned char *)t7);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 1)
        goto LAB18;

LAB19:    t6 = (unsigned char)0;

LAB20:    if (t6 == 1)
        goto LAB15;

LAB16:    t5 = (unsigned char)0;

LAB17:    if (t5 != 0)
        goto LAB12;

LAB14:
LAB13:    xsi_set_current_line(95, ng0);
    t1 = (t0 + 1696U);
    t3 = *((char **)t1);
    t6 = *((unsigned char *)t3);
    t11 = (t6 == (unsigned char)3);
    if (t11 == 1)
        goto LAB27;

LAB28:    t5 = (unsigned char)0;

LAB29:    if (t5 == 1)
        goto LAB24;

LAB25:    t2 = (unsigned char)0;

LAB26:    if (t2 != 0)
        goto LAB21;

LAB23:
LAB22:    goto LAB8;

LAB10:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 2524U);
    t3 = *((char **)t1);
    t21 = (0 - 22);
    t22 = (t21 * -1);
    t23 = (1U * t22);
    t24 = (0 + t23);
    t1 = (t3 + t24);
    t2 = *((unsigned char *)t1);
    t5 = (t2 == (unsigned char)2);
    if (t5 != 0)
        goto LAB30;

LAB32:    xsi_set_current_line(104, ng0);
    t1 = (t0 + 7712);
    t4 = (t0 + 2156U);
    t7 = *((char **)t4);
    t8 = ((IEEE_P_2592010699) + 2332);
    t9 = (t26 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 3;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t21 = (3 - 0);
    t22 = (t21 * 1);
    t22 = (t22 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t22;
    t10 = (t0 + 7424U);
    t4 = xsi_base_array_concat(t4, t25, t8, (char)97, t1, t26, (char)97, t7, t10, (char)101);
    t22 = (4U + 12U);
    t2 = (16U != t22);
    if (t2 == 1)
        goto LAB35;

LAB36:    t17 = (t0 + 4096);
    t18 = (t17 + 32U);
    t19 = *((char **)t18);
    t20 = (t19 + 40U);
    t29 = *((char **)t20);
    memcpy(t29, t4, 16U);
    xsi_driver_first_trans_fast_port(t17);

LAB31:    xsi_set_current_line(106, ng0);
    t1 = (t0 + 2524U);
    t3 = *((char **)t1);
    t1 = (t0 + 3916);
    t4 = (t1 + 32U);
    t7 = *((char **)t4);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 23U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(108, ng0);
    t1 = (t0 + 3736);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t7 = (t4 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(109, ng0);
    t1 = (t0 + 2708U);
    t3 = *((char **)t1);
    t1 = (t0 + 7520U);
    t5 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t3, t1, 1);
    if (t5 == 1)
        goto LAB40;

LAB41:    t4 = (t0 + 2708U);
    t7 = *((char **)t4);
    t4 = (t0 + 7520U);
    t6 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t7, t4, 82);
    t2 = t6;

LAB42:    if (t2 != 0)
        goto LAB37;

LAB39:
LAB38:    xsi_set_current_line(113, ng0);
    t1 = (t0 + 2708U);
    t3 = *((char **)t1);
    t1 = (t0 + 7520U);
    t5 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t3, t1, 80);
    if (t5 == 1)
        goto LAB46;

LAB47:    t4 = (t0 + 2708U);
    t7 = *((char **)t4);
    t4 = (t0 + 7520U);
    t6 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t7, t4, 161);
    t2 = t6;

LAB48:    if (t2 != 0)
        goto LAB43;

LAB45:
LAB44:    xsi_set_current_line(119, ng0);
    t1 = (t0 + 2708U);
    t3 = *((char **)t1);
    t1 = (t0 + 7520U);
    t4 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t25, t3, t1, 1);
    t7 = (t25 + 12U);
    t22 = *((unsigned int *)t7);
    t23 = (1U * t22);
    t2 = (8U != t23);
    if (t2 == 1)
        goto LAB51;

LAB52:    t8 = (t0 + 4132);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t17 = (t10 + 40U);
    t18 = *((char **)t17);
    memcpy(t18, t4, 8U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(121, ng0);
    t1 = (t0 + 2708U);
    t3 = *((char **)t1);
    t1 = (t0 + 7520U);
    t2 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t3, t1, 162);
    if (t2 != 0)
        goto LAB53;

LAB55:
LAB54:    goto LAB8;

LAB11:    xsi_set_current_line(129, ng0);
    t1 = (t0 + 2616U);
    t3 = *((char **)t1);
    t1 = (t0 + 3916);
    t4 = (t1 + 32U);
    t7 = *((char **)t4);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 23U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(131, ng0);
    t1 = (t0 + 3736);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t7 = (t4 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(132, ng0);
    t1 = (t0 + 2800U);
    t3 = *((char **)t1);
    t1 = (t0 + 7536U);
    t5 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t3, t1, 0);
    if (t5 == 1)
        goto LAB59;

LAB60:    t4 = (t0 + 2800U);
    t7 = *((char **)t4);
    t4 = (t0 + 7536U);
    t6 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t7, t4, 81);
    t2 = t6;

LAB61:    if (t2 != 0)
        goto LAB56;

LAB58:
LAB57:    xsi_set_current_line(136, ng0);
    t1 = (t0 + 2800U);
    t3 = *((char **)t1);
    t1 = (t0 + 7536U);
    t5 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t3, t1, 80);
    if (t5 == 1)
        goto LAB65;

LAB66:    t4 = (t0 + 2800U);
    t7 = *((char **)t4);
    t4 = (t0 + 7536U);
    t6 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t7, t4, 161);
    t2 = t6;

LAB67:    if (t2 != 0)
        goto LAB62;

LAB64:
LAB63:    xsi_set_current_line(148, ng0);
    t1 = (t0 + 2800U);
    t3 = *((char **)t1);
    t1 = (t0 + 7536U);
    t4 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t25, t3, t1, 1);
    t7 = (t25 + 12U);
    t22 = *((unsigned int *)t7);
    t23 = (1U * t22);
    t2 = (8U != t23);
    if (t2 == 1)
        goto LAB73;

LAB74:    t8 = (t0 + 4168);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t17 = (t10 + 40U);
    t18 = *((char **)t17);
    memcpy(t18, t4, 8U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(151, ng0);
    t1 = (t0 + 2800U);
    t3 = *((char **)t1);
    t1 = (t0 + 7536U);
    t2 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t3, t1, 162);
    if (t2 != 0)
        goto LAB75;

LAB77:
LAB76:    goto LAB8;

LAB12:    xsi_set_current_line(90, ng0);
    t4 = (t0 + 1880U);
    t10 = *((char **)t4);
    t4 = (t0 + 4204);
    t17 = (t4 + 32U);
    t18 = *((char **)t17);
    t19 = (t18 + 40U);
    t20 = *((char **)t19);
    memcpy(t20, t10, 12U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(91, ng0);
    t1 = (t0 + 1420U);
    t3 = *((char **)t1);
    t1 = (t0 + 4240);
    t4 = (t1 + 32U);
    t7 = *((char **)t4);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 12U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(92, ng0);
    t1 = (t0 + 3700);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t7 = (t4 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB13;

LAB15:    t4 = (t0 + 684U);
    t9 = *((char **)t4);
    t15 = *((unsigned char *)t9);
    t16 = (t15 == (unsigned char)3);
    t5 = t16;
    goto LAB17;

LAB18:    t4 = (t0 + 1696U);
    t8 = *((char **)t4);
    t13 = *((unsigned char *)t8);
    t14 = (t13 == (unsigned char)2);
    t6 = t14;
    goto LAB20;

LAB21:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 3808);
    t8 = (t1 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t17 = *((char **)t10);
    *((unsigned char *)t17) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(97, ng0);
    t1 = (t0 + 3700);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t7 = (t4 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB22;

LAB24:    t1 = (t0 + 684U);
    t7 = *((char **)t1);
    t14 = *((unsigned char *)t7);
    t15 = (t14 == (unsigned char)3);
    t2 = t15;
    goto LAB26;

LAB27:    t1 = (t0 + 1604U);
    t4 = *((char **)t1);
    t12 = *((unsigned char *)t4);
    t13 = (t12 == (unsigned char)2);
    t5 = t13;
    goto LAB29;

LAB30:    xsi_set_current_line(102, ng0);
    t4 = (t0 + 7708);
    t8 = (t0 + 2248U);
    t9 = *((char **)t8);
    t10 = ((IEEE_P_2592010699) + 2332);
    t17 = (t26 + 0U);
    t18 = (t17 + 0U);
    *((int *)t18) = 0;
    t18 = (t17 + 4U);
    *((int *)t18) = 3;
    t18 = (t17 + 8U);
    *((int *)t18) = 1;
    t27 = (3 - 0);
    t28 = (t27 * 1);
    t28 = (t28 + 1);
    t18 = (t17 + 12U);
    *((unsigned int *)t18) = t28;
    t18 = (t0 + 7440U);
    t8 = xsi_base_array_concat(t8, t25, t10, (char)97, t4, t26, (char)97, t9, t18, (char)101);
    t28 = (4U + 12U);
    t6 = (16U != t28);
    if (t6 == 1)
        goto LAB33;

LAB34:    t19 = (t0 + 4096);
    t20 = (t19 + 32U);
    t29 = *((char **)t20);
    t30 = (t29 + 40U);
    t31 = *((char **)t30);
    memcpy(t31, t8, 16U);
    xsi_driver_first_trans_fast_port(t19);
    goto LAB31;

LAB33:    xsi_size_not_matching(16U, t28, 0);
    goto LAB34;

LAB35:    xsi_size_not_matching(16U, t22, 0);
    goto LAB36;

LAB37:    xsi_set_current_line(110, ng0);
    t8 = (t0 + 3808);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t17 = (t10 + 40U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t8);
    goto LAB38;

LAB40:    t2 = (unsigned char)1;
    goto LAB42;

LAB43:    xsi_set_current_line(114, ng0);
    t8 = (t0 + 2524U);
    t9 = *((char **)t8);
    t8 = (t0 + 7488U);
    t10 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t25, t9, t8, 1);
    t17 = (t25 + 12U);
    t22 = *((unsigned int *)t17);
    t23 = (1U * t22);
    t11 = (23U != t23);
    if (t11 == 1)
        goto LAB49;

LAB50:    t18 = (t0 + 3952);
    t19 = (t18 + 32U);
    t20 = *((char **)t19);
    t29 = (t20 + 40U);
    t30 = *((char **)t29);
    memcpy(t30, t10, 23U);
    xsi_driver_first_trans_fast(t18);
    xsi_set_current_line(115, ng0);
    t1 = (t0 + 3736);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t7 = (t4 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(116, ng0);
    t1 = (t0 + 3808);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t7 = (t4 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB44;

LAB46:    t2 = (unsigned char)1;
    goto LAB48;

LAB49:    xsi_size_not_matching(23U, t23, 0);
    goto LAB50;

LAB51:    xsi_size_not_matching(8U, t23, 0);
    goto LAB52;

LAB53:    xsi_set_current_line(122, ng0);
    t4 = xsi_get_transient_memory(8U);
    memset(t4, 0, 8U);
    t7 = t4;
    memset(t7, (unsigned char)2, 8U);
    t8 = (t0 + 4132);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t17 = (t10 + 40U);
    t18 = *((char **)t17);
    memcpy(t18, t4, 8U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(123, ng0);
    t1 = (t0 + 3700);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t7 = (t4 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB54;

LAB56:    xsi_set_current_line(133, ng0);
    t8 = (t0 + 3772);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t17 = (t10 + 40U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t8);
    goto LAB57;

LAB59:    t2 = (unsigned char)1;
    goto LAB61;

LAB62:    xsi_set_current_line(138, ng0);
    t8 = (t0 + 2616U);
    t9 = *((char **)t8);
    t21 = (0 - 22);
    t22 = (t21 * -1);
    t23 = (1U * t22);
    t24 = (0 + t23);
    t8 = (t9 + t24);
    t11 = *((unsigned char *)t8);
    t12 = (t11 == (unsigned char)2);
    if (t12 != 0)
        goto LAB68;

LAB70:    xsi_set_current_line(141, ng0);
    t1 = (t0 + 1236U);
    t3 = *((char **)t1);
    t1 = (t0 + 4312);
    t4 = (t1 + 32U);
    t7 = *((char **)t4);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 16U);
    xsi_driver_first_trans_fast(t1);

LAB69:    xsi_set_current_line(143, ng0);
    t1 = (t0 + 3736);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t7 = (t4 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(144, ng0);
    t1 = (t0 + 3772);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t7 = (t4 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(145, ng0);
    t1 = (t0 + 2616U);
    t3 = *((char **)t1);
    t1 = (t0 + 7504U);
    t4 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t25, t3, t1, 1);
    t7 = (t25 + 12U);
    t22 = *((unsigned int *)t7);
    t23 = (1U * t22);
    t2 = (23U != t23);
    if (t2 == 1)
        goto LAB71;

LAB72:    t8 = (t0 + 3988);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t17 = (t10 + 40U);
    t18 = *((char **)t17);
    memcpy(t18, t4, 23U);
    xsi_driver_first_trans_fast(t8);
    goto LAB63;

LAB65:    t2 = (unsigned char)1;
    goto LAB67;

LAB68:    xsi_set_current_line(139, ng0);
    t10 = (t0 + 1236U);
    t17 = *((char **)t10);
    t10 = (t0 + 4276);
    t18 = (t10 + 32U);
    t19 = *((char **)t18);
    t20 = (t19 + 40U);
    t29 = *((char **)t20);
    memcpy(t29, t17, 16U);
    xsi_driver_first_trans_fast(t10);
    goto LAB69;

LAB71:    xsi_size_not_matching(23U, t23, 0);
    goto LAB72;

LAB73:    xsi_size_not_matching(8U, t23, 0);
    goto LAB74;

LAB75:    xsi_set_current_line(152, ng0);
    t4 = xsi_get_transient_memory(8U);
    memset(t4, 0, 8U);
    t7 = t4;
    memset(t7, (unsigned char)2, 8U);
    t8 = (t0 + 4168);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t17 = (t10 + 40U);
    t18 = *((char **)t17);
    memcpy(t18, t4, 8U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(154, ng0);
    t1 = (t0 + 3700);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t7 = (t4 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB76;

}


extern void work_a_3392787015_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3392787015_3212880686_p_0};
	xsi_register_didat("work_a_3392787015_3212880686", "isim/MEMORY_TEST_isim_beh.exe.sim/work/a_3392787015_3212880686.didat");
	xsi_register_executes(pe);
}
