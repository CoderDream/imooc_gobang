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

// 监听手势信息
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesBegan withEvent");
    
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
    
    NSUInteger h, v;
    for (NSUInteger i = 0; i <= kBoardSize; i++) {
        if (i * self.frame.size.width / (kBoardSize + 1) <= point.x && point.x < (i + 1) * self.frame.size.width / (kBoardSize + 1)) {
            if (i == 0) {
                h = 0;
                break;
            }
            
            if (i == kBoardSize) {
                h = kBoardSize - 1;
                break;
            }
            
            if (fabs(i * self.frame.size.width / (kBoardSize + 1) - point.x) >= fabs((i + 1) * self.frame.size.width / (kBoardSize + 1) - point.x)) {
                h = i;
                break;
            } else {
                h = i - 1;
                break;
            }
        }
        NSLog(@"got you h!");
    }
    
    for (NSUInteger i = 0; i <= kBoardSize; i++) {
        if (i * self.frame.size.width / (kBoardSize + 1) <= point.y && point.y < (i + 1) * self.frame.size.width / (kBoardSize + 1)) {
            if (i == 0) {
                v = 0;
                break;
            }
            
            if (i == kBoardSize) {
                v = kBoardSize - 1;
                break;
            }
            
            if (fabs(i * self.frame.size.width / (kBoardSize + 1) - point.y) >= fabs((i + 1) * self.frame.size.width / (kBoardSize + 1) - point.y)) {
                v = i;
                break;
            } else {
                v = i - 1;
                break;
            }
        }
        NSLog(@"got you V!");
    }
    
    UIImageView *piece = [[UIImageView alloc] initWithFrame:(CGRectMake(0,0,7.5,7.5))];
    piece.image = [UIImage imageNamed:@"black"];
    [self addSubview:piece];
    piece.center = CGPointMake((h + 1) * self.frame.size.width / (kBoardSize + 1), (v + 1) * self.frame.size.width / (kBoardSize + 1));
}
@end
