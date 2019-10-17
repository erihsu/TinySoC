#include "OV5640_1.h"
void ov5640_init_rgb(void)
{
	CAM_RES_Clr();			//?????OV5640?RST?,???
	delay_ms(20); 
	CAM_PWD_Clr();		//POWER ON
	delay_ms(5);  
	CAM_RES_Set();			//???? 
	//初始化配置
	wrOV5640Reg(0x3103,0x11);// system clock from pad,0x bit[1]
	wrOV5640Reg(0x3008,0x82);// software reset,0x bit[7]// delay 5ms

	wrOV5640Reg(0x3008,0x42);// software power down,0x bit[6]
	usleep(5000);
	wrOV5640Reg(0x3103,0x03);// system clock from PLL,0x bit[1]
	wrOV5640Reg(0x3017,0xff);// FREX,0x Vsync,0x HREF,0x PCLK,0x D[9:6] output enable
	wrOV5640Reg(0x3018,0xff);// D[5:0],0x GPIO[1:0] output enable
	wrOV5640Reg(0x3034,0x1A);// MIPI 10-bit
	wrOV5640Reg(0x3037,0x13);// PLL root divider,0x bit[4],0x PLL pre-divider,0x bit[3:0]
	wrOV5640Reg(0x3108,0x01);// PCLK root divider,0x bit[5:4],0x SCLK2x root divider,0x bit[3:2] // SCLK root divider,0x bit[1:0]
	
	wrOV5640Reg(0x3630,0x36);
	wrOV5640Reg(0x3631,0x0e);
	wrOV5640Reg(0x3632,0xe2);
	wrOV5640Reg(0x3633,0x12);
	wrOV5640Reg(0x3621,0xe0);
	wrOV5640Reg(0x3704,0xa0);
	wrOV5640Reg(0x3703,0x5a);
	wrOV5640Reg(0x3715,0x78);
	wrOV5640Reg(0x3717,0x01);
	wrOV5640Reg(0x370b,0x60);
	wrOV5640Reg(0x3705,0x1a);
	wrOV5640Reg(0x3905,0x02);
	wrOV5640Reg(0x3906,0x10);
	wrOV5640Reg(0x3901,0x0a);
	wrOV5640Reg(0x3731,0x12);
	wrOV5640Reg(0x3600,0x08);// VCM control
	wrOV5640Reg(0x3601,0x33);// VCM control
	wrOV5640Reg(0x302d,0x60);// system control
	wrOV5640Reg(0x3620,0x52);
	wrOV5640Reg(0x371b,0x20);
	wrOV5640Reg(0x471c,0x50);
	wrOV5640Reg(0x3a13,0x43);// pre-gain = 1.047x
	wrOV5640Reg(0x3a18,0x00);// gain ceiling
	wrOV5640Reg(0x3a19,0xf8);// gain ceiling = 15.5x
	wrOV5640Reg(0x3635,0x13);
	wrOV5640Reg(0x3636,0x03);
	wrOV5640Reg(0x3634,0x40);
	wrOV5640Reg(0x3622,0x01); // 50/60Hz detection     50/60Hz
	
	wrOV5640Reg(0x3c01,0x34);// Band auto,0x bit[7]
	wrOV5640Reg(0x3c04,0x28);// threshold low sum
	wrOV5640Reg(0x3c05,0x98);// threshold high sum
	wrOV5640Reg(0x3c06,0x00);// light meter 1 threshold[15:8]
	wrOV5640Reg(0x3c07,0x08);// light meter 1 threshold[7:0]
	wrOV5640Reg(0x3c08,0x00);// light meter 2 threshold[15:8]
	wrOV5640Reg(0x3c09,0x1c);// light meter 2 threshold[7:0]
	wrOV5640Reg(0x3c0a,0x9c);// sample number[15:8]
	wrOV5640Reg(0x3c0b,0x40);// sample number[7:0]
	wrOV5640Reg(0x3810,0x00);// Timing Hoffset[11:8]
	wrOV5640Reg(0x3811,0x10);// Timing Hoffset[7:0]
	wrOV5640Reg(0x3812,0x00);// Timing Voffset[10:8]
	wrOV5640Reg(0x3708,0x64);
	wrOV5640Reg(0x4001,0x02);// BLC start from line 2
	wrOV5640Reg(0x4005,0x1a);// BLC always update
	wrOV5640Reg(0x3000,0x00);// enable blocks
	wrOV5640Reg(0x3004,0xff);// enable clocks
	wrOV5640Reg(0x300e,0x58);// MIPI power down,0x DVP enable
	wrOV5640Reg(0x302e,0x00);
	//图片输出格式是rgb565
	wrOV5640Reg(0x4300,0x61);// RGB565
	wrOV5640Reg(0x501f,0x01);// ISP RGB
	
	wrOV5640Reg(0x440e,0x00);
	wrOV5640Reg(0x5000,0xa7); // Lenc on,0x raw gamma on,0x BPC on,0x WPC on,0x CIP on // AEC target
	wrOV5640Reg(0x3a0f,0x30);// stable range in high
	wrOV5640Reg(0x3a10,0x28);// stable range in low
	wrOV5640Reg(0x3a1b,0x30);// stable range out high
	wrOV5640Reg(0x3a1e,0x26);// stable range out low
	wrOV5640Reg(0x3a11,0x60);// fast zone high
	wrOV5640Reg(0x3a1f,0x14);// fast zone low// Lens correction for
	wrOV5640Reg(0x5800,0x23);
	wrOV5640Reg(0x5801,0x14);
	wrOV5640Reg(0x5802,0x0f);
	wrOV5640Reg(0x5803,0x0f);
	wrOV5640Reg(0x5804,0x12);
	wrOV5640Reg(0x5805,0x26);
	wrOV5640Reg(0x5806,0x0c);
	wrOV5640Reg(0x5807,0x08);
	wrOV5640Reg(0x5808,0x05);
	wrOV5640Reg(0x5809,0x05);
	wrOV5640Reg(0x580a,0x08);
	wrOV5640Reg(0x580b,0x0d);
	wrOV5640Reg(0x580c,0x08);
	wrOV5640Reg(0x580d,0x03);
	wrOV5640Reg(0x580e,0x00);
	wrOV5640Reg(0x580f,0x00);
	wrOV5640Reg(0x5810,0x03);
	wrOV5640Reg(0x5811,0x09);
	wrOV5640Reg(0x5812,0x07);
	wrOV5640Reg(0x5813,0x03);
	wrOV5640Reg(0x5814,0x00);
	wrOV5640Reg(0x5815,0x01);
	wrOV5640Reg(0x5816,0x03);
	wrOV5640Reg(0x5817,0x08);
	wrOV5640Reg(0x5818,0x0d);
	wrOV5640Reg(0x5819,0x08);
	wrOV5640Reg(0x581a,0x05);
	wrOV5640Reg(0x581b,0x06);
	wrOV5640Reg(0x581c,0x08);
	wrOV5640Reg(0x581d,0x0e);
	wrOV5640Reg(0x581e,0x29);
	wrOV5640Reg(0x581f,0x17);
	wrOV5640Reg(0x5820,0x11);
	wrOV5640Reg(0x5821,0x11);
	wrOV5640Reg(0x5822,0x15);
	wrOV5640Reg(0x5823,0x28);
	wrOV5640Reg(0x5824,0x46);
	wrOV5640Reg(0x5825,0x26);
	wrOV5640Reg(0x5826,0x08);
	wrOV5640Reg(0x5827,0x26);
	wrOV5640Reg(0x5828,0x64);
	wrOV5640Reg(0x5829,0x26);
	wrOV5640Reg(0x582a,0x24);
	wrOV5640Reg(0x582b,0x22);
	wrOV5640Reg(0x582c,0x24);
	wrOV5640Reg(0x582d,0x24);
	wrOV5640Reg(0x582e,0x06);
	wrOV5640Reg(0x582f,0x22);
	wrOV5640Reg(0x5830,0x40);
	wrOV5640Reg(0x5831,0x42);
	wrOV5640Reg(0x5832,0x24);
	wrOV5640Reg(0x5833,0x26);
	wrOV5640Reg(0x5834,0x24);
	wrOV5640Reg(0x5835,0x22);
	wrOV5640Reg(0x5836,0x22);
	wrOV5640Reg(0x5837,0x26);
	wrOV5640Reg(0x5838,0x44);
	wrOV5640Reg(0x5839,0x24);
	wrOV5640Reg(0x583a,0x26);
	wrOV5640Reg(0x583b,0x28);
	wrOV5640Reg(0x583c,0x42);
	wrOV5640Reg(0x583d,0xce);// lenc BR offset // AWB
	wrOV5640Reg(0x5180,0xff);// AWB B block
	wrOV5640Reg(0x5181,0xf2);// AWB control
	wrOV5640Reg(0x5182,0x00);// [7:4] max local counter,0x [3:0] max fast counter
	wrOV5640Reg(0x5183,0x14);// AWB advanced
	wrOV5640Reg(0x5184,0x25);
	wrOV5640Reg(0x5185,0x24);
	wrOV5640Reg(0x5186,0x09);
	wrOV5640Reg(0x5187,0x09);
	wrOV5640Reg(0x5188,0x09);
	wrOV5640Reg(0x5189,0x75);
	wrOV5640Reg(0x518a,0x54);
	wrOV5640Reg(0x518b,0xe0);
	wrOV5640Reg(0x518c,0xb2);
	wrOV5640Reg(0x518d,0x42);
	wrOV5640Reg(0x518e,0x3d);
	wrOV5640Reg(0x518f,0x56);
	wrOV5640Reg(0x5190,0x46);
	wrOV5640Reg(0x5191,0xf8);// AWB top limit
	wrOV5640Reg(0x5192,0x04);// AWB bottom limit
	wrOV5640Reg(0x5193,0x70);// red limit
	wrOV5640Reg(0x5194,0xf0);// green limit
	wrOV5640Reg(0x5195,0xf0);// blue limit
	wrOV5640Reg(0x5196,0x03);// AWB control
	wrOV5640Reg(0x5197,0x01);// local limit
	wrOV5640Reg(0x5198,0x04);
	wrOV5640Reg(0x5199,0x12);
	wrOV5640Reg(0x519a,0x04);
	wrOV5640Reg(0x519b,0x00);
	wrOV5640Reg(0x519c,0x06);
	wrOV5640Reg(0x519d,0x82);
	wrOV5640Reg(0x519e,0x38);// AWB control // Gamma
	wrOV5640Reg(0x5480,0x01);// Gamma bias plus on,0x bit[0]
	wrOV5640Reg(0x5481,0x08);
	wrOV5640Reg(0x5482,0x14);
	wrOV5640Reg(0x5483,0x28);
	wrOV5640Reg(0x5484,0x51);
	wrOV5640Reg(0x5485,0x65);
	wrOV5640Reg(0x5486,0x71);
	wrOV5640Reg(0x5487,0x7d);
	wrOV5640Reg(0x5488,0x87);
	wrOV5640Reg(0x5489,0x91);
	wrOV5640Reg(0x548a,0x9a);
	wrOV5640Reg(0x548b,0xaa);
	wrOV5640Reg(0x548c,0xb8);
	wrOV5640Reg(0x548d,0xcd);
	wrOV5640Reg(0x548e,0xdd);
	wrOV5640Reg(0x548f,0xea);
	wrOV5640Reg(0x5490,0x1d);// color matrix
	wrOV5640Reg(0x5381,0x1e);// CMX1 for Y
	wrOV5640Reg(0x5382,0x5b);// CMX2 for Y
	wrOV5640Reg(0x5383,0x08);// CMX3 for Y
	wrOV5640Reg(0x5384,0x0a);// CMX4 for U
	wrOV5640Reg(0x5385,0x7e);// CMX5 for U
	wrOV5640Reg(0x5386,0x88);// CMX6 for U
	wrOV5640Reg(0x5387,0x7c);// CMX7 for V
	wrOV5640Reg(0x5388,0x6c);// CMX8 for V
	wrOV5640Reg(0x5389,0x10);// CMX9 for V
	wrOV5640Reg(0x538a,0x01);// sign[9]
	wrOV5640Reg(0x538b,0x98); // sign[8:1] // UV adjust   UV
	wrOV5640Reg(0x5580,0x06);// saturation on,0x bit[1]
	wrOV5640Reg(0x5583,0x40);
	wrOV5640Reg(0x5584,0x10);
	wrOV5640Reg(0x5589,0x10);
	wrOV5640Reg(0x558a,0x00);
	wrOV5640Reg(0x558b,0xf8);
	wrOV5640Reg(0x501d,0x40);// enable manual offset of contrast// CIP
	wrOV5640Reg(0x5300,0x08);// CIP sharpen MT threshold 1
	wrOV5640Reg(0x5301,0x30);// CIP sharpen MT threshold 2
	wrOV5640Reg(0x5302,0x10);// CIP sharpen MT offset 1
	wrOV5640Reg(0x5303,0x00);// CIP sharpen MT offset 2
	wrOV5640Reg(0x5304,0x08);// CIP DNS threshold 1
	wrOV5640Reg(0x5305,0x30);// CIP DNS threshold 2
	wrOV5640Reg(0x5306,0x08);// CIP DNS offset 1
	wrOV5640Reg(0x5307,0x16);// CIP DNS offset 2
	wrOV5640Reg(0x5309,0x08);// CIP sharpen TH threshold 1
	wrOV5640Reg(0x530a,0x30);// CIP sharpen TH threshold 2
	wrOV5640Reg(0x530b,0x04);// CIP sharpen TH offset 1
	wrOV5640Reg(0x530c,0x06);// CIP sharpen TH offset 2
	wrOV5640Reg(0x5025,0x00);
	wrOV5640Reg(0x3008,0x02); // wake up from standby,0x bit[6]


	//rgb565配置
	wrOV5640Reg(0x3035, 0x41); // PLL
	wrOV5640Reg(0x3036, 0x69); // PLL
	wrOV5640Reg(0x3c07, 0x07); // lightmeter 1 threshold[7:0]
	
	wrOV5640Reg(0x3820, 0x47); // flip
	wrOV5640Reg(0x3821, 0x01); // mirror
	
	wrOV5640Reg(0x3814, 0x31); // timing X inc
	wrOV5640Reg(0x3815, 0x31); // timing Y inc
	
	//设置宽度等，这一部分有专门的函数设置，不用管
	wrOV5640Reg(0x3800, 0x00); // HS
	wrOV5640Reg(0x3801, 0x00); // HS
	wrOV5640Reg(0x3802, 0x00); // VS
	wrOV5640Reg(0x3803, 0xfa); // VS
	wrOV5640Reg(0x3804, 0x0a); // HW (HE)
	wrOV5640Reg(0x3805, 0x3f); // HW (HE)
	wrOV5640Reg(0x3806, 0x06); // VH (VE)
	wrOV5640Reg(0x3807, 0xa9); // VH (VE)
	wrOV5640Reg(0x3808, 0x05); // DVPHO
	wrOV5640Reg(0x3809, 0x00); // DVPHO
	wrOV5640Reg(0x380a, 0x02); // DVPVO
	wrOV5640Reg(0x380b, 0xd0); // DVPVO
	wrOV5640Reg(0x380c, 0x07); // HTS
	wrOV5640Reg(0x380d, 0x64); // HTS
	wrOV5640Reg(0x380e, 0x02); // VTS
	wrOV5640Reg(0x380f, 0xe4); // VTS
	wrOV5640Reg(0x3813, 0x04); // timing V offset
	
	//下面四个寄存器手册上没有说明，但配置比较固定
	wrOV5640Reg(0x3618, 0x00);
	wrOV5640Reg(0x3612, 0x29);
	wrOV5640Reg(0x3709, 0x52);
	wrOV5640Reg(0x370c, 0x03);
	
	//控制曝光
	wrOV5640Reg(0x3a02, 0x02); // 60Hz max exposure
	wrOV5640Reg(0x3a03, 0xe0); // 60Hz max exposure
	//wrOV5640Reglteare calculated automatically in camera driver
	//wrOV5640Regta(0x3a08, 0x00); // B50 step
	//wrOV5640Regta(0x3a09, 0x6f); // B50 step
	//wrOV5640Regta(0x3a0a, 0x00); // B60 step
	//wrOV5640Regta(0x3a0b, 0x5c); // B60 step
	//wrOV5640Regta(0x3a0e, 0x06); // 50Hz max band
	//wrOV5640Regta(0x3a0d, 0x08); // 60Hz max band
	wrOV5640Reg(0x3a14, 0x02); // 50Hz max exposure
	wrOV5640Reg(0x3a15, 0xe0); // 50Hz max exposure
	
	//背光补偿
	wrOV5640Reg(0x4004, 0x02); // BLC line number
	//清缓冲区，下面几个配置不用管
	wrOV5640Reg(0x3002, 0x1c); // reset JFIFO, SFIFO, JPG
	wrOV5640Reg(0x3006, 0xc3); // disable clock of JPEG2x, JPEG
	wrOV5640Reg(0x4713, 0x03); // JPEG mode 3
	wrOV5640Reg(0x4407, 0x04); // Quantization scale
	wrOV5640Reg(0x460b, 0x37);
	wrOV5640Reg(0x460c, 0x20);
	
	wrOV5640Reg(0x4837, 0x16); // MIPI global timing
	wrOV5640Reg(0x3824, 0x04); // PCLK manual divider
	wrOV5640Reg(0x5001, 0xA3); // SDE on, CMX on, AWB on
	wrOV5640Reg(0x3503, 0x00); // AEC/AGC on
//	sccb_senddata(0x30,0x16,0x02); //Strobe output enable
//	 sccb_senddata(0x3b,0x07,0x0a); //FREX strobe mode1
	 //st       robe flash and frame exposure
	 //好像是延迟曝光啥的，没用
	wrOV5640Reg(0x3b00,0x83);              //STROBE CTRL: strobe request ON,0x Strobe mode: LED3
	wrOV5640Reg(0x3b00,0x00);              //STROBE CTRL: strobe request OFF
	wrOV5640Reg(0x4740,0x20);
	//sccb_senddata(0x50,0x3d,0x82);            //sccb_senddata(0x503d80); test pattern selection control,0x 80:color bar,0x00: test disable
	//sccb_senddata(0x47,0x41,0x01);            //sccb_senddata(0x47401); test pattern enable,0x Test pattern 8-bit
}


