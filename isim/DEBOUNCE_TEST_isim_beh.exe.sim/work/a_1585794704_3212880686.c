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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/Namisslo_Koegler/HDL_Praktikum/DEBOUNCE.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1585794704_3212880686_p_0(char *t0)
{
    char t30[16];
    char t32[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned int t8;
    char *t9;
    unsigned char t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    int t17;
    int t18;
    int t19;
    int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    int t24;
    int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t31;
    char *t33;
    char *t34;
    int t35;
    unsigned int t36;
    int t37;
    int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;

LAB0:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3312);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(28, ng0);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 5709);
    t4 = (t0 + 3456);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 5U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(32, ng0);
    t1 = (t0 + 5714);
    *((int *)t1) = 0;
    t3 = (t0 + 5718);
    *((int *)t3) = 4;
    t17 = 0;
    t18 = 4;

LAB10:    if (t17 <= t18)
        goto LAB11;

LAB13:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(29, ng0);
    t3 = xsi_get_transient_memory(25U);
    memset(t3, 0, 25U);
    t7 = t3;
    t8 = (5U * 1U);
    t9 = t7;
    memset(t9, (unsigned char)2, t8);
    t10 = (t8 != 0);
    if (t10 == 1)
        goto LAB8;

LAB9:    t12 = (t0 + 3392);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t3, 25U);
    xsi_driver_first_trans_fast(t12);
    goto LAB6;

LAB8:    t11 = (25U / t8);
    xsi_mem_set_data(t7, t7, t8, t11);
    goto LAB9;

LAB11:    xsi_set_current_line(33, ng0);
    t4 = (t0 + 1192U);
    t7 = *((char **)t4);
    t2 = *((unsigned char *)t7);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB14;

LAB16:
LAB15:
LAB12:    t1 = (t0 + 5714);
    t17 = *((int *)t1);
    t3 = (t0 + 5718);
    t18 = *((int *)t3);
    if (t17 == t18)
        goto LAB13;

LAB28:    t19 = (t17 + 1);
    t17 = t19;
    t4 = (t0 + 5714);
    *((int *)t4) = t17;
    goto LAB10;

LAB14:    xsi_set_current_line(34, ng0);
    t4 = (t0 + 1512U);
    t9 = *((char **)t4);
    t4 = (t0 + 5714);
    t19 = *((int *)t4);
    t20 = (t19 - 4);
    t8 = (t20 * -1);
    xsi_vhdl_check_range_of_index(4, 0, -1, *((int *)t4));
    t11 = (1U * t8);
    t21 = (0 + t11);
    t12 = (t9 + t21);
    t6 = *((unsigned char *)t12);
    t13 = (t0 + 1832U);
    t14 = *((char **)t13);
    t22 = (4 - 4);
    t23 = (t22 * 1U);
    t13 = (t0 + 5714);
    t24 = *((int *)t13);
    t25 = (t24 - 0);
    t26 = (t25 * 1);
    xsi_vhdl_check_range_of_index(0, 4, 1, *((int *)t13));
    t27 = (5U * t26);
    t28 = (0 + t27);
    t29 = (t28 + t23);
    t15 = (t14 + t29);
    t31 = ((IEEE_P_2592010699) + 4024);
    t33 = (t32 + 0U);
    t34 = (t33 + 0U);
    *((int *)t34) = 4;
    t34 = (t33 + 4U);
    *((int *)t34) = 1;
    t34 = (t33 + 8U);
    *((int *)t34) = -1;
    t35 = (1 - 4);
    t36 = (t35 * -1);
    t36 = (t36 + 1);
    t34 = (t33 + 12U);
    *((unsigned int *)t34) = t36;
    t16 = xsi_base_array_concat(t16, t30, t31, (char)99, t6, (char)97, t15, t32, (char)101);
    t36 = (1U + 4U);
    t10 = (5U != t36);
    if (t10 == 1)
        goto LAB17;

LAB18:    t34 = (t0 + 5714);
    t37 = *((int *)t34);
    t38 = (t37 - 0);
    t39 = (t38 * 1);
    t40 = (5U * t39);
    t41 = (0U + t40);
    t42 = (t0 + 3392);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    t45 = (t44 + 56U);
    t46 = *((char **)t45);
    memcpy(t46, t16, 5U);
    xsi_driver_first_trans_delta(t42, t41, 5U, 0LL);
    xsi_set_current_line(35, ng0);
    t1 = (t0 + 1832U);
    t3 = *((char **)t1);
    t1 = (t0 + 5714);
    t19 = *((int *)t1);
    t20 = (t19 - 0);
    t8 = (t20 * 1);
    xsi_vhdl_check_range_of_index(0, 4, 1, *((int *)t1));
    t11 = (5U * t8);
    t21 = (0 + t11);
    t4 = (t3 + t21);
    t7 = (t0 + 5722);
    t2 = 1;
    if (5U == 5U)
        goto LAB22;

LAB23:    t2 = 0;

LAB24:    if (t2 != 0)
        goto LAB19;

LAB21:
LAB20:    goto LAB15;

LAB17:    xsi_size_not_matching(5U, t36, 0);
    goto LAB18;

LAB19:    xsi_set_current_line(36, ng0);
    t14 = (t0 + 5714);
    t24 = *((int *)t14);
    t25 = (t24 - 4);
    t23 = (t25 * -1);
    t26 = (1 * t23);
    t27 = (0U + t26);
    t15 = (t0 + 3456);
    t16 = (t15 + 56U);
    t31 = *((char **)t16);
    t33 = (t31 + 56U);
    t34 = *((char **)t33);
    *((unsigned char *)t34) = (unsigned char)3;
    xsi_driver_first_trans_delta(t15, t27, 1, 0LL);
    goto LAB20;

LAB22:    t22 = 0;

LAB25:    if (t22 < 5U)
        goto LAB26;
    else
        goto LAB24;

LAB26:    t12 = (t4 + t22);
    t13 = (t7 + t22);
    if (*((unsigned char *)t12) != *((unsigned char *)t13))
        goto LAB23;

LAB27:    t22 = (t22 + 1);
    goto LAB25;

}


extern void work_a_1585794704_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1585794704_3212880686_p_0};
	xsi_register_didat("work_a_1585794704_3212880686", "isim/DEBOUNCE_TEST_isim_beh.exe.sim/work/a_1585794704_3212880686.didat");
	xsi_register_executes(pe);
}
