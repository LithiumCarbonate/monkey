//  weibo: http://weibo.com/xiaoqing28
//  blog:  http://www.alonemonkey.com
//
//  monkeyDylib.m
//  monkeyDylib
//
//  Created by LeeLinux on 2018/3/22.
//  Copyright (c) 2018年 LeeLinux. All rights reserved.
//

#import "monkeyDylib.h"
#import <CaptainHook/CaptainHook.h>
#import <UIKit/UIKit.h>
#import <Cycript/Cycript.h>

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++



#import "unk_101088938.h"
#import "unk_101064838.h"
#import "unk_1010D0838.h"

#include <dlfcn.h>
char  byte_1010593F0[] =
{
    0x00, 0x01, 0x02, 0x03, 0x01, 0x02, 0x03, 0x00, 0x02, 0x03,
    0x00, 0x01, 0x03, 0x00, 0x01, 0x02
};




signed __int64 __fastcall sub_100FA5714(signed __int64 result, unsigned int *a2, _DWORD *a3)
{
    signed __int64 v3; // x8
    __int64 v4; // x10
    unsigned __int8 v5; // w9
    int v6; // w11
    signed __int64 v7; // x10
    unsigned int v8; // w8
    __int64 v9; // x9
    unsigned int v10; // w10
    signed __int64 v11; // x1
    __int64 v12; // x3
    char v13; // w7
    __int64 v14; // x4
    char *v15; // x5
    __int64 v16; // x6
    char *v17; // x19
    char v18; // t1
    __int64 v19; // x4
    char *v20; // x5
    char *v21; // x6
    __int64 v22; // x7
    char *v23; // x19
    char *v24; // x20
    char *v25; // x21
    char *v26; // x22
    char *v27; // x23
    char *v28; // x24
    signed __int64 v29; // x25
    unsigned int v30; // t1
    __int64 v31; // x7
    char *v32; // x19
    __int64 v33; // x20
    char *v34; // x21
    char *v35; // x22
    unsigned int v36; // w22
    int v37; // w25
    signed __int64 v38; // x23
    char *v39; // x24
    __int64 v40; // x4
    __int128 *v41; // x5
    char *v42; // x6
    char *v43; // x7
    __int64 v44; // x19
    char *v45; // x20
    char *v46; // x21
    __int128 *v47; // x22
    unsigned int v48; // t1
    __int64 v49; // x23
    char v50; // [xsp+4h] [xbp-CCh]
    char v51; // [xsp+5h] [xbp-CBh]
    char v52; // [xsp+6h] [xbp-CAh]
    char v53; // [xsp+7h] [xbp-C9h]
    __int128 v54; // [xsp+8h] [xbp-C8h]
    __int64 v55; // [xsp+18h] [xbp-B8h]
    __int64 v56; // [xsp+20h] [xbp-B0h]
    __int64 v57; // [xsp+28h] [xbp-A8h]
    __int64 v58; // [xsp+30h] [xbp-A0h]
    char v59[64]; // [xsp+38h] [xbp-98h]
    __int64 v60; // [xsp+78h] [xbp-58h]

    v3 = 0xFFFFFFFFLL;
    if ( !result || !a2 || !a3 )
        goto LABEL_40;
    v4 = *a2;
    if ( *a3 < (unsigned int)(v4 + 16) )
        goto LABEL_39;
    v5 = ((v4 + 16) & 0xF0) - v4;
    if ( (((_BYTE)v4 + 16) & 0xF0) != (_BYTE)v4 )
    {
        v6 = 0;
        v7 = result + v4;
        do
            *(_BYTE *)(v7 + (unsigned __int8)v6++) = v5;
        while ( (unsigned __int8)v6 < (unsigned int)v5 );
        LODWORD(v4) = *a2;
    }
    v8 = v4 + v5;
    *a2 = v8;
    v3 = v8 >> 4;
    if ( (_DWORD)v3 )
    {
        v9 = 0LL;
        v10 = 0;
        v11 = result;
        while ( 1 )
        {
            v12 = 0LL;
            do
            {
                if ( v10 )
                    v13 = *(_BYTE *)(result + (unsigned int)(v9 - 16 + v12));
                else
                    v13 = 0;
                *(_BYTE *)(result + v9 + v12++) ^= v13;
            }
            while ( v12 != 16 );
            if ( !(result + v9) )
                break;
            v14 = 0LL;
            v54 = 0uLL;
            v57 = 0LL;
            v58 = 0LL;
            v55 = 0LL;
            v56 = 0LL;
            v15 = (char *)v11;
            do
            {
                v16 = 0LL;
                v17 = v15;
                do
                {
                    v18 = *v17++;
                    *((_BYTE *)&v55 + v14 + v16) = v18;
                    v16 += 8LL;
                }
                while ( v16 != 32 );
                ++v14;
                v15 += 4;
            }
            while ( v14 != 4 );
            v19 = 0LL;
            v20 = (char *)&unk_101088938;
            v21 = (char *)&unk_101064838;
            do
            {
                v22 = 0LL;
                v23 = v59;
                v24 = (char *)&byte_1010593F0;
                v25 = v21;
                do
                {
                    v26 = v24;
                    v27 = v25;
                    v28 = v23;
                    v29 = 4LL;
                    do
                    {
                        v30 = (unsigned __int8)*v26++;
                        *(_DWORD *)v28 = *(_DWORD *)&v27[4 * *((unsigned __int8 *)&v55 + 8 * v22 + v30)];
                        v28 += 4;
                        v27 += 1024;
                        --v29;
                    }
                    while ( v29 );
                    ++v22;
                    v23 += 16;
                    v25 += 4096;
                    v24 += 4;
                }
                while ( v22 != 4 );
                v31 = 0LL;
                v32 = v20;
                do
                {
                    v33 = 0LL;
                    v34 = v32;
                    do
                    {
                        v35 = &v59[4 * v33 + v31];
                        v50 = *v35;
                        v51 = v35[16];
                        v52 = v35[32];
                        v53 = v35[48];
                        v36 = v50 & 0xF0;
                        v37 = v50 & 0xF;
                        v38 = 1LL;
                        v39 = v34;
                        do
                        {
                            LOBYTE(v36) = 16 * v39[*(&v50 + v38) & 0xF0 | (v36 >> 4)];
                            LOBYTE(v37) = v39[(16 * (*(&v50 + v38) & 0xF) | v37) - 256] & 0xF;
                            v39 += 512;
                            ++v38;
                        }
                        while ( v38 != 4 );
                        *((_BYTE *)&v55 + 8 * v31 + v33++) = v36 | v37;
                        v34 += 2048;
                    }
                    while ( v33 != 4 );
                    ++v31;
                    v32 += 0x2000;
                }
                while ( v31 != 4 );
                ++v19;
                v21 += 0x4000;
                v20 += 0x8000;
            }
            while ( v19 != 9 );
            v40 = 0LL;
            v41 = &v54;
            v42 = &byte_1010593F0;
            v43 = (char *)&unk_1010D0838;
            do
            {
                v44 = 0LL;
                v45 = v42;
                v46 = v43;
                v47 = v41;
                do
                {
                    v48 = (unsigned __int8)*v45++;
                    v49 = *((unsigned __int8 *)&v55 + v48 + v44);
                    v44 += 8LL;
                    *(_BYTE *)v47 = v46[v49];
                    v47 = (__int128 *)((char *)v47 + 1);
                    v46 += 256;
                }
                while ( v44 != 32 );
                ++v40;
                v41 = (__int128 *)((char *)v41 + 4);
                v43 += 1024;
                v42 += 4;
            }
            while ( v40 != 4 );
            *(_OWORD *)(result + v9) = v54;
            ++v10;
            v9 += 16LL;
            v11 += 16LL;
            if ( v10 >= (unsigned int)v3 )
            {
                v3 = 0LL;
                goto LABEL_40;
            }
        }
    LABEL_39:
        v3 = 0xFFFFFFFFLL;
    }
LABEL_40:
    if (dlsym(RTLD_DEFAULT, "__stack_chk_guard")  == v60 )
        result = v3;
    return result;
}

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


























































