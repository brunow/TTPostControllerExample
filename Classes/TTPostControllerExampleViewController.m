//
//  TTPostControllerExampleViewController.m
//  TTPostControllerExample
//
//  Created by cesar4 on 16/04/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TTPostControllerExampleViewController.h"

@implementation TTPostControllerExampleViewController


- (void)openPost {
	TTPostController *postController = [[TTPostController alloc] init];
	postController.delegate = self;
	postController.textView.text = @"The message";
	postController.title = @"Title";
	[postController showInView:self.view animated:YES];
	[postController release];
}

- (void)postController:(TTPostController *)postController didPostText:(NSString *)text withResult:(id)result {
	label.text = text;
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	UIButton *btnPost = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	[btnPost setTitle:@"open post" forState:UIControlStateNormal];
	btnPost.frame = CGRectMake(50, 50, 100, 30);
	[btnPost addTarget:self action:@selector(openPost) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:btnPost];
	
	label = [[UILabel alloc] initWithFrame:CGRectMake(0, 230, 320, 230)];
	[self.view addSubview:label];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[label release];
	
    [super dealloc];
}

@end
