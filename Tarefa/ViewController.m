//
//  ViewController.m
//  Tarefa
//
//  Created by Felipe Vasconcelos on 1/10/14.
//  Copyright (c) 2014 Felipe Vasconcelos. All rights reserved.
//


#import "ViewController.h"

@interface ViewController ()

@end

int count=0;

@implementation ViewController;

@synthesize display;

@synthesize question;

@synthesize timer;

@synthesize img;

-(IBAction) correct{
    
    count++;
    
    if ([img.image isEqual: [UIImage imageNamed:@"triangulos.jpg"]] && count!=0){
        UIAlertView *msgm = [[UIAlertView alloc] initWithTitle:@"Parabéns!"
                                                message:[NSString stringWithFormat:@"Você fez %d ponto(s)!", count]
                                                delegate:self
                                                cancelButtonTitle:@"Ok"
                                                otherButtonTitles:nil];
        [msgm show];
    }
    
    if ([img.image isEqual: [UIImage imageNamed:@"triangulos.jpg"]] && count==0){
        UIAlertView *msgm = [[UIAlertView alloc] initWithTitle:@"Que pena"
                                                       message:@"Você não marcou nenhum ponto"
                                                      delegate:self
                                             cancelButtonTitle:@"Ok"
                                             otherButtonTitles:nil];
        [msgm show];
    }
    
    if ([img.image isEqual: [UIImage imageNamed:@"quadrados.jpg"]])
    {
        img.image = [UIImage imageNamed:@"triangulos.jpg"];
        question.text = @"Há mais que 12 triângulos na figura?";
    }
    
    if ([img.image isEqual: [UIImage imageNamed:@"circulos.jpg"]])
    {
        img.image = [UIImage imageNamed:@"quadrados.jpg"];
        question.text = @"Há mais que 20 quadrados na figura?";
    }
    
    display.text = @"Correto!";
    display.textColor = [UIColor colorWithRed:0 green:0.6 blue:0 alpha:0.8];
    timer = [NSTimer scheduledTimerWithTimeInterval:1.2
            target:self
            selector:@selector(Targetmethod:)
            userInfo:nil
            repeats:NO];

}

-(IBAction) wrong{
    
    if ([img.image isEqual: [UIImage imageNamed:@"triangulos.jpg"]] && count!=0){
        UIAlertView *msgm = [[UIAlertView alloc] initWithTitle:@"Parabéns!"
                                                message:[NSString stringWithFormat:@"Você fez %d ponto(s)!", count]
                                                delegate:self
                                                cancelButtonTitle:@"Ok"
                                                otherButtonTitles:nil];
        [msgm show];
    }
    
    if ([img.image isEqual: [UIImage imageNamed:@"triangulos.jpg"]] && count==0){
        UIAlertView *msgm = [[UIAlertView alloc] initWithTitle:@"Que pena"
                                                       message:@"Você não marcou nenhum ponto"
                                                      delegate:self
                                             cancelButtonTitle:@"Ok"
                                             otherButtonTitles:nil];
        [msgm show];
    }
    
    if ([img.image isEqual: [UIImage imageNamed:@"quadrados.jpg"]])
    {
        img.image = [UIImage imageNamed:@"triangulos.jpg"];
        question.text = @"Há mais que 12 triângulos na figura?";
    }
    
    if ([img.image isEqual: [UIImage imageNamed:@"circulos.jpg"]])
    {
        img.image = [UIImage imageNamed:@"quadrados.jpg"];
        question.text = @"Há mais que 20 quadrados na figura?";
    }
    
    display.text = @"Errado!";
    display.textColor = [UIColor redColor];
    timer = [NSTimer scheduledTimerWithTimeInterval:1.2
            target:self
            selector:@selector(Targetmethod:)
            userInfo:nil
            repeats:NO];
}

- (void) Targetmethod: (NSTimer *) theTimer
{
    display.text = nil;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    img.image = [UIImage imageNamed:@"circulos.jpg"];
    question.text = @"Há mais que 5 círculos na imagem?";
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
