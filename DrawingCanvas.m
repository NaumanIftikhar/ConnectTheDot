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
    
    
    
 /*   UIGraphicsBeginImageContext(drawImage.frame.size);
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
    lastPoint = currentPoint;   */
    
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
    
 /*   if ([touch view] == dotImage1 && [touch view] == dotImage2 && [touch view] == dotImage3 && [touch view] == dotImage4 && [touch view] == dotImage5 && [touch view] == dotImage6 && [touch view] == dotImage7 && [touch view] == dotImage8 && [touch view] == dotImage9 && [touch view] == dotImage10 && [touch view] == dotImage11 && [touch view] == dotImage12 && [touch view] == dotImage13 && [touch view] == dotImage14 && [touch view] == dotImage15){
        
        
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
        
    }   */
    
    
    
 /*   if (CGRectContainsRect(dotImage1.frame, dotImage2.frame) && CGRectContainsPoint(dotImage1.frame, currentPoint)) {
    
        [HorizontalLine1 setImage:[UIImage imageNamed:@"red straight line 18Aug.png"]];
        
    }
    else if (CGRectContainsRect(dotImage2.frame, dotImage3.frame) && CGRectContainsPoint(dotImage2.frame, currentPoint)){
    
        [HorizontalLine2 setImage:[UIImage imageNamed:@"red straight line 18Aug.png"]];
    }  */
    
    
    NSLog(@"%f %f",currentPoint.x,currentPoint.y);
    
