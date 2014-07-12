//
//  TLViewController.m
//  sampleAna
//
//  Created by Tilak_G on 08/05/14.
//  Copyright (c) 2014 Tilak_G. All rights reserved.
//

#import "TLViewController.h"

@interface TLViewController ()

@end

@implementation TLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor blueColor];
	// Do any additional setup after loading the view, typically from a nib.
    NSString *tmpStr1;
    NSString *tmpStr2;
    NSMutableArray *newArr=[[NSMutableArray alloc] init];
    BOOL Var=NO;
    int i,j;
    NSArray *arr1=[[NSArray alloc] initWithObjects:@"star",@"rats",@"arts",@"car",@"rac",@"arc",@"abcde",@"bcdea",@"cdeab", nil];
    for (i=0; i<[arr1 count]; i++) {
        for (j=i+1; j<[arr1 count]; j++) {
            tmpStr1=[arr1 objectAtIndex: i];
            tmpStr2=[arr1 objectAtIndex:j];

            if ( tmpStr1.length == tmpStr2.length) {
                [newArr addObject:tmpStr1];
                for (int k=0; k<tmpStr2.length; k++) {
                    if ([tmpStr1 rangeOfString:[NSString stringWithFormat:@"%C",[tmpStr2 characterAtIndex:k]]].location == NSNotFound) {
                        Var=NO;
                    } else {
                        Var=YES;
                    }
                }
                if (Var) {
                    [newArr addObject:tmpStr2];
                }
            }
            else
            {
                i=j;
                NSLog(@"NewArr::>%@",[[NSSet setWithArray:newArr] allObjects]);
                [newArr removeAllObjects];
                continue;
            }
            
        }
    }
    NSLog(@"Arr2::%@",[[NSSet setWithArray:newArr] allObjects]);
    NSLog(@"Arr1::%@",arr1);
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
