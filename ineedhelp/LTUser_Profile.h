//
//  LTUser_Profile.h
//  ineedhelp
//
//  Created by jonathan twaddell on 11/26/13.
//  Copyright (c) 2013 Trestles. All rights reserved.
//

/*
  This is an extension. It is ONLY an interface that are import'd into the implementation file

  Discussed in EOC91
 
  Key Value Coding (KVC) would useful here (EOC92) via something like:
  [pointOfInterest setValue:@"abc" forKey:@"identifier"];
 
  can work around these being private by using one of the performSelector methods D75
 
   "if you intend to make 'private' methods available to select other classes, such as related classes within a framework, you can declare the 
    class extension in a seperate header file and import it in the source files that need it. It's not uncommon to have two header files for a class, 
    for example, such XYZPerson.h and XYZPersonPrivate.h. When you release the framework, you only release the public XYZPerson.h header file" D75
 
   "It's possible to interact directly with this runtime system, such as by adding associative references to an object. Unlike class extensions, 
    associated references do not affect the original class declaration and implementation, which means you can use them with framework classes for 
    which you don't have access to original source code" D76
 
 */

#import "LTUser.h"

@interface LTUser ()
  @property NSString *profileName;
@end
