//
//  AlertPrompt.m
//  alertPrompt
//
//  Created by Manuel Betancurt on 26/04/11.
//  Copyright 2011 HYPER. All rights reserved.
//

#import "AlertPrompt.h"


@implementation AlertPrompt
@synthesize textField, enteredText;

-(id)initWithTitle:(NSString *)title message:(NSString *)message delegate:(id)delegate cancelButtonTitle:(NSString *)cancelButtonTitle okButtonTitle:(NSString *)okButtonTitle{

	if (self = [super initWithTitle:title message:message delegate:delegate cancelButtonTitle:cancelButtonTitle otherButtonTitles:okButtonTitle, nil])
	{
		UITextField *theTextField = [[UITextField alloc] initWithFrame:CGRectMake(12.0, 45.0, 260.0, 25.0)];//45 
		[theTextField setBackgroundColor:[UIColor whiteColor]]; 
		[self addSubview:theTextField];
		self.textField = theTextField;
		[theTextField release];
		CGAffineTransform translate = CGAffineTransformMakeTranslation(0.0, 130.0); 
		[self setTransform:translate];
		//CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)
	}
	return self;
}

- (void)show
{
	[textField becomeFirstResponder];
	[textField setKeyboardType:UIKeyboardTypePhonePad ];
	textField.secureTextEntry = YES;

	[super show];
}
- (NSString *)enteredText
{
	return textField.text;
}
- (void)dealloc
{
	[textField release];
	[super dealloc];
}


@end
