//
//  ViewController.m
//  Timer
//
//  Created by New on 19/06/19.
//  Copyright © 2019 Personal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize timer,timeLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - Timer Start
- (IBAction)startAction:(id)sender {
    
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow: 1.0];
    timer = [[NSTimer alloc] initWithFireDate: date
                                          interval: 1
                                            target: self
                                          selector:@selector(onTick:)
                                          userInfo:nil repeats:YES];
    
    NSRunLoop *runner = [NSRunLoop currentRunLoop];
    [runner addTimer:timer forMode: NSDefaultRunLoopMode];
    
}

#pragma mark - Timer Pause
- (IBAction)pauseAction:(id)sender {
    [timer invalidate];
}

#pragma mark - Timer Stop
- (IBAction)stopAction:(id)sender {
    
    
}

-(void)onTick:(id)sender {
    
   
    NSString * dateStr = [NSString stringWithFormat:@"%@",[NSDate date]];
    timeLabel.text = dateStr;
    
}

@end
