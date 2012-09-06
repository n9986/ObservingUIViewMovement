//
//  MyView.h
//  ObservingUIViewMovement
//
//  Created by Nandeep Mali on 06/09/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyView : UIView
{
    float oldX, oldY;
    BOOL dragging;
}

@end
