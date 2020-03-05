#import <XCTest/XCTest.h>
#include <stdio.h>

@interface bitrise_testTests : XCTestCase
{
    char buffer[1024];
}
@end

@implementation bitrise_testTests

- (void)setUp {
}

- (void)tearDown {
    freopen("/dev/tty", "w", stdout);

    NSString* str = [NSString stringWithUTF8String:buffer];
    NSURL* url = [NSURL URLWithString:str];
    XCTAttachment* attachment = [XCTAttachment attachmentWithContentsOfFileAtURL:url];
    attachment.lifetime = XCTAttachmentLifetimeKeepAlways;
    [self addAttachment:attachment];
}

- (void)testAsd {
    const char* a = getenv("TMPDIR");
    snprintf(buffer, 1024, "file://%s%s", a, "foo.txt");
    FILE* result = freopen(buffer, "w+", stdout);
    XCTAssert(result != NULL);

#ifdef __arm64__
    printf("************************* ARM64\n");
    XCTAssert(true, "ARM64");
#elif __x86_64__
    printf("************************* x86-64\n");
    XCTAssert(true, "x86-64");
#endif
}
@end
