//
//  ResistorViewController.h
//  ProjectResistance
//
//  Created by Christopher Fairbairn on 26/10/09.
//  Copyright 2009 ChrisTec. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ResistorViewController : UIViewController<UIScrollViewDelegate> {
	UIScrollView * band1;
	UIScrollView * band2;
	UIScrollView * band3;
	UIScrollView * band4;
}

@property (nonatomic, retain) IBOutlet UIScrollView * band1;
@property (nonatomic, retain) IBOutlet UIScrollView * band2;
@property (nonatomic, retain) IBOutlet UIScrollView * band3;
@property (nonatomic, retain) IBOutlet UIScrollView * band4;

@end