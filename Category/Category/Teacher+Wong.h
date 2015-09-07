//
//  Teacher+Wong.h
//  CategoryTest
//
//  Created by 王振辉 on 15/8/28.
//  Copyright (c) 2015年 王振辉. All rights reserved.
//

#import "Teacher.h"

@interface Teacher (Wong)

- (void)printTeacherWong;
- (void)printTeacherWongAndLi;
- (void)printTeacherKingInCategory; //通过此方法访问Teacher类的私有方法

@end
