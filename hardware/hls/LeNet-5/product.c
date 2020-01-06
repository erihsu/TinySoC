#include "product.h"

dou_t product_1(dou_t x, dou_t y){ //Q2.6 * Q2.6 -> Q4.4
    dou_t temp;
    if((x&0b10000000)!=0) x=x+0b1111111100000000;           //bit extension if negative
    if((y&0b10000000)!=0) y=y+0b1111111100000000;           //bit extension if negative

	temp=x*y;
	//temp = mul(x, y);
    if((temp&0b1000000000000000)!=0){                       //case1:The product is negative
        temp=temp-0b1;                                      //inverse 2's complement
        temp=temp^0b1111111111111111;
        temp=temp+0b10000000;                               //round off
        temp=temp&0b1111111100000000;                       //bit mask & shift
        temp=temp>>8;
        temp=temp^0b11111111;                               //2's complement
        temp=temp+0b1;
        if(temp>255) temp=0;                                //force saturation
    }else{                                                 //case2:The product is positive
        temp=temp+0b10000000;                               //round off
        temp=temp&0b1111111100000000;                       //bit mask & shift
        temp=temp>>8;
    }
    return temp;
}
dou_t product_2(dou_t x, dou_t y){ //Q2.6 * Q4.4 -> Q5.3
    dou_t temp;
    if((x&0b10000000)!=0) x=x+0b1111111100000000;           //bit extension if negative
    if((y&0b10000000)!=0) y=y+0b1111111100000000;           //bit extension if negative
    temp=x*y;
	//temp=mul(x,y);
    if((temp&0b1000000000000000)!=0){                       //case1:The product is negative
        temp=temp-0b1;                                      //inverse 2's complement
        temp=temp^0b1111111111111111;
        temp=temp+0b1000000;                               //round off
        temp=temp&0b111111110000000;                       //bit mask & shift
        temp=temp>>7;
        temp=temp^0b11111111;                               //2's complement
        temp=temp+0b1;
        if(temp>255) temp=0;                                //force saturation
    }else{                                                 //case2:The product is positive
        temp=temp+0b1000000;                               //round off
        temp=temp&0b111111110000000;                       //bit mask & shift
        temp=temp>>7;
    }
    return temp;
}
dou_t product_3(dou_t x, dou_t y){ //Q2.6 * Q5.3 -> Q5.3
    dou_t temp;
    if((x&0b10000000)!=0) x=x+0b1111111100000000;           //bit extension if negative
    if((y&0b10000000)!=0) y=y+0b1111111100000000;           //bit extension if negative
    temp=x*y;
	//temp=mul(x,y);
    if((temp&0b1000000000000000)!=0){                       //case1:The product is negative
        temp=temp-0b1;                                      //inverse 2's complement
        temp=temp^0b1111111111111111;
        temp=temp+0b100000;                               //round off
        temp=temp&0b11111111000000;                       //bit mask & shift
        temp=temp>>6;
        temp=temp^0b11111111;                               //2's complement
        temp=temp+0b1;
        if(temp>255) temp=0;                                //force saturation
    }else{                                                 //case2:The product is positive
        temp=temp+0b100000;                               //round off
        temp=temp&0b11111111000000;                       //bit mask & shift
        temp=temp>>6;
    }
    return temp;
}
dou_t product_4(dou_t x, dou_t y){ //Q2.6 * Q5.3 -> Q5.3
    dou_t temp;
    if((x&0b10000000)!=0) x=x+0b1111111100000000;           //bit extension if negative
    if((y&0b10000000)!=0) y=y+0b1111111100000000;           //bit extension if negative
    temp=x*y;
	//temp=mul(x,y);
    if((temp&0b1000000000000000)!=0){                       //case1:The product is negative
        temp=temp-0b1;                                      //inverse 2's complement
        temp=temp^0b1111111111111111;
        temp=temp+0b10000000;                               //round off
        temp=temp&0b1111111100000000;                       //bit mask & shift
        temp=temp>>8;
        temp=temp^0b11111111;                               //2's complement
        temp=temp+0b1;
        if(temp>255) temp=0;                                //force saturation
    }else{                                                 //case2:The product is positive
        temp=temp+0b10000000;                               //round off
        temp=temp&0b1111111100000000;                       //bit mask & shift
        temp=temp>>8;
    }
    return temp;
}

dou_t mul (dou_t a, dou_t b){
	dou_t c;
	c = a*b;
	return c;
}
