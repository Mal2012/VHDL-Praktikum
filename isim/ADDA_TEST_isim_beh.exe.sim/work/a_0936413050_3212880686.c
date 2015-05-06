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
static const char *ng0 = "C:/Users/Malcolm/Documents/GitHub/VHDL-Praktikum/ADDA.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

unsigned char ieee_p_1242562249_sub_1686746573_1035706684(char *, int , char *, char *);
unsigned char ieee_p_1242562249_sub_1781471956_1035706684(char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_1781507893_1035706684(char *, char *, char *, int );
char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0936413050_3212880686_p_0(char *t0)
{
    char t13[16];
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
    char *t11;
    char *t12;
    unsigned int t14;
    unsigned int t15;
    int t16;
    unsigned int t17;
    unsigned char t18;
    unsigned char t19;
    int t20;
    int t21;
    int t22;
    int t23;
    int t24;
    int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;

LAB0:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 568U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4744);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(44, ng0);
    t3 = (t0 + 776U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 2064U);
    t3 = *((char **)t1);
    t1 = (t0 + 8720U);
    t4 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t13, t3, t1, 1);
    t7 = (t13 + 12U);
    t14 = *((unsigned int *)t7);
    t15 = (1U * t14);
    t2 = (9U != t15);
    if (t2 == 1)
        goto LAB8;

LAB9:    t8 = (t0 + 4828);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 9U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 2064U);
    t3 = *((char **)t1);
    t1 = (t0 + 8720U);
    t2 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t3, t1, 159);
    if (t2 != 0)
        goto LAB10;

LAB12:
LAB11:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 2064U);
    t3 = *((char **)t1);
    t1 = (t0 + 8720U);
    t5 = ieee_p_1242562249_sub_1686746573_1035706684(IEEE_P_1242562249, 3, t3, t1);
    if (t5 == 1)
        goto LAB16;

LAB17:    t2 = (unsigned char)0;

LAB18:    if (t2 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 4972);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t7 = (t4 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB14:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 2340U);
    t3 = *((char **)t1);
    t5 = *((unsigned char *)t3);
    t6 = (t5 == (unsigned char)2);
    if (t6 == 1)
        goto LAB22;

LAB23:    t2 = (unsigned char)0;

LAB24:    if (t2 != 0)
        goto LAB19;

LAB21:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 4864);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t7 = (t4 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB20:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 2064U);
    t3 = *((char **)t1);
    t1 = (t0 + 8720U);
    t2 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t3, t1, 128);
    if (t2 != 0)
        goto LAB30;

