//
//  Teacher.m
//  KVO
//
//  Created by 王振辉 on 15/9/1.
//  Copyright (c) 2015年 王振辉. All rights reserved.
//

#import "Teacher.h"

@implementation Teacher


- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context{
    
    NSLog(@"Old:%@",[change objectForKey:NSKeyValueChangeOldKey]);
    NSLog(@"New:%@",[change objectForKey:NSKeyValueChangeNewKey]);
    NSLog(@"%@",context);
}

@end
