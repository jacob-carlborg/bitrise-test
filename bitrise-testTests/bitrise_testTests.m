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

- (void)testAsd {
#ifdef __arm64__
    printf("************************* ARM64\n");
    XCTAssert(false, "ARM64");
#elif __x86_64__
    printf("************************* x86-64\n");
    XCTAssert(false, "x86-64");
#endif
}

- (void)testFoobar {
    XCTAssert(false);
}

@end
