//
//  alertPromptViewController.m
//  alertPrompt
//
//  Created by Manuel Betancurt on 26/04/11.
//  Copyright 2011 HYPER. All rights reserved.
//

#import "alertPromptViewController.h"
#import "AlertPrompt.h"

@implementation alertPromptViewController
@synthesize label;

-(IBAction) boton {
	AlertPrompt *prompt = [AlertPrompt alloc];
	prompt = [prompt initWithTitle:@"Test Prompt" message:@".." delegate:self cancelButtonTitle:@"Cancel" okButtonTitle:@"Login"];
	prompt.transform = CGAffineTransformMakeTranslation(10, 10);
	[prompt show];
	//prompt.frame = CGRectMake(0,0,300,200);

	[prompt release];	
}

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
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


- (void)dealloc {
    [label release];
	[super dealloc];
}

#pragma mark -
- (void)alertView:(UIAlertView *)alertView willDismissWithButtonIndex:(NSInteger)buttonIndex
{
	if (buttonIndex != [alertView cancelButtonIndex])
	{
		NSString *entered = [(AlertPrompt *)alertView enteredText];

		NSLog(@"%@",entered);
		NSString *numero = @"1234";
		
		if ([entered isEqualToString:numero]) {
			NSLog(@"ok");
			label.text = [NSString stringWithFormat:@"You typed: %@", entered];
			
			
			
		}
		else {
			NSLog(@"nanais");
			NSLog(@"%@",numero);
			label.text = [NSString stringWithFormat:@"nanais cucas"];

		}

		
	
	}
}

@end
