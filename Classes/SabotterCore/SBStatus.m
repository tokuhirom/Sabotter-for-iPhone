#import "SBStatus.h"


@implementation SBStatus

@synthesize service;
@synthesize Id;
@synthesize text;
@synthesize loginId;
@synthesize screenName;
@synthesize iconUrl;
@synthesize replyName;
@synthesize replyId;
@synthesize replyMessage;
@synthesize dateTime;
@synthesize favorited;
@synthesize photoUrl;
@synthesize photoThumbnailUrl;

- (id)init {
    if (self = [super init]) {
        Id           = [[NSString alloc] init];
        text         = [[NSString alloc] init];
        loginId      = [[NSString alloc] init];
        screenName   = [[NSString alloc] init];
        iconUrl      = [[NSString alloc] init];
        replyName    = [[NSString alloc] init];
        replyId      = [[NSString alloc] init];
        replyMessage = [[NSString alloc] init];
        dateTime     = [[NSDate alloc] init];
        favorited    = NO;
        photoUrl     = [[NSString alloc] init];
        photoThumbnailUrl = [[NSString alloc] init];
    }

    return self;
}

- (NSComparisonResult)compare:(SBStatus *)status {
    return -([[self dateTime] compare:[status dateTime]]);
}

/*
  Override
*/

- (BOOL)isEqual:(SBStatus *)anObject {
    if ([self service] != [anObject service]) {
        return NO;
    }
    if (![[self Id] isEqualToString:[anObject Id]]) {
        return NO;
    }
    return YES;
}

/*
  Others
*/

- (void)dealloc {
    [Id release];
    [text release];
    [loginId release];
    [screenName release];
    [iconUrl release];
    [replyName release];
    [replyId release];
    [replyMessage release];
    [dateTime release];
    [photoUrl release];
    [photoThumbnailUrl release];
    [super dealloc];
}

@end