/*    if (CGRectContainsPoint(dotImage1.frame, currentPoint) || CGRectContainsPoint(dotImage2.frame, currentPoint)) {
        
        [HorizontalLine1 setImage:[UIImage imageNamed:@"red straight line 18Aug.png"]];
    }
    else if (CGRectContainsPoint(dotImage2.frame, currentPoint) || CGRectContainsPoint(dotImage3.frame, currentPoint)){
      
        [HorizontalLine2 setImage:[UIImage imageNamed:@"red straight line 18Aug.png"]];
    }
    else if (CGRectContainsPoint(dotImage3.frame, currentPoint) || CGRectContainsPoint(dotImage4.frame, currentPoint)){
       
        [HorizontalLine3 setImage:[UIImage imageNamed:@"red straight line 18Aug.png"]];
    }
    else if (CGRectContainsPoint(dotImage4.frame, currentPoint) || CGRectContainsPoint(dotImage5.frame, currentPoint)){
       
        [HorizontalLine4 setImage:[UIImage imageNamed:@"red straight line 18Aug.png"]];
    }
    else if (CGRectContainsPoint(dotImage5.frame, currentPoint) || CGRectContainsPoint(dotImage10.frame, currentPoint)){
        
        [VerticalLine3 setImage:[UIImage imageNamed:@"red vertical line 2 18Aug.png"]];
    }
    else if (CGRectContainsPoint(dotImage10.frame, currentPoint) || CGRectContainsPoint(dotImage15.frame, currentPoint)){
        
        [VerticalLine4 setImage:[UIImage imageNamed:@"red vertical line 2 18Aug.png"]];
    }
    else if (CGRectContainsPoint(dotImage1.frame, currentPoint) || CGRectContainsPoint(dotImage6.frame, currentPoint)){
        
        [VerticalLine1 setImage:[UIImage imageNamed:@"red vertical line 2 18Aug.png"]];
    }
    else if (CGRectContainsPoint(dotImage6.frame, currentPoint) || CGRectContainsPoint(dotImage11.frame, currentPoint)){
        
        [VerticalLine2 setImage:[UIImage imageNamed:@"red vertical line 2 18Aug.png"]];
    }
    else if (CGRectContainsPoint(dotImage15.frame, currentPoint) || CGRectContainsPoint(dotImage8.frame, currentPoint)){
        
        [DiagonalLine1 setImage:[UIImage imageNamed:@"right red diagonal line 18Aug.png"]];
    }
    else if (CGRectContainsPoint(dotImage8.frame, currentPoint) ||  CGRectContainsPoint(dotImage11.frame, currentPoint)){
        
        [DiagonalLine2 setImage:[UIImage imageNamed:@"left red diagonal line 18Aug.png"]];
    } */
    /*else if (CGRectContainsPoint(dotImage11.frame, currentPoint) || CGRectContainsPoint(dotImage3.frame, currentPoint)){
        dotImage11.tag = 11;
    }
    else if (CGRectContainsPoint(dotImage12.frame, currentPoint) || CGRectContainsPoint(dotImage3.frame, currentPoint)){
        dotImage12.tag = 12;
    }
    else if (CGRectContainsPoint(dotImage13.frame, currentPoint) || CGRectContainsPoint(dotImage3.frame, currentPoint)){
        dotImage13.tag = 13;
    }
    else if (CGRectContainsPoint(dotImage14.frame, currentPoint) || CGRectContainsPoint(dotImage3.frame, currentPoint)){
        dotImage14.tag = 14;
    }
    else if (CGRectContainsPoint(dotImage15.frame, currentPoint) || CGRectContainsPoint(dotImage3.frame, currentPoint)){
        dotImage15.tag = 15;
    } */
    
    if (CGRectContainsPoint(dotImage1.frame, currentPoint)){
        
        DotImage1 = YES;
    }
    if (CGRectContainsPoint(dotImage2.frame, currentPoint)){
        
        DotImage2 = YES;
    }
    if (CGRectContainsPoint(dotImage3.frame, currentPoint)){
        
        DotImage3 = YES;
    }
    if (CGRectContainsPoint(dotImage4.frame, currentPoint)){
        
        DotImage4 = YES;
    }
    if (CGRectContainsPoint(dotImage5.frame, currentPoint)){
        
        DotImage5 = YES;
    }
    if (CGRectContainsPoint(dotImage6.frame, currentPoint)){
        
        DotImage6 = YES;
    }
    if (CGRectContainsPoint(dotImage7.frame, currentPoint)){
        
        DotImage7 = YES;
    }
    if (CGRectContainsPoint(dotImage8.frame, currentPoint)){
        
        DotImage8 = YES;
    }
    if (CGRectContainsPoint(dotImage9.frame, currentPoint)){
        
        DotImage9 = YES;
    }
    if (CGRectContainsPoint(dotImage10.frame, currentPoint)){
        
        DotImage10 = YES;
    }
    if (CGRectContainsPoint(dotImage11.frame, currentPoint)){
        
        DotImage11 = YES;
    }
    if (CGRectContainsPoint(dotImage12.frame, currentPoint)){
        
        DotImage12 = YES;
    }
    if (CGRectContainsPoint(dotImage13.frame, currentPoint)){
        
        DotImage13 = YES;
    }
    if (CGRectContainsPoint(dotImage14.frame, currentPoint)){
        
        DotImage14 = YES;
    }
    if (CGRectContainsPoint(dotImage15.frame, currentPoint)){
        
        DotImage15 = YES;
    }
    
    
    
    
    
    
    if (DotImage1 && DotImage2) {
        
        [HorizontalLine1 setImage:[UIImage imageNamed:@"red straight line 18Aug.png"]];
    }
    if (DotImage2 && DotImage3){
        
        [HorizontalLine2 setImage:[UIImage imageNamed:@"red straight line 18Aug.png"]];
    }
    if (DotImage3 && DotImage4){
        
        [HorizontalLine3 setImage:[UIImage imageNamed:@"red straight line 18Aug.png"]];
    }
    if (DotImage4 && DotImage5){
        
        [HorizontalLine4 setImage:[UIImage imageNamed:@"red straight line 18Aug.png"]];
    }
    if (DotImage5 && DotImage10){
        
        [VerticalLine3 setImage:[UIImage imageNamed:@"red vertical line 2 18Aug.png"]];
    }
    if (DotImage10 && DotImage15){
        
        [VerticalLine4 setImage:[UIImage imageNamed:@"red vertical line 2 18Aug.png"]];
    }
    if (DotImage1 && DotImage6){
        
        [VerticalLine1 setImage:[UIImage imageNamed:@"red vertical line 2 18Aug.png"]];
    }
    if (DotImage6 && DotImage11){
        
        [VerticalLine2 setImage:[UIImage imageNamed:@"red vertical line 2 18Aug.png"]];
    }
    if (DotImage15 && DotImage8){
        
        [DiagonalLine1 setImage:[UIImage imageNamed:@"right red diagonal line 18Aug.png"]];
    }
    if (DotImage8 && DotImage11){
        
        [DiagonalLine2 setImage:[UIImage imageNamed:@"left red diagonal line 18Aug.png"]];
    }
    if (DotImage6 && DotImage7) {
        [HorizontalLine9 setImage:[UIImage imageNamed:@"red straight line 18Aug.png"]];
    }
    if (DotImage7 && DotImage8) {
        [HorizontalLine10 setImage:[UIImage imageNamed:@"red straight line 18Aug.png"]];
    }
    if (DotImage8 && DotImage9) {
        [HorizontalLine11 setImage:[UIImage imageNamed:@"red straight line 18Aug.png"]];
    }
    if (DotImage9 && DotImage10) {
        [HorizontalLine12 setImage:[UIImage imageNamed:@"red straight line 18Aug.png"]];
    }
    if (DotImage7 && DotImage8) {
        [HorizontalLine10 setImage:[UIImage imageNamed:@"red straight line 18Aug.png"]];
    }
    if (DotImage2 && DotImage7) {
        [VerticalLine5 setImage:[UIImage imageNamed:@"red vertical line 2 18Aug.png"]];
    }
    if (DotImage7 && DotImage12) {
        [VerticalLine6 setImage:[UIImage imageNamed:@"red vertical line 2 18Aug.png"]];
    }
    if (DotImage3 && DotImage8) {
        //[VerticalLine7 setImage:[UIImage imageNamed:@"red vertical line 2 18Aug.png"]];
    }
    if (DotImage8 && DotImage13) {
        [VerticalLine8 setImage:[UIImage imageNamed:@"red vertical line 2 18Aug.png"]];
    }
    if (DotImage4 && DotImage9) {
        [VerticalLine9 setImage:[UIImage imageNamed:@"red vertical line 2 18Aug.png"]];
    }
    if (DotImage9 && DotImage14) {
        [VerticalLine10 setImage:[UIImage imageNamed:@"red vertical line 2 18Aug.png"]];
    }
    
    if (DotImage11 && DotImage12) {
        [HorizontalLine5 setImage:[UIImage imageNamed:@"red straight line 18Aug.png"]];
    }
    if (DotImage12 && DotImage13) {
        [HorizontalLine6 setImage:[UIImage imageNamed:@"red straight line 18Aug.png"]];
    }
    if (DotImage13 && DotImage14) {
        [HorizontalLine7 setImage:[UIImage imageNamed:@"red straight line 18Aug.png"]];
    }
    if (DotImage14 && DotImage15) {
        [HorizontalLine8 setImage:[UIImage imageNamed:@"red straight line 18Aug.png"]];
    }
    
    
    
    
    
    
   
    if (CGRectContainsPoint(dotImage1.frame, currentPoint) ) {
        dotImage1.tag = 1;
    }
    else if (CGRectContainsPoint(dotImage2.frame, currentPoint) ){
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
    
    
    
    if (dotImage1.tag != 1 || dotImage2.tag != 2 || dotImage3.tag != 3 || dotImage4.tag != 4 || dotImage5.tag != 5 || dotImage6.tag != 6 || dotImage8.tag != 8 || dotImage10.tag != 10 || dotImage11.tag != 11  || (dotImage15.tag != 15 && dotImage7.tag != 7 && dotImage9.tag != 9) ) {
        
        [self InvalidMove];
        
    }
    else if(dotImage1.tag == 1 && dotImage2.tag == 2 && dotImage3.tag == 3 && dotImage4.tag == 4 && dotImage5.tag == 5 && dotImage6.tag == 6 && dotImage7.tag == 7 && dotImage8.tag ==8 && dotImage9.tag == 9 && dotImage10.tag == 10 && dotImage11.tag == 11 && dotImage12.tag == 12 && dotImage13.tag == 13 && dotImage14.tag == 14 && dotImage15.tag == 15 ){
        
        [self InvalidMove];
    }
    else {
        
        NSLog(@"OK");
        [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(PlayVideo) userInfo:nil repeats:NO];
    
    }
    
    
  /*  if (dotImage1.tag == 1 && dotImage2.tag == 2) {
   
        [HorizontalLine1 setImage:[UIImage imageNamed:@"red straight line 18Aug.png"]];
        
    }
    else if (dotImage2 && dotImage3){
        
        [HorizontalLine2 setImage:[UIImage imageNamed:@"red straight line 18Aug.png"]];
    }
    else if (dotImage3 && dotImage4){
        
        [HorizontalLine3 setImage:[UIImage imageNamed:@"red straight line 18Aug.png"]];
    }
    else if (dotImage4 && dotImage5){
        
        [HorizontalLine4 setImage:[UIImage imageNamed:@"red straight line 18Aug.png"]];
    }
    else if (dotImage5 && dotImage10){
        
        [VerticalLine3 setImage:[UIImage imageNamed:@"red vertical line 2 18Aug.png"]];
    }
    else if (dotImage10 && dotImage15){
        
        [VerticalLine4 setImage:[UIImage imageNamed:@"red vertical line 2 18Aug.png"]];
    }
    else if (dotImage15 && dotImage8){
        
        [DiagonalLine1 setImage:[UIImage imageNamed:@"right red diagonal line 18Aug.png"]];
    }
    else if (dotImage11 && dotImage8){
        
        [DiagonalLine2 setImage:[UIImage imageNamed:@"left red diagonal line 18Aug.png"]];
    }
     */

  //  drawImage.image = UIGraphicsGetImageFromCurrentImageContext();
   
/*    if (dotImage1.tag != 1 || dotImage2.tag != 2 || dotImage3.tag != 3 || dotImage4.tag != 4 || dotImage5.tag != 5 || dotImage6.tag != 6 || dotImage7.tag != 7 || dotImage8.tag == 8 || dotImage9.tag != 9 || dotImage10.tag != 10 || dotImage11.tag == 11 || dotImage12.tag != 12 || dotImage13.tag != 13 || dotImage14.tag != 14 || dotImage15.tag != 15 ) {
        
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
    }       */
    
}


