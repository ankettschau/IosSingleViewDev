//
//  ViewController.m
//  IosSingleViewDev
//
//  Created by Jochen Bauer on 03.01.14.
//  Copyright (c) 2014 Jochen Bauer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *header;
@property (weak, nonatomic) IBOutlet UITextField *inputUsername;
@property (weak, nonatomic) IBOutlet UITextField *inputPassword;
@property NSString *storedUsername;
@property NSString *storedPassword;
@property NSString *username;
@property NSString *password;

- (id)init;
- (IBAction)enterButton:(id)sender;
- (BOOL)checkLogin:(NSString*)name withPassword:(NSString*) password;

@end

@implementation ViewController

-(id)init {
    self = [super init];
    if (self != nil){
        self.storedUsername = @"User";
        self.storedPassword = @"Pass";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)enterButton:(id)sender {
    NSLog(@"BP0");
    BOOL isLoggedIn = [self checkLogin:self.username withPassword:self.password];
    if (isLoggedIn){
        self.header.text = @"Profil";
        NSLog(@"BP9");
    }
}

- (BOOL)checkLogin:(NSString*)name withPassword:(NSString*) password {
    NSLog(@"BP0");
    if ((name == self.storedUsername) && (password == self.storedPassword)){
        return true;
    }
    return false;
}


@end
