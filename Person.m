//
//  Person.m
//  KVC KVO Demo
//
//  Created by lhr on 17/3/16.
//  Copyright © 2017年 lhr. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)showmessage
{
    NSLog(@"name=%@",self.name);
}
-(void)setAcount:(Actount *)acount
{
    _acount=acount;
    [self.acount addObserver:self forKeyPath:@"banlabce" options:NSKeyValueObservingOptionNew context:nil];
}
-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context
{
   //当被观察的对象发生变化条用
    if([keyPath isEqualToString:@"banlabce"]){//这里只处理balance属性
        NSLog(@"keyPath=%@,object=%@,newValue=%.2f,context=%@",keyPath,object,[[change objectForKey:@"new"] floatValue],context);
    }

}
-(void)dealloc
{
    [self.acount removeObserver:self forKeyPath:@"banlabce"];//移除监听
}
@end