-(void)InvalidMove{
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"WARNING" message:@"INVALID MOVE" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:nil, nil];
    [alert show];
    drawImage.image = nil;
    [self ResetButton:self];
    [self.moviePlayer stop];
    
    [drawImage setUserInteractionEnabled:NO];
}

-(void)playbackFinished{
    
    [NextScreen sendActionsForControlEvents: UIControlEventTouchUpInside];
    
    NSLog(@"play back finished");
    
}


-(void)PlayVideo{
    
    //-----------------V I D E O-------------------
    
 //   [self.moviePlayer.view setUserInteractionEnabled:NO];
    
//    [drawImage setUserInteractionEnabled:NO];
    [self.viewForBaselineLayout setUserInteractionEnabled:NO];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(playbackFinished)
                                                 name:MPMoviePlayerPlaybackDidFinishNotification object:nil];
  
        [backgroundMusic pause];
        
        NSBundle *bundle = [NSBundle mainBundle];
        NSString *moviePath = [bundle pathForResource:@"Red_Marlboro" ofType:@"mp4"];
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


- (IBAction)ResetButton:(id)sender {
    
    
    
    HorizontalLine1.image = nil;
    HorizontalLine2.image = nil;
    HorizontalLine3.image = nil;
    HorizontalLine4.image = nil;
    HorizontalLine5.image = nil;
    HorizontalLine6.image = nil;
    HorizontalLine7.image = nil;
    HorizontalLine8.image = nil;
    HorizontalLine9.image = nil;
    HorizontalLine10.image = nil;
    HorizontalLine11.image = nil;
    HorizontalLine12.image = nil;
    
    VerticalLine1.image = nil;
    VerticalLine2.image = nil;
    VerticalLine3.image = nil;
    VerticalLine4.image = nil;
    VerticalLine5.image = nil;
    VerticalLine6.image = nil;
    VerticalLine7.image = nil;
    VerticalLine8.image = nil;
    VerticalLine9.image = nil;
    VerticalLine10.image = nil;
    
    DiagonalLine1.image = nil;
    DiagonalLine2.image = nil;
    
    
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
    
    DotImage1 = NO;
    DotImage2 = NO;
    DotImage3 = NO;
    DotImage4 = NO;
    DotImage5 = NO;
    DotImage6 = NO;
    DotImage7 = NO;
    DotImage8 = NO;
    DotImage9 = NO;
    DotImage10 = NO;
    DotImage11 = NO;
    DotImage12 = NO;
    DotImage13 = NO;
    DotImage14 = NO;
    DotImage15 = NO;
}


@end
