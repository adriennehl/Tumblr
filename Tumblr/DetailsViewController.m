//
//  DetailsViewController.m
//  Tumblr
//
//  Created by Adrienne Li on 6/25/20.
//  Copyright © 2020 ahli. All rights reserved.
//

#import "DetailsViewController.h"
#import "UIImageView+AFNetworking.h"

@interface DetailsViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *postImageView;
@property (weak, nonatomic) IBOutlet UILabel *textLabel;

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSArray *photos = self.post[@"photos"];
    if (photos){
        NSDictionary *photo = photos[0];

        NSDictionary *originalSize =  photo[@"original_size"];

        NSString *urlString = originalSize[@"url"];

        NSURL *url = [NSURL URLWithString:urlString];
        [self.postImageView setImageWithURL:url];
        self.textLabel.text = self.post[@"caption"];
    }
        
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
