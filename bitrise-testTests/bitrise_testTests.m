#import <XCTest/XCTest.h>
#include <stdio.h>

@interface bitrise_testTests : XCTestCase

@end

@implementation bitrise_testTests

- (void)setUp {
    freopen("foo.txt", "w+", stdout);
}

- (void)tearDown {
    freopen("/dev/tty", "w", stdout);
}

- (void)testAsd {
#ifdef __arm64__
    printf("************************* ARM64\n");
    XCTAssert(true, "ARM64");
#elif __x86_64__
    printf("************************* x86-64\n");
    XCTAssert(false, "x86-64");
#endif
}
@end