uchar wrOV5640Reg(u16 regID, uchar regDat)
{
    startSCCB();
    if(0==SCCBwriteByte(0x78))
    {
        stopSCCB();
        return(0);
    }
    //usleep(10);
    if(0==SCCBwriteWord(regID))
    {
        stopSCCB();
        return(0);
    }
   // usleep(10);
    if(0==SCCBwriteByte(regDat))
    {
        stopSCCB();
        return(0);
    }
    stopSCCB();
    
    return(1);
}


u8 OV5640_OutSize_Set(u16 offx,u16 offy,u16 width,u16 height)
{ 
    wrOV5640Reg(0X3212,0X03);  	//???3
    //????????????(???)
    wrOV5640Reg(0x3808,width>>8);	//???????????
    wrOV5640Reg(0x3809,width&0xff);//???????????  
    wrOV5640Reg(0x380a,height>>8);//???????????
    wrOV5640Reg(0x380b,height&0xff);//???????????
	//???????????ISP???????
	//??:xsize-2*offx,ysize-2*offy
    wrOV5640Reg(0x3810,offx>>8);	//??X offset???
    wrOV5640Reg(0x3811,offx&0xff);//??X offset???
	
    wrOV5640Reg(0x3812,offy>>8);	//??Y offset???
    wrOV5640Reg(0x3813,offy&0xff);//??Y offset???
	
    wrOV5640Reg(0X3212,0X13);		//???3
    wrOV5640Reg(0X3212,0Xa3);		//???3??
	return 0; 
}
