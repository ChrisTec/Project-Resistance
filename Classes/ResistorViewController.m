//
//  ResistorViewController.m
//  ProjectResistance
//
//  Created by Christopher Fairbairn on 26/10/09.
//  Copyright 2009 ChrisTec. All rights reserved.
//

#import "ResistorViewController.h"


@implementation ResistorViewController

@synthesize band1;
@synthesize band2;
@synthesize band3;
@synthesize band4;

- (void)viewDidLoad {
    [super viewDidLoad];
	
	// The colours that could be displayed on each band
	int nColours = 12;
	UIColor * colours[] = { 
		[UIColor colorWithRed:0.75 green:0.75 blue:0.75 alpha:1.0], // Silver
		[UIColor colorWithRed:1.00 green:0.84 blue:0.00 alpha:1.0], // Gold
		[UIColor blackColor],
		[UIColor brownColor],
		[UIColor redColor],
		[UIColor orangeColor],
		[UIColor yellowColor],
		[UIColor greenColor],
		[UIColor blueColor],
		[UIColor purpleColor],
		[UIColor grayColor],
		[UIColor whiteColor]
	};
	
	// For each band
	UIScrollView * bands[] = {band1, band2, band3, band4};
	for (int band = 0; band < 4; band++)
	{	
		// Configure it's UIScrollView control
		UIScrollView * bandCtrl = bands[band];
		bandCtrl.contentSize = CGSizeMake(bandCtrl.bounds.size.width, bandCtrl.bounds.size.height * nColours);
		bandCtrl.showsVerticalScrollIndicator = NO;
		
		// And add the coloured rectangles as subviews
		for (int nColour = 0; nColour < nColours; nColour++)
		{
			UIView * colorView = [[UIView alloc] initWithFrame:CGRectMake(0, bandCtrl.bounds.size.height * nColour, bandCtrl.bounds.size.width, bandCtrl.bounds.size.height)];
			colorView.backgroundColor = colours[nColour];
			colorView.userInteractionEnabled = NO;
			
			[bandCtrl addSubview:colorView];
			[colorView release];
		}
	}
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

- (void) band:(int)bandIndex didSelectColor:(int)colorIndex
{
	NSLog(@"Band %d selected colour at index %d", bandIndex, colorIndex);
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
	// called on finger up if user dragged. decelerate is true if it will continue moving afterwards
	if (!decelerate)
	{
		[self band:scrollView.tag didSelectColor:scrollView.contentOffset.y / scrollView.bounds.size.height];
	}
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
	// called when scroll view grinds to a halt
	[self band:scrollView.tag didSelectColor:scrollView.contentOffset.y / scrollView.bounds.size.height];
}

- (void)dealloc {
	[band1 release];
	[band2 release];
	[band3 release];
	[band4 release];
    [super dealloc];
}

@end
