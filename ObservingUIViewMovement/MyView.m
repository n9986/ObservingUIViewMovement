//
//  MyView.m
//  ObservingUIViewMovement
//
//  Created by Nandeep Mali on 06/09/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MyView.h"

@implementation MyView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event 
{    
    UITouch *touch = [[event allTouches] anyObject];
    CGPoint touchLocation = [touch locationInView:self];
    
    dragging = YES;
    oldX = touchLocation.x;
    oldY = touchLocation.y;
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event 
{    
    UITouch *touch = [[event allTouches] anyObject];
    CGPoint touchLocation = [touch locationInView:self];
    
    if (dragging) {
        CGRect frame = self.frame;
        frame.origin.x = self.frame.origin.x + touchLocation.x - oldX;
        frame.origin.y =  self.frame.origin.y + touchLocation.y - oldY;
        self.frame = frame;
    }
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event 
{    
    dragging = NO;
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
