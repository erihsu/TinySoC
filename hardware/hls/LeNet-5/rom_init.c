#include "rom_init.h"


void loadtest() {
	char c[10];
	int temp, i, j, k, l;
	
	FILE * testFile;
	testFile = fopen("C:\\Users\\DELL\\Desktop\\quantify\\image_test.txt", "r");
	if (testFile == NULL) perror("Error opening file");
	else {
		for (i = 0; i < 100; i++)
		for (j = 0; j < 28; j++)
			for (k = 0; k < 28; k++) {
				fgets(c, 10, testFile);
				testQ[i][j][k] = atof(c);
			}
		fclose(testFile);
	}

    FILE * labelFile;
    labelFile=fopen("C:\\Users\\DELL\\Desktop\\quantify\\label_test.txt","r");
    if(labelFile==NULL) perror("Error opening file");
    else {
        for(int i=0;i<100;++i){
            fgets(c,10,labelFile);
            label_test[i]=atof(c);
        }
        fclose(labelFile);
    }
}



//void loadquan(){
//    char c[10];
//    int temp,i,j,k,l;
//    double tempf;
//
//
////    FILE * labelFile;
////    labelFile=fopen("C:\\Users\\DELL\\Desktop\\quantify\\label_test.txt","r");
////    if(labelFile==NULL) perror("Error opening file");
////    else {
////        for(int i=0;i<100;++i){
////            fgets(c,10,labelFile);
////            label_test[i]=atof(c);
////        }
////        fclose(labelFile);
////    }
//
//    FILE * fFile;
//    char num[30];
//    fFile=fopen("C:\\Users\\DELL\\Desktop\\quantify\\quantify\\weight1.txt", "r");
//    if(fFile==NULL) perror("Error opening file");
//    else {
//        for(i=0;i<20;i++)
//            for(j=0;j<5;j++)
//                for(k=0; k<5;k++){
//                    fgets(num,30,fFile);
//                    filter1Q[i][j][k]=atof(num);
//                }
//
//        fclose(fFile);
//    }
//
//    FILE * bFile;
//    bFile=fopen("C:\\Users\\DELL\\Desktop\\quantify\\quantify\\bias1.txt","r");
//    if(bFile==NULL) perror("Error opening file");
//    else {
//        for(i=0;i<20;i++){
//            fgets(num,20,bFile);
//            bias1Q[i]=atof(num);
//        }
//        fclose(bFile);
//    }
//
//    FILE * fFile2;
//    fFile2=fopen("C:\\Users\\DELL\\Desktop\\quantify\\quantify\\weight2.txt","r");
//    if(fFile2==NULL) perror("Error opening file");
//    else {
//        for(i=0;i<50;i++)
//            for(j=0; j<20;j++)
//                for(k=0; k<5;k++)
//                    for(l=0; l<5;l++){
//                        fgets(num,9,fFile2);
//                        filter2Q[i][j][k][l]=atof(num);
//                    }
//        fclose(fFile2);
//    }
//
//    FILE * bFile2;
//    bFile2=fopen("C:\\Users\\DELL\\Desktop\\quantify\\quantify\\bias2.txt","r");
//    if(bFile2==NULL) perror("Error opening file");
//    else {
//        for(i=0;i<50;i++){
//            fgets(num,9,bFile2);
//            bias2Q[i]=atof(num);
//        }
//        fclose(bFile2);
//    }
//
//    FILE * fFile3;
//    fFile3=fopen("C:\\Users\\DELL\\Desktop\\quantify\\quantify\\weight3.txt","r");
//    if(fFile3==NULL) perror("Error opening file");
//    else {
//        for(i=0;i<800;i++)
//            for(j=0;j<500;j++){
//                fgets(num,9,fFile3);
//                filter3Q[j][i]=atof(num);
//            }
//        fclose(fFile3);
//    }
//
//    FILE * bFile3;
//    bFile3=fopen("C:\\Users\\DELL\\Desktop\\quantify\\quantify\\bias3.txt","r");
//    if(bFile3==NULL) perror("Error opening file");
//    else {
//        for(i=0; i<500;i++){
//            fgets(num,9,bFile3);
//            bias3Q[i]=atof(num);
//        }
//        fclose(bFile3);
//    }
//
//    FILE * fFile4;
//    fFile4=fopen("C:\\Users\\DELL\\Desktop\\quantify\\quantify\\weight4.txt","r");
//    if(fFile4==NULL) perror("Error opening file");
//    else {
//        for(i=0;i<500;i++)
//            for(j=0;j<10;j++){
//                fgets(num,9,fFile4);
//                filter4Q[j][i]=atof(num);
//            }
//        fclose(fFile4);
//    }
//
//    FILE * bFile4;
//    bFile4=fopen("C:\\Users\\DELL\\Desktop\\quantify\\quantify\\bias4.txt","r");
//    if(bFile4==NULL) perror("Error opening file");
//    else {
//        for(i=0; i<10;i++){
//            fgets(num,9,bFile4);
//            bias4Q[i]=atof(num);
//        }
//        fclose(bFile4);
//    }



//}