CHConstructor{
    NSLog(INSERT_SUCCESS_WELCOME);
    
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidFinishLaunchingNotification object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification * _Nonnull note) {
        
#ifndef __OPTIMIZE__
        CYListenServer(6666);
#endif
        
    }];
}


CHDeclareClass(CustomViewController)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wstrict-prototypes"

//add new method
CHDeclareMethod1(void, CustomViewController, newMethod, NSString*, output){
    NSLog(@"This is a new method : %@", output);
}

#pragma clang diagnostic pop

CHOptimizedClassMethod0(self, void, CustomViewController, classMethod){
    NSLog(@"hook class method");
    CHSuper0(CustomViewController, classMethod);
}

CHOptimizedMethod0(self, NSString*, CustomViewController, getMyName){
    //get origin value
    NSString* originName = CHSuper(0, CustomViewController, getMyName);
    
    NSLog(@"origin name is:%@",originName);
    
    //get property
    NSString* password = CHIvar(self,_password,__strong NSString*);
    
    NSLog(@"password is %@",password);
    
    [self newMethod:@"output"];
    
    //set new property
    self.newProperty = @"newProperty";
    
    NSLog(@"newProperty : %@", self.newProperty);
    
    //change the value
    return @"AloneMonkey";
    
}
CHDeclareClass(NSBundle);
CHMethod0(NSString *, NSBundle, bundleIdentifier){
    NSString * buid = CHSuper0(NSBundle, bundleIdentifier);
    if ([buid isEqualToString:@"com.uusafe.monkey"]) {
        return @"com.wdhmobilellc.mwhoview";
    }
    return buid;
}

CHDeclareClass(NSUserDefaults);
CHMethod1(NSObject *,NSUserDefaults , objectForKey,NSString *,string){

    NSObject *obj = CHSuper1(NSUserDefaults, objectForKey, string);
    if ([string isEqualToString:@"kLaunchAdIdentifier"]) {
        return [NSNumber numberWithInteger:10000];
    }
    return obj;

}
CHDeclareClass(ConfigManager);

CHMethod0(int , ConfigManager, InAppPayment){
    int buid = CHSuper0(ConfigManager, InAppPayment);
    if (buid) {
        return 0;
    }
    return buid;
}
//add new property
CHPropertyRetainNonatomic(CustomViewController, NSString*, newProperty, setNewProperty);

CHConstructor{
    CHLoadLateClass(CustomViewController);
    CHClassHook0(CustomViewController, getMyName);
    CHClassHook0(CustomViewController, classMethod);
//    CHLoadLateClass(NSBundle);
//    CHHook0(NSBundle, bundleIdentifier);
    CHLoadLateClass(NSUserDefaults);
    CHHook1(NSUserDefaults, objectForKey);


//    -[ConfigManager InAppPayment]
    CHLoadLateClass(ConfigManager);
    CHHook0(ConfigManager, InAppPayment);

    CHHook0(CustomViewController, newProperty);
    CHHook1(CustomViewController, setNewProperty);
}

