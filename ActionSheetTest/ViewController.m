#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)push:(id)sender {
    ViewController2 *vc2 = [[ViewController2 alloc] init];
    [self.navigationController pushViewController:vc2 animated:YES];
}

@end
