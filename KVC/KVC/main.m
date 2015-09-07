//
//  main.m
//  KVC
//
//  Created by 王振辉 on 15/8/29.
//  Copyright (c) 2015年 王振辉. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Course.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        
        Student *student = [[Student alloc]init];
        
        [student setValue:@"LiMing" forKey:@"name"];
        NSString *name = [student valueForKey:@"name"];
        NSLog(@"%@",name);
        
        Course *course = [[Course alloc]init];
        [course setValue:@"English" forKey:@"courseName"];
        NSString *coureseName = [course valueForKey:@"courseName"];
        NSLog(@"%@",coureseName);
        
        [student setValue:course forKey:@"course"];
        coureseName = [student valueForKeyPath:@"course.courseName"];
        NSLog(@"%@",coureseName);
        
        [student setValue:@"Chinese" forKeyPath:@"course.courseName"];
        coureseName = [student valueForKeyPath:@"course.courseName"];
        NSLog(@"%@",coureseName);
        
        [student setValue:@'a' forKey:@"point"];
        NSString *point = [student valueForKey:@"point"];
        NSLog(@"%@",point);
        
        Student *student1 = [[Student alloc]init];
        Student *student2 = [[Student alloc]init];
        Student *student3 = [[Student alloc]init];
        Student *student4 = [[Student alloc]init];
        [student1 setValue:@80 forKey:@"point"];
        [student2 setValue:@90 forKey:@"point"];
        [student3 setValue:@60 forKey:@"point"];
        [student4 setValue:@90 forKey:@"point"];
        
        NSArray *array = [NSArray arrayWithObjects:student1,student2,student3,student4, nil];
        
        [student setValue:array forKey:@"otherStudents"];
        NSLog(@"其他学生的成绩是：%@",[student valueForKeyPath:@"otherStudents.point"]);
        NSLog(@"其他学生总人数是：%@",[student valueForKeyPath:@"otherStudents.@count"]);
        NSLog(@"其他学生总分数是：%@",[student valueForKeyPath:@"otherStudents.@sum.point"]);
        NSLog(@"平均成绩是：%@",[student valueForKeyPath:@"otherStudents.@avg.point"]);
        NSLog(@"最高分是：%@",[student valueForKeyPath:@"otherStudents.@max.point"]);
        NSLog(@"最低分是：%@",[student valueForKeyPath:@"otherStudents.@min.point"]);
        
    }
    return 0;
}
