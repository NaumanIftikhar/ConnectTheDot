//
//  DrawingCanvas.h
//  ConnectTheDots
//
//  Created by Nauman on 13/08/2014.
//  Copyright (c) 2014 VertexSoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DrawingCanvas : UIView{

    IBOutlet UIImageView *drawImage;
    UITouch *touch;
    CGPoint lastPoint;
    CGPoint currentPoint;

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
}

@end
