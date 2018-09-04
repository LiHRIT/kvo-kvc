//
//  Person.h
//  KVC KVO Demo
//
//  Created by lhr on 17/3/16.
//  Copyright © 2017年 lhr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Actount.h"
@interface Person : NSObject

@property(copy, nonatomic) NSString *name;
@property (strong, nonatomic) Actount *acount;

-(void)showmessage;
@end
