//
//  main.m
//  Category
//
//  Created by 王振辉 on 15/9/7.
//  Copyright (c) 2015年 王振辉. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Teacher+Wong.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Teacher *teacher = [[Teacher alloc]init];
        [teacher printTeacherLi];
        [teacher printTeacherWong];
        [teacher printTeacherWongAndLi];
        [teacher printTeacherKingInCategory];
        
    }
    return 0;
}
