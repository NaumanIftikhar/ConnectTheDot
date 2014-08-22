//
//  VectorDrawingCanvasViewController.h
//  ConnectTheDots
//
//  Created by Nauman on 19/08/2014.
//  Copyright (c) 2014 VertexSoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>

@interface VectorDrawingCanvasViewController : UIViewController{

    IBOutlet UIImageView *drawImage;
    UITouch *touch;
    CGPoint lastPoint;
    CGPoint currentPoint;
    
    UIAlertView *alert;
    UIView *holdingView;
    
   // BOOL MainScreenCalled;
    
    //=================== THE MIGHTY BOOL===========//
    
    BOOL DotImage1;
    BOOL DotImage2;
    BOOL DotImage3;
    BOOL DotImage4;
    BOOL DotImage5;
    BOOL DotImage6;
    BOOL DotImage7;
    BOOL DotImage8;
    BOOL DotImage9;
    BOOL DotImage10;
    BOOL DotImage11;
    BOOL DotImage12;
    BOOL DotImage13;
    BOOL DotImage14;
    BOOL DotImage15;
    
    //=================== THE MIGHTY BOOL===========//
    
    //==================== DOTS====================//
    IBOutlet UIImageView *dotImage1;
    IBOutlet UIImageView *dotImage2;
    IBOutlet UIImageView *dotImage3;
    IBOutlet UIImageView *dotImage4;
    IBOutlet UIImageView *dotImage5;
    IBOutlet UIImageView *dotImage6;
    IBOutlet UIImageView *dotImage7;
    IBOutlet UIImageView *dotImage8;
    IBOutlet UIImageView *dotImage9;
    IBOutlet UIImageView *dotImage10;
    IBOutlet UIImageView *dotImage11;
    IBOutlet UIImageView *dotImage12;
    IBOutlet UIImageView *dotImage13;
    IBOutlet UIImageView *dotImage14;
    IBOutlet UIImageView *dotImage15;
    
    //==================== DOTS====================//
    
    //==================== Horizontal Lines====================//
    
    IBOutlet UIImageView *HorizontalLine1;
    IBOutlet UIImageView *HorizontalLine2;
    IBOutlet UIImageView *HorizontalLine3;
    IBOutlet UIImageView *HorizontalLine4;
    IBOutlet UIImageView *HorizontalLine5;
    IBOutlet UIImageView *HorizontalLine6;
    IBOutlet UIImageView *HorizontalLine7;
    IBOutlet UIImageView *HorizontalLine8;
    IBOutlet UIImageView *HorizontalLine9;
    IBOutlet UIImageView *HorizontalLine10;
    IBOutlet UIImageView *HorizontalLine11;
    IBOutlet UIImageView *HorizontalLine12;
    
    //==================== Horizontal Lines====================//
    
    //==================== Vertical Lines====================//
    IBOutlet UIImageView *VerticalLine1;
    IBOutlet UIImageView *VerticalLine2;
    IBOutlet UIImageView *VerticalLine3;
    IBOutlet UIImageView *VerticalLine4;
    IBOutlet UIImageView *VerticalLine5;
    IBOutlet UIImageView *VerticalLine6;
    IBOutlet UIImageView *VerticalLine7;
    IBOutlet UIImageView *VerticalLine8;
    IBOutlet UIImageView *VerticalLine9;
    IBOutlet UIImageView *VerticalLine10;
    
    
    //==================== Vertical Lines====================//
    
    //==================== Diagonal Lines====================//
    
    IBOutlet UIImageView *DiagonalLine1;
    IBOutlet UIImageView *DiagonalLine2;
    
    
    //==================== Diagonal Lines====================//
    
    IBOutlet UIButton *NextScreen;
    
    AVAudioPlayer * pageEffect;
    AVAudioPlayer * backgroundMusic;
    
}

@property(strong,nonatomic) MPMoviePlayerController * moviePlayer;
- (IBAction)ResetButton:(id)sender;
@property(strong,nonatomic) UIImageView * imageView;

@end
