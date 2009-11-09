#import <UIKit/UIKit.h>

#import "SBStatus.h"


@interface SBStatusCell : UITableViewCell {
    UILabel *userName;
    UILabel *text;
    UILabel *service;
    UILabel *date;
    UILabel *favorited;
    UILabel *photo;
    UIImageView *icon;

    NSDateFormatter *formatter;
}

- (void)updateWithStatus:(SBStatus *)status;

@end
