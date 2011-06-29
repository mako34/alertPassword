//
//  alertPromptViewController.h
//  alertPrompt
//
//  Created by Manuel Betancurt on 26/04/11.
//  Copyright 2011 HYPER. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface alertPromptViewController : UIViewController <UIAlertViewDelegate>{

	UILabel *label;		
}
@property (nonatomic, retain) IBOutlet UILabel *label;
-(IBAction)boton;

@end

