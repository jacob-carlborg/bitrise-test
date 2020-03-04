#import <XCTest/XCTest.h>
#include <stdio.h>

@interface bitrise_testTests : XCTestCase

@end

@implementation bitrise_testTests

- (void)setUp {
    const char* a = getenv("TMPDIR");
    char buffer[1024];
    snprintf(buffer, 1024, "%s%s", a, "foo.txt");
    freopen(buffer, "w+", stdout);
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
