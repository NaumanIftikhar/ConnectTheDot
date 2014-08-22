//
//  ViewController.m
//  ConnectTheDots
//
//  Created by Nauman on 13/08/2014.
//  Copyright (c) 2014 VertexSoft. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"fushion" ofType:@"mp3"]];
    backgroundMusic = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
    [backgroundMusic play];
    backgroundMusic.numberOfLoops=-1;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{

}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{

}

@end
