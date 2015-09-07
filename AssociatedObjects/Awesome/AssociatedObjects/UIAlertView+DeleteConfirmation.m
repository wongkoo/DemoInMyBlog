//
//  UIAlertView+DeleteConfirmation.m
//  AssociatedObjects
//
//  Created by 王振辉 on 15/9/7.
//  Copyright (c) 2015年 王振辉. All rights reserved.
//

#import "UIAlertView+DeleteConfirmation.h"
#import "NSObject+AssociatedObjects.h"

@implementation UIAlertView (DeleteConfirmation)

- (void)setIndexPathToDelete:(NSIndexPath *)indexPathToDelete {
    [self associateValue:indexPathToDelete withKey:@selector(indexPathToDelete)];
}

- (NSIndexPath *)indexPathToDelete {
    return [self associatedValueForKey:@selector(indexPathToDelete)];
}

@end
