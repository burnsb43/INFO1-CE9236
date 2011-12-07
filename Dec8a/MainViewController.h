//
//  MainViewController.h
//  Dec8a
//
//  Created by Barbara Burns on 12/6/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController{
    NSArray *names;
   
    NSUInteger *picture;
}


- (id) initWithTitle: (NSString *) title;

@property (strong, nonatomic) NSArray *names;
 
@property NSUInteger *picture;
@end
