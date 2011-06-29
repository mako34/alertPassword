//
//  AlertPrompt.h
//  alertPrompt
//
//  Created by Manuel Betancurt on 26/04/11.
//  Copyright 2011 HYPER. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface AlertPrompt : UIAlertView {
	UITextField *textField;

}
@property (nonatomic, retain) UITextField *textField;
@property (readonly) NSString *enteredText;
-(id)initWithTitle:(NSString *)title message:(NSString *)message delegate:(id)delegate cancelButtonTitle:(NSString *)cancelButtonTitle okButtonTitle:(NSString *)okButtonTitle;


@end
