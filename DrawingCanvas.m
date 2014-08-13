//
//  DrawingCanvas.m
//  ConnectTheDots
//
//  Created by Nauman on 13/08/2014.
//  Copyright (c) 2014 VertexSoft. All rights reserved.
//

#import "DrawingCanvas.h"

@implementation DrawingCanvas


- (BOOL)prefersStatusBarHidden {
    return YES;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{

    touch = [touches anyObject];
    lastPoint = [touch locationInView:drawImage];
    
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{

    touch = [touches anyObject];
    currentPoint = [touch locationInView:drawImage];
    
    
    
    UIGraphicsBeginImageContext(drawImage.frame.size);
    [drawImage.image drawInRect:CGRectMake(0, 0, drawImage.frame.size.width, drawImage.frame.size.height)];
    
    CGContextSetLineCap(UIGraphicsGetCurrentContext(), kCGLineCapRound);
    CGContextSetLineWidth(UIGraphicsGetCurrentContext(), 25);
    CGContextSetStrokeColorWithColor(UIGraphicsGetCurrentContext(), [UIColor redColor].CGColor);
    CGContextBeginPath(UIGraphicsGetCurrentContext());
    CGContextMoveToPoint(UIGraphicsGetCurrentContext(), lastPoint.x , lastPoint.y);
    CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), currentPoint.x, currentPoint.y);
    CGContextStrokePath(UIGraphicsGetCurrentContext());
    drawImage.image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    lastPoint = currentPoint;
    
 /*   if ([touch view] == dotImage1 && [touch view] == dotImage2) {
        CGContextSetLineCap(UIGraphicsGetCurrentContext(), kCGLineCapRound);
        CGContextSetLineWidth(UIGraphicsGetCurrentContext(), 25);
        CGContextSetStrokeColorWithColor(UIGraphicsGetCurrentContext(), [UIColor redColor].CGColor);
        CGContextBeginPath(UIGraphicsGetCurrentContext());
        CGContextMoveToPoint(UIGraphicsGetCurrentContext(), lastPoint.x , lastPoint.y);
        CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), currentPoint.x, currentPoint.y);
        CGContextStrokePath(UIGraphicsGetCurrentContext());
        drawImage.image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        lastPoint = currentPoint;
    }else{
        drawImage.image = nil;
    }
    */

 /*   if ([touch view] == dotImage3 || [touch view] == dotImage2 || [touch view] == dotImage3 || [touch view] == dotImage4 || [touch view] == dotImage6 || [touch view] == dotImage8 || [touch view] == dotImage10 || [touch view] == dotImage11 || [touch view] == dotImage12 || [touch view] == dotImage13 || [touch view] == dotImage14 ) {
        drawImage.image = nil;
    } */
    
    if ([touch view] == dotImage1 && [touch view] == dotImage2 && [touch view] == dotImage3 && [touch view] == dotImage4 && [touch view] == dotImage5 && [touch view] == dotImage6 && [touch view] == dotImage7 && [touch view] == dotImage8 && [touch view] == dotImage9 && [touch view] == dotImage10 && [touch view] == dotImage11 && [touch view] == dotImage12 && [touch view] == dotImage13 && [touch view] == dotImage14 && [touch view] == dotImage15){
        
        CGContextSetLineCap(UIGraphicsGetCurrentContext(), kCGLineCapRound);
        CGContextSetLineWidth(UIGraphicsGetCurrentContext(), 25);
        CGContextSetStrokeColorWithColor(UIGraphicsGetCurrentContext(), [UIColor redColor].CGColor);
        CGContextBeginPath(UIGraphicsGetCurrentContext());
        CGContextMoveToPoint(UIGraphicsGetCurrentContext(), lastPoint.x , lastPoint.y);
        CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), currentPoint.x, currentPoint.y);
        CGContextStrokePath(UIGraphicsGetCurrentContext());
        drawImage.image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        lastPoint = currentPoint;
        
    }
    
    NSLog(@"%f %f",currentPoint.x,currentPoint.y);
    

   
    if (CGRectContainsPoint(dotImage1.frame, currentPoint)) {
        dotImage1.tag = 1;
    }
    else if (CGRectContainsPoint(dotImage2.frame, currentPoint)){
        dotImage2.tag = 2;
    }
    else if (CGRectContainsPoint(dotImage3.frame, currentPoint)){
        dotImage3.tag = 3;
    }
    else if (CGRectContainsPoint(dotImage4.frame, currentPoint)){
        dotImage4.tag = 4;
    }
    else if (CGRectContainsPoint(dotImage5.frame, currentPoint)){
        dotImage5.tag = 5;
    }
    else if (CGRectContainsPoint(dotImage6.frame, currentPoint)){
        dotImage6.tag = 6;
    }
    else if (CGRectContainsPoint(dotImage7.frame, currentPoint)){
        dotImage7.tag = 7;
    }
    else if (CGRectContainsPoint(dotImage8.frame, currentPoint)){
        dotImage8.tag = 8;
    }
    else if (CGRectContainsPoint(dotImage9.frame, currentPoint)){
        dotImage9.tag = 9;
    }
    else if (CGRectContainsPoint(dotImage10.frame, currentPoint)){
        dotImage10.tag = 10;
    }
    else if (CGRectContainsPoint(dotImage11.frame, currentPoint)){
        dotImage11.tag = 11;
    }
    else if (CGRectContainsPoint(dotImage12.frame, currentPoint)){
        dotImage12.tag = 12;
    }
    else if (CGRectContainsPoint(dotImage13.frame, currentPoint)){
        dotImage13.tag = 13;
    }
    else if (CGRectContainsPoint(dotImage14.frame, currentPoint)){
        dotImage14.tag = 14;
    }
    else if (CGRectContainsPoint(dotImage15.frame, currentPoint)){
        dotImage15.tag = 15;
    }
    
    
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    
    
    NSLog(@"touchesEndedCalled");
    NSLog(@"%d %d %d %d %d %d %d %d %d %d %d %d %d %d %d ",dotImage1.tag,dotImage2.tag,dotImage3.tag,dotImage4.tag,dotImage5.tag,dotImage6.tag,dotImage7.tag,dotImage8.tag,dotImage9.tag,dotImage10.tag,dotImage11.tag, dotImage12.tag, dotImage13.tag, dotImage14.tag, dotImage15.tag);
    
    NSLog(@"%f, %f",dotImage1.frame.size.width, dotImage1.frame.size.height);

  //  drawImage.image = UIGraphicsGetImageFromCurrentImageContext();
   
    if (dotImage1.tag != 1 || dotImage2.tag != 2 || dotImage3.tag != 3 || dotImage4.tag != 4 || dotImage5.tag != 5 || dotImage6.tag != 6 || dotImage7.tag != 7 || dotImage8.tag == 8 || dotImage9.tag != 9 || dotImage10.tag != 10 || dotImage11.tag == 11 || dotImage12.tag != 12 || dotImage13.tag != 13 || dotImage14.tag != 14 || dotImage15.tag != 15 ) {
        
        [self InvalidMove];
        lastPoint = CGPointMake(0, 0);
        
        dotImage1.tag = 0;
        dotImage2.tag = 0;
        dotImage3.tag = 0;
        dotImage4.tag = 0;
        dotImage5.tag = 0;
        dotImage6.tag = 0;
        dotImage7.tag = 0;
        dotImage8.tag = 0;
        dotImage9.tag = 0;
        dotImage10.tag = 0;
        dotImage11.tag = 0;
        dotImage12.tag = 0;
        dotImage13.tag = 0;
        dotImage14.tag = 0;
        dotImage15.tag = 0;
        
        NSLog(@"if is yes");
    }
    
    else {
        
        [drawImage setImage:drawImage.image];
//        drawImage.image = UIGraphicsGetImageFromCurrentImageContext();
//        UIGraphicsEndImageContext();
        [NSTimer scheduledTimerWithTimeInterval:1.0f
                                         target:self
                                       selector:@selector(PlayVideo)
                                       userInfo:nil
                                        repeats:NO];
        
        NSLog(@"if is no");
    }
}


