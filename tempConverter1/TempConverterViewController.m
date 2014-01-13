//
//  TempConverterViewController.m
//  tempConverter1
//
//  Created by Sandip Patel on 1/12/14.
//  Copyright (c) 2014 Y.CORP.YAHOO.COM\cmaheta84. All rights reserved.
//

#import "TempConverterViewController.h"

@interface TempConverterViewController ()
@property (weak, nonatomic) IBOutlet UITextField *fieldF;
- (IBAction)onFEdit:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *fieldC;
- (IBAction)onCEdit:(id)sender;
- (IBAction)onConvert:(id)sender;

@end

@implementation TempConverterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Temp Converter";
    }
    return self;
}

-(id)initWithCoder:(NSCoder *) aDecoder
{
    self = [super initWithCoder:aDecoder];
    if(self)
    {
        self.title = @"Temp Converter";
        self.fieldC.text = @"0.0";
        self.fieldF.text = @"0.0";
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onFEdit:(id)sender {
    self.fieldC.text = nil;
}
- (IBAction)onCEdit:(id)sender {
    self.fieldF.text = nil;
}

- (IBAction)onConvert:(id)sender {
    NSString *fValue = self.fieldF.text;
    NSString *cValue = self.fieldC.text;
    
    if([fValue isEqualToString:@""]) {
        float c = [cValue floatValue]*9/5;
        float constant = 32;
        float temp = c+constant;
        fValue = [NSString stringWithFormat:@"%0.4f",temp];
        self.fieldF.text = fValue;
    } else {
        float f = [fValue floatValue]-32.0;
        float constant = 5.0/9.0;
        float temp = f*constant;
        cValue = [NSString stringWithFormat:@"%0.4f",temp];
        self.fieldC.text = cValue;
    }

}
@end
