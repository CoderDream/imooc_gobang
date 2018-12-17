//
//  GobangView.m
//  GobangOc
//
//  Created by CoderDream on 2018/12/17.
//  Copyright © 2018 CoderDream. All rights reserved.
//

#import "GobangView.h"

static NSInteger kBoardSize = 13;

@implementation GobangView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        for (int i = 0; i < kBoardSize + 2; i ++) {
            UIView *horizonLine = [[UIView alloc] initWithFrame:CGRectMake(0, i * frame.size.height / (kBoardSize + 1), frame.size.width, 0.5)];
            horizonLine.backgroundColor = [UIColor blackColor];
            [self addSubview:horizonLine];
        }
        
        for (int i = 0; i < kBoardSize + 2; i ++) {
            UIView *verticalLine = [[UIView alloc] initWithFrame:CGRectMake(i * frame.size.width / (kBoardSize + 1), 0, 0.5, frame.size.height)];
            verticalLine.backgroundColor = [UIColor blackColor];
            [self addSubview:verticalLine];
        }
    }
    
    
    return self;
}
@end
