#import "CreateArray.h"

@interface CreateArray ()

@end

@implementation CreateArray

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray* arr1 = [[NSArray alloc] init]; // NSArray* arr1 = [NSArray new];
    NSLog(@"arr1 has %ld elements", arr1.count);
    
    NSArray* arr2 = @[@"ABC", @3.14, [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://tacdung69.com/wp-content/uploads/2013/05/tieu-hoa-tot-nho-hanh-la.jpg"]]]];
    NSLog(@"arr2 has %ld elements", arr2.count);
    
    
    NSArray* arr3 = [NSArray arrayWithArray:arr2];  //arr3 and arr2 point to different memory addresses
    NSLog(@"%p - %p", arr2, arr3);
    NSLog(@"%p - %p", arr2[2], arr3[2]);  //arr3 and arr2 contains same elements
    
    NSArray* arr4 = [NSArray arrayWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"data" ofType:@"plist"]];
    NSLog(@"%@", arr4);
    for (NSDictionary* item in arr4) {
        NSLog(@"%@ - %@", item[@"name"], item[@"job"]);
    }
    
    /* You need to upload real plist to public web site */
    NSArray* arr5 = [NSArray arrayWithContentsOfURL:[NSURL URLWithString:@"http://www.facebook.com/karatashi"]];
    
    NSLog(@"%@", arr5);
    
    NSArray* arr6 = [NSArray arrayWithObjects:@1, @2, @3, @4, nil];
    NSLog(@"%@", arr6);
    
    
    //This is not allowed in ARC: Automatic Reference Counting
    //int integerCArray[] = {1, 2, 3, 4, 5};
    //NSArray* arr7 = [[NSArray alloc] initWithObjects: integerCArray count:3];
    
    
}
@end