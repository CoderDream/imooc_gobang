//
//  ViewController.m
//  GobangOc
//
//  Created by CoderDream on 2018/12/17.
//  Copyright © 2018 CoderDream. All rights reserved.
//

#import "ViewController.h"

#import "GobangView.h"

@interface ViewController ()


// @property (nonatomic, strong) GobangView *gobangView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIColor *backgroundColor = [UIColor colorWithRed:230.0 / 255.0 green:192.0 / 255.0 blue:148.0 / 255.0 alpha:1.0];
    GobangView *gobangView = [[GobangView alloc] initWithFrame:CGRectMake(20, 40, self.view.frame.size.width-40, self.view.frame.size.width-40)];
    gobangView.backgroundColor = backgroundColor;
    [self.view addSubview:gobangView];
}


@end
