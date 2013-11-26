//
//  LTUser+Add.m
//  ineedhelp
//
//  Created by jonathan twaddell on 11/26/13.
//  Copyright (c) 2013 Trestles. All rights reserved.
//

#import "LTUser+Add.h"

@implementation LTUser (Add)

-(void)saySomethingMore{
    NSLog(@"I want to say something more to you from within category");
}

+(void)tellMe
{
    NSLog(@"I want you to tell me from the category");
}

@end
