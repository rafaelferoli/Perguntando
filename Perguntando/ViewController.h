//
//  ViewController.h
//  Perguntando
//
//  Created by Rafael Fernandes de Oliveira Carvalho on 2/23/15.
//  Copyright (c) 2015 Rafael Fernandes de Oliveira Carvalho. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *questionLabel;

- (IBAction)questionButton:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *answerLabel;

- (IBAction)answerButton:(id)sender;

@property (weak, nonatomic) IBOutlet UIImageView *images;



@end

