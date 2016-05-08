//
//  GCDWebServer_Test.m
//  GCDWebServer_Test
//
//  Created by TYPCN on 2016/5/4.
//
//

#import <XCTest/XCTest.h>
#import "GCDWebServerFunctions.h"

@interface GCDWebServer_Test : XCTestCase

@end

@implementation GCDWebServer_Test

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testMimeType {
    // I just wish it don't crash....
    NSLog(@"Starting mime type test");
    NSArray *testData = @[ @"js", @"css", @"html", @"m3u8", @"ts", @"wtf", @"asdsadas", @"asdiouoi187u234ioejhdklahskjh2198eyhiousaghdbkjsadhkjahsd"
                          @"*(^#&*^T&S*%D^&AGBSHJ!G#&*(HASI*&UYAS*(^&FD%&^!#%&^!@%#&!%$#*(!&@#(*!&", @"😀",@"",@"\0",@"\0\1\2\3\4\5\6\7\8\n\r\9"
                          ];
    for(id str in testData){
        GCDWebServerGetMimeTypeForExtension(str);
    }
    GCDWebServerGetMimeTypeForExtension(@"");
    GCDWebServerGetMimeTypeForExtension(NULL);
    GCDWebServerGetMimeTypeForExtension(nil);
}

@end
