#import <XCTest/XCTest.h>

@interface bitrise_testTests : XCTestCase

@end

@implementation bitrise_testTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
#ifdef __arm64__
    printf("***************************** ARM64\n");
#elif __x86_64__
    printf("***************************** X86-64\n");
#endif
}

@end
