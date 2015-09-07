//
//  main.m
//  KVO
//
//  Created by 王振辉 on 15/9/1.
//  Copyright (c) 2015年 王振辉. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Teacher.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Student *student = [[Student alloc]init];
        Teacher *teacher = [[Teacher alloc]init];
        
        [student addObserver:teacher
                  forKeyPath:@"name"
                     options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld
                     context:@"homework"];
        
        [student setValue:@"wongkoo" forKey:@"name"];
        
        [student removeObserver:teacher forKeyPath:@"name"];
    }
    return 0;
}
