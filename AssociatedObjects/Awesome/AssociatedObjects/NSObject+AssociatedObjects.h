//
//  NSObject+AssociatedObjects.h
//  AssociatedObjects
//
//  Created by 王振辉 on 15/9/7.
//  Copyright (c) 2015年 王振辉. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (AssociatedObjects)

- (void)associateValue:(id)value withKey:(void *)key;
- (id)associatedValueForKey:(void *)key;

@end
