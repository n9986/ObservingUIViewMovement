//
//  InsideView.h
//  ObservingUIViewMovement
//
//  Created by Nandeep Mali on 06/09/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InsideView : UIView
{
    CGPoint positionInWindow;
}

@property(readwrite)CGPoint positionInWindow;

@end
