//
//  InsideView.m
//  ObservingUIViewMovement
//
//  Created by Nandeep Mali on 06/09/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "InsideView.h"

@implementation InsideView
@synthesize positionInWindow;

// Useless as we load our view from an Interface Builder nib file
//- (id)initWithFrame:(CGRect)frame
//{
//    self = [super initWithFrame:frame];
//    if (self) {
//        // Initialization code
//    }
//    return self;
//}

- (id)initWithCoder:(NSCoder *)decoder
{
    self = [super initWithCoder:decoder];
    
    if (self) {
        // Can't monitor superview here. It is NULL. So we use the next method instead.
    }
    return self;
}

// This method is called when the super view changes.
- (void)didMoveToSuperview
{
    // Drop a random log message
    NSLog(@"MAI SUPERVIEW HAS CHANGED!!!");

    // Start observing superview's frame
    [self addObserver:self 
           forKeyPath:@"superview.frame" 
              options: NSKeyValueObservingOptionNew 
              context:nil];
}

- (void)observeValueForKeyPath:(NSString *)keyPath 
                      ofObject:(id)object 
                        change:(NSDictionary *)change 
                       context:(void *)context
{
    // Here we update the positionInWindow because 
    // we know the superview.frame has changed
    CGPoint frameOrigin = self.frame.origin;
    [self setPositionInWindow:[[self window] convertPoint:frameOrigin
                                                 fromView:self]];
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
