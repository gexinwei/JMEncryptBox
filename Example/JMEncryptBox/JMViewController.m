//
//  JMViewController.m
//  JMEncryptBox
//
//  Created by gexinwei on 02/19/2019.
//  Copyright (c) 2019 gexinwei. All rights reserved.
//

#import "JMViewController.h"
#import <JMEncryptBox/JMEncryptBox.h>

@interface JMViewController ()

@property (nonatomic, strong) IBOutlet UITextField  *field;

@property (nonatomic, strong) IBOutlet UILabel  *label;

@property (nonatomic, strong) NSString  *encryptResult;

@end

@implementation JMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.field.text = @"这里输入需要被加密内容";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doEncrypt:(id)sender {
    NSString *source = self.field.text;
    self.encryptResult = [JMEncryption encryptToBase64:source];
    self.label.text = [NSString stringWithFormat:@"加密前：%@ \n加密后：%@", source, self.encryptResult];
}

- (IBAction)doDecrypt:(id)sender {
    NSString *decryptResult = [JMEncryption decryptFromBase64:self.encryptResult];
    NSString *desc = [NSString stringWithFormat:@"\n解密后：%@",decryptResult];
    self.label.text = [self.label.text stringByAppendingString:desc];
}



@end
