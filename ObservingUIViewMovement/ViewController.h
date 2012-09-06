//
//  ViewController.h
//  ObservingUIViewMovement
//
//  Created by Nandeep Mali on 06/09/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MyView.h"
#import "InsideView.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet MyView *myView;
@property (weak, nonatomic) IBOutlet InsideView *insideView;

@end