-(void)InvalidMove{
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"WARNING" message:@"INVALID MOVE" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:nil, nil];
    [alert show];
    drawImage.image = nil;
    
    [self.moviePlayer stop];
    
}

-(void)PlayVideo{
    
    //-----------------V I D E O-------------------
  
        [backgroundMusic pause];
        
        NSBundle *bundle = [NSBundle mainBundle];
        NSString *moviePath = [bundle pathForResource:@"Marbloro" ofType:@"mp4"];
        NSURL *movieURL = [NSURL fileURLWithPath:moviePath] ;
        
        
        self.moviePlayer = [[MPMoviePlayerController alloc] initWithContentURL:movieURL];
        [self.moviePlayer.view setFrame:CGRectMake(-128, 118, 1024, 768)]; //Creating frame for embeded movie player
        //      [self.moviePlayer.view setFrame:CGRectMake(0, 150, 768, 600)];
        
        //Rotating the frame so that it runs in landscape mode
        self.moviePlayer.view.transform=CGAffineTransformMakeRotation( 90.0/180*M_PI );
        self.moviePlayer.view.userInteractionEnabled=YES;
        // self.moviePlayer.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        
        
        
        [self.moviePlayer play];
        [self addSubview:self.moviePlayer.view];//Embeded video
        self.moviePlayer.shouldAutoplay=YES;
         [self.moviePlayer play];
        self.moviePlayer.controlStyle=MPMovieControlStyleNone;
        
        //------------------------------------------------'
    
}


@end
