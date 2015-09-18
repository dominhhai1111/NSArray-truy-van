//
//  ViewController.m
//  Array
//
//  Created by Do Minh Hai on 8/17/15.
//  Copyright (c) 2015 Do Minh Hai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end
@implementation Footballplayer

-(instancetype) init: (NSString*) fullName and:(NSString *)ID
{
    self = [super init];
    
    if (self) {
        self.fullName = fullName;
        self.ID = ID;
    }
    return self;
}
@end
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Footballplayer* player[16];
    player[1]  = [[Footballplayer alloc] init:@"Marc Stegen" and:@"1"];
    player[2] = [[Footballplayer alloc] init:@"Gerard Pique" and:@"2"];
    player[3] = [[Footballplayer alloc] init:@"Ivan Rakitic" and:@"3"];
    player[4] = [[Footballplayer alloc] init:@"sergio Busquets" and:@"4"];
    player[5] = [[Footballplayer alloc] init:@"Pedro" and:@"5"];
    player[6] = [[Footballplayer alloc] init:@"Iniesta" and:@"6"];
    player[7] = [[Footballplayer alloc] init:@"Squarez" and:@"7"];
    player[8] = [[Footballplayer alloc] init:@"Messi" and:@"8"];
    player[9] = [[Footballplayer alloc] init:@"Neymar" and:@"9"];
    player[10] = [[Footballplayer alloc] init:@"Rafinha" and:@"10"];
    player[11] = [[Footballplayer alloc] init:@"Bravo" and:@"11"];
    player[12] = [[Footballplayer alloc] init:@"Mascherano" and:@"12"];
    player[13] = [[Footballplayer alloc] init:@"Bartra" and:@"13"];
    player[14] = [[Footballplayer alloc] init:@"Douglas" and:@"14"];
    player[15]  = [[Footballplayer alloc] init:@"Alba" and:@"15"];
    player[0] = [[Footballplayer alloc] init:@"Roberto" and:@"16"];
    
       
    int a[11];
    a[0]= arc4random()%16;
    NSLog(@"%@%d%@%@",@"player",1,@": ",player[a[0]].fullName);
    bool same=NO ;
    for (int i=1; i<11; i++){
        a[i]= arc4random()%16;
        for (int m=0; m<i; m++)
        {
            if (a[i]==a[m])
            {
                m=i;
                same =YES;
            }
        }
    
        if (!same ) {
            NSLog(@"%@%d%@%@",@"player",i+1,@": ",player[a[i]].fullName);
        }else
        {
            same = NO;
            i=i-1;
        }
    }

}


@end
