
#import "ViewController2.h"
#import "BTCrashMeView.h"

@interface ViewController2 ()<UIActionSheetDelegate>

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    [((BTCrashMeView *)self.view) setVcName:@"vc2"];
}

- (IBAction)showactionsheet:(id)sender {
//    UIActionSheet *sheet = [[UIActionSheet alloc] initWithTitle:@"hello"
//                                                       delegate:self
//                                              cancelButtonTitle:nil
//                                         destructiveButtonTitle:nil
//                                              otherButtonTitles:@"push me",nil];

    UIActionSheet *sheet = [[UIActionSheet alloc] init];
    sheet.title = @"hello";
    sheet.delegate = self;
    [sheet addButtonWithTitle:@"push me"];


    [sheet showFromRect:[sender frame] inView:self.view animated:YES];
}

- (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)dealloc {
    NSLog(@"vc2 dealloc");
}

@end
