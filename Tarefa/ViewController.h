//
//  ViewController.h
//  Tarefa
//
//  Created by Felipe Vasconcelos on 1/10/14.
//  Copyright (c) 2014 Felipe Vasconcelos. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *display;

@property (strong, nonatomic) IBOutlet UILabel *question;

@property (nonatomic, retain) IBOutlet UIImageView *img;

@property (nonatomic, retain) NSTimer *timer;

-(IBAction) correct;

-(IBAction) wrong;


@end
