//
//  ViewController.m
//  Demo XCode-Exerc
//
//  Created by Jean Smits on 14/08/15.
//  Copyright (c) 2015 VDAB. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *counter;
@property (weak, nonatomic) IBOutlet UIButton *myButton;// als je deze veranderd van naam moet dit ook veranderd worde in storyboard bij connections.
@property (assign, nonatomic) NSInteger clickCount; // assign omdat he een primitive type is en we dus ook geen + gebruiken.

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"My First Log");
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clicked:(id)sender{
    if ([self.view.backgroundColor isEqual:[UIColor redColor]]) {
        [self.view setBackgroundColor:[UIColor yellowColor]];
        [self.myButton setTitleColor:[UIColor redColor] forState: UIControlStateNormal];
    }
    else{
        [self.view setBackgroundColor:[UIColor redColor]];
        // == self.view.backgroundColor:[UICOLOR redColor]
        [self.myButton setTitleColor:[UIColor yellowColor] forState: UIControlStateNormal];
    }
    
    self.clickCount++;
    self.counter.text = [NSString stringWithFormat:@"You clicked %ld times.", (long)self.clickCount];
    
    
    // Vierkante haakjes is als je methodes aanroept. UIColor is bijvoorbeeld een methode met als variabele dan redColor,
    // De haakjes der helemaal rond is omdat je de setBackgroundColor of isEqual aanroept en dus is alles een methode
    // : is voor de parameter die erna dus komt.
   }

@end
