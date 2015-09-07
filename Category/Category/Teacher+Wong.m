//
//  Teacher+Wong.m
//  CategoryTest
//
//  Created by 王振辉 on 15/8/28.
//  Copyright (c) 2015年 王振辉. All rights reserved.
//

#import "Teacher+Wong.h"

@interface Teacher ()

- (void) printTeacherKing;

@end

@implementation Teacher (Wong)

- (void)printTeacherWong {
    NSLog(@"Teacher+Wong.m: Wong\n");
    //[self hello];
}

- (void)printTeacherWongAndLi {
    [self printTeacherWong];
    [self printTeacherLi];
}

- (void)printTeacherKingInCategory {
    [self printTeacherKing];
}

@end