LAB32:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 4936);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t7 = (t4 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB31:
LAB6:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 2064U);
    t3 = *((char **)t1);
    t16 = (2 - 8);
    t14 = (t16 * -1);
    t15 = (1U * t14);
    t17 = (0 + t15);
    t1 = (t3 + t17);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 4900);
    t7 = (t4 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t2;
    xsi_driver_first_trans_fast(t4);
    goto LAB3;

LAB5:    xsi_set_current_line(45, ng0);
    t3 = xsi_get_transient_memory(9U);
    memset(t3, 0, 9U);
    t7 = t3;
    memset(t7, (unsigned char)2, 9U);
    t8 = (t0 + 4828);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 9U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(46, ng0);
    t1 = (t0 + 4864);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t7 = (t4 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(47, ng0);
    t1 = (t0 + 4900);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t7 = (t4 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(48, ng0);
    t1 = (t0 + 4936);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t7 = (t4 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 4972);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t7 = (t4 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(50, ng0);
    t1 = xsi_get_transient_memory(12U);
    memset(t1, 0, 12U);
    t3 = t1;
    memset(t3, (unsigned char)2, 12U);
    t4 = (t0 + 5008);
    t7 = (t4 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 12U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(51, ng0);
    t1 = xsi_get_transient_memory(12U);
    memset(t1, 0, 12U);
    t3 = t1;
    memset(t3, (unsigned char)2, 12U);
    t4 = (t0 + 5044);
    t7 = (t4 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 12U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(52, ng0);
    t1 = xsi_get_transient_memory(12U);
    memset(t1, 0, 12U);
    t3 = t1;
    memset(t3, (unsigned char)2, 12U);
    t4 = (t0 + 5080);
    t7 = (t4 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 12U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(53, ng0);
    t1 = xsi_get_transient_memory(12U);
    memset(t1, 0, 12U);
    t3 = t1;
    memset(t3, (unsigned char)2, 12U);
    t4 = (t0 + 5116);
    t7 = (t4 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 12U);
    xsi_driver_first_trans_fast(t4);
    goto LAB6;

LAB8:    xsi_size_not_matching(9U, t15, 0);
    goto LAB9;

LAB10:    xsi_set_current_line(57, ng0);
    t4 = xsi_get_transient_memory(9U);
    memset(t4, 0, 9U);
    t7 = t4;
    memset(t7, (unsigned char)2, 9U);
    t8 = (t0 + 4828);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 9U);
    xsi_driver_first_trans_fast(t8);
    goto LAB11;

LAB13:    xsi_set_current_line(60, ng0);
    t8 = (t0 + 4972);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t8);
    goto LAB14;

LAB16:    t4 = (t0 + 2064U);
    t7 = *((char **)t4);
    t4 = (t0 + 8720U);
    t6 = ieee_p_1242562249_sub_1781471956_1035706684(IEEE_P_1242562249, t7, t4, 132);
    t2 = t6;
    goto LAB18;

LAB19:    xsi_set_current_line(65, ng0);
    t7 = (t0 + 4864);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 868U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 5080);
    t4 = (t1 + 32U);
    t7 = *((char **)t4);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t2;
    xsi_driver_first_trans_delta(t1, 11U, 1, 0LL);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 960U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 5044);
    t4 = (t1 + 32U);
    t7 = *((char **)t4);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t2;
    xsi_driver_first_trans_delta(t1, 11U, 1, 0LL);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 8980);
    *((int *)t1) = 1;
    t3 = (t0 + 8984);
    *((int *)t3) = 11;
    t16 = 1;
    t20 = 11;

LAB25:    if (t16 <= t20)
        goto LAB26;

LAB28:    goto LAB20;

LAB22:    t1 = (t0 + 2064U);
    t4 = *((char **)t1);
    t16 = (2 - 8);
    t14 = (t16 * -1);
    t15 = (1U * t14);
    t17 = (0 + t15);
    t1 = (t4 + t17);
    t18 = *((unsigned char *)t1);
    t19 = (t18 == (unsigned char)3);
    t2 = t19;
    goto LAB24;

LAB26:    xsi_set_current_line(69, ng0);
    t4 = (t0 + 2708U);
    t7 = *((char **)t4);
    t4 = (t0 + 8980);
    t21 = *((int *)t4);
    t22 = (t21 - 1);
    t23 = (t22 - 11);
    t14 = (t23 * -1);
    xsi_vhdl_check_range_of_index(11, 0, -1, t22);
    t15 = (1U * t14);
    t17 = (0 + t15);
    t8 = (t7 + t17);
    t2 = *((unsigned char *)t8);
    t9 = (t0 + 8980);
    t24 = *((int *)t9);
    t25 = (t24 - 11);
    t26 = (t25 * -1);
    t27 = (1 * t26);
    t28 = (0U + t27);
    t10 = (t0 + 5080);
    t11 = (t10 + 32U);
    t12 = *((char **)t11);
    t29 = (t12 + 40U);
    t30 = *((char **)t29);
    *((unsigned char *)t30) = t2;
    xsi_driver_first_trans_delta(t10, t28, 1, 0LL);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 2892U);
    t3 = *((char **)t1);
    t1 = (t0 + 8980);
    t21 = *((int *)t1);
    t22 = (t21 - 1);
    t23 = (t22 - 11);
    t14 = (t23 * -1);
    xsi_vhdl_check_range_of_index(11, 0, -1, t22);
    t15 = (1U * t14);
    t17 = (0 + t15);
    t4 = (t3 + t17);
    t2 = *((unsigned char *)t4);
    t7 = (t0 + 8980);
    t24 = *((int *)t7);
    t25 = (t24 - 11);
    t26 = (t25 * -1);
    t27 = (1 * t26);
    t28 = (0U + t27);
    t8 = (t0 + 5044);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t2;
    xsi_driver_first_trans_delta(t8, t28, 1, 0LL);

LAB27:    t1 = (t0 + 8980);
    t16 = *((int *)t1);
    t3 = (t0 + 8984);
    t20 = *((int *)t3);
    if (t16 == t20)
        goto LAB28;

LAB29:    t21 = (t16 + 1);
    t16 = t21;
    t4 = (t0 + 8980);
    *((int *)t4) = t16;
    goto LAB25;

LAB30:    xsi_set_current_line(77, ng0);
    t4 = (t0 + 4936);
    t7 = (t4 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 2708U);
    t3 = *((char **)t1);
    t1 = (t0 + 5116);
    t4 = (t1 + 32U);
    t7 = *((char **)t4);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 12U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(79, ng0);
    t1 = (t0 + 2892U);
    t3 = *((char **)t1);
    t1 = (t0 + 5008);
    t4 = (t1 + 32U);
    t7 = *((char **)t4);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 12U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(80, ng0);
    t1 = xsi_get_transient_memory(12U);
    memset(t1, 0, 12U);
    t3 = t1;
    memset(t3, (unsigned char)2, 12U);
    t4 = (t0 + 5044);
    t7 = (t4 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 12U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(81, ng0);
    t1 = xsi_get_transient_memory(12U);
    memset(t1, 0, 12U);
    t3 = t1;
    memset(t3, (unsigned char)2, 12U);
    t4 = (t0 + 5080);
    t7 = (t4 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 12U);
    xsi_driver_first_trans_fast(t4);
    goto LAB31;

}

static void work_a_0936413050_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(90, ng0);

LAB3:    t1 = (t0 + 2064U);
    t2 = *((char **)t1);
    t3 = (2 - 8);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 5152);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 4752);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0936413050_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(91, ng0);

LAB3:    t1 = (t0 + 2432U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5188);
    t4 = (t1 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 4760);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0936413050_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(92, ng0);

LAB3:    t1 = (t0 + 2984U);
    t2 = *((char **)t1);
    t1 = (t0 + 5224);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 12U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4768);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0936413050_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(93, ng0);

LAB3:    t1 = (t0 + 2800U);
    t2 = *((char **)t1);
    t1 = (t0 + 5260);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 12U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4776);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0936413050_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(94, ng0);

LAB3:    t1 = (t0 + 2248U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5296);
    t4 = (t1 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 4784);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0936413050_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0936413050_3212880686_p_0,(void *)work_a_0936413050_3212880686_p_1,(void *)work_a_0936413050_3212880686_p_2,(void *)work_a_0936413050_3212880686_p_3,(void *)work_a_0936413050_3212880686_p_4,(void *)work_a_0936413050_3212880686_p_5};
	xsi_register_didat("work_a_0936413050_3212880686", "isim/ADDA_TEST_isim_beh.exe.sim/work/a_0936413050_3212880686.didat");
	xsi_register_executes(pe);
}
