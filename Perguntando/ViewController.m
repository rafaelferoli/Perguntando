//
//  ViewController.m
//  Perguntando
//
//  Created by Rafael Fernandes de Oliveira Carvalho on 2/23/15.
//  Copyright (c) 2015 Rafael Fernandes de Oliveira Carvalho. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property NSArray *questions;
@property NSArray *answers;
@property NSArray *pictures;
@property NSDictionary *dictionary;
@property NSDictionary *imageForAnswer;
@property NSInteger index;


@end

@implementation ViewController


@synthesize answerLabel;
@synthesize questionLabel;



- (void)viewDidLoad {
    [super viewDidLoad];
    
    _questions = @[@"Quanto é 7 + 7?", @"Qual é a capital do Brasil?", @"Qual é a cor do céu?"];
    
    _answers = @[@"14", @"Brasília", @"Azul"];
    
    _dictionary = [[NSDictionary alloc] initWithObjects:_answers forKeys:_questions];

    
    _pictures = @[
                  [UIImage imageNamed:@"image1"],
                  [UIImage imageNamed:@"image2"],
                  [UIImage imageNamed:@"image3"]
                  ];
    
    _imageForAnswer = [[NSDictionary alloc] initWithObjects:_pictures forKeys:_answers];
    
    _index = 0;
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


- (IBAction)questionButton:(id)sender {
    
    answerLabel.text = @"???";
    _images.image = nil;
    
    questionLabel.text =
    _questions[_index];
    
    _index++;
    if (_index == _questions.count)
        _index = 0;
    
    
    
}

- (IBAction)answerButton:(id)sender {
    
    answerLabel.text =
    _dictionary[questionLabel.text];
    
    _images.image = _imageForAnswer[answerLabel.text];
    
    

}


@end
