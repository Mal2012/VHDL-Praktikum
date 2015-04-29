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
static const char *ng0 = "E:/Namisslo_Koegler/HDL_Praktikum/ADDA.vhd";
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

LAB0:    xsi_set_current_line(34, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 6296);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(36, ng0);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 3592U);
    t3 = *((char **)t1);
    t1 = (t0 + 9588U);
    t4 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t13, t3, t1, 1);
    t7 = (t13 + 12U);
    t14 = *((unsigned int *)t7);
    t15 = (1U * t14);
    t2 = (9U != t15);
    if (t2 == 1)
        goto LAB8;

LAB9:    t8 = (t0 + 6424);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 9U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(43, ng0);
    t1 = (t0 + 3592U);
    t3 = *((char **)t1);
    t1 = (t0 + 9588U);
    t2 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t3, t1, 159);
    if (t2 != 0)
        goto LAB10;

LAB12:
LAB11:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 3592U);
    t3 = *((char **)t1);
    t1 = (t0 + 9588U);
    t5 = ieee_p_1242562249_sub_1686746573_1035706684(IEEE_P_1242562249, 5, t3, t1);
    if (t5 == 1)
        goto LAB16;

LAB17:    t2 = (unsigned char)0;

LAB18:    if (t2 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 6680);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB14:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 3912U);
    t3 = *((char **)t1);
    t5 = *((unsigned char *)t3);
    t6 = (t5 == (unsigned char)2);
    if (t6 == 1)
        goto LAB22;

LAB23:    t2 = (unsigned char)0;

LAB24:    if (t2 != 0)
        goto LAB19;

LAB21:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 6488);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB20:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 3592U);
    t3 = *((char **)t1);
    t1 = (t0 + 9588U);
    t2 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t3, t1, 128);
    if (t2 != 0)
        goto LAB25;

LAB27:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 6616);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB26:
LAB6:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 3592U);
    t3 = *((char **)t1);
    t16 = (2 - 8);
    t14 = (t16 * -1);
    t15 = (1U * t14);
    t17 = (0 + t15);
    t1 = (t3 + t17);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 6552);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t2;
    xsi_driver_first_trans_fast(t4);
    goto LAB3;

LAB5:    xsi_set_current_line(37, ng0);
    t3 = xsi_get_transient_memory(9U);
    memset(t3, 0, 9U);
    t7 = t3;
    memset(t7, (unsigned char)2, 9U);
    t8 = (t0 + 6424);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 9U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(38, ng0);
    t1 = (t0 + 6488);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(39, ng0);
    t1 = (t0 + 6552);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(40, ng0);
    t1 = (t0 + 6616);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB8:    xsi_size_not_matching(9U, t15, 0);
    goto LAB9;

LAB10:    xsi_set_current_line(44, ng0);
    t4 = xsi_get_transient_memory(9U);
    memset(t4, 0, 9U);
    t7 = t4;
    memset(t7, (unsigned char)2, 9U);
    t8 = (t0 + 6424);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 9U);
    xsi_driver_first_trans_fast(t8);
    goto LAB11;

LAB13:    xsi_set_current_line(47, ng0);
    t8 = (t0 + 6680);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t8);
    goto LAB14;

LAB16:    t4 = (t0 + 3592U);
    t7 = *((char **)t4);
    t4 = (t0 + 9588U);
    t6 = ieee_p_1242562249_sub_1781471956_1035706684(IEEE_P_1242562249, t7, t4, 132);
    t2 = t6;
    goto LAB18;

LAB19:    xsi_set_current_line(52, ng0);
    t7 = (t0 + 6488);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast(t7);
    goto LAB20;

LAB22:    t1 = (t0 + 3592U);
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

LAB25:    xsi_set_current_line(57, ng0);
    t4 = (t0 + 6616);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t4);
    goto LAB26;

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

LAB0:    xsi_set_current_line(66, ng0);

LAB3:    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t3 = (2 - 8);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 6744);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 6312);
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

LAB0:    xsi_set_current_line(67, ng0);

LAB3:    t1 = (t0 + 4072U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6808);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 6328);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0936413050_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(68, ng0);

LAB3:    t1 = (t0 + 3752U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6872);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 6344);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0936413050_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0936413050_3212880686_p_0,(void *)work_a_0936413050_3212880686_p_1,(void *)work_a_0936413050_3212880686_p_2,(void *)work_a_0936413050_3212880686_p_3};
	xsi_register_didat("work_a_0936413050_3212880686", "isim/ADDA_TEST_isim_beh.exe.sim/work/a_0936413050_3212880686.didat");
	xsi_register_executes(pe);
}
