//
//  mParticle_VersionToIntTest.m
//  mParticle_CleverTapTests
//
//  Created by Ben Baron on 1/5/24.
//  Copyright © 2024 mParticle. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MPKitCleverTap.h"

@interface MPKitCleverTap()
+ (int)intVersion:(NSString *)version;
@end

@interface mParticle_VersionToIntTest : XCTestCase
@end

@implementation mParticle_VersionToIntTest

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testVersionToInt {
    XCTAssertEqual([MPKitCleverTap intVersion:@"8.2.0"], 80200);
    XCTAssertEqual([MPKitCleverTap intVersion:@"8.5.10"], 80510);
    XCTAssertEqual([MPKitCleverTap intVersion:@"8.10.14"], 81014);
    XCTAssertEqual([MPKitCleverTap intVersion:@"9.0.0"], 90000);
    XCTAssertEqual([MPKitCleverTap intVersion:@"9.0"], 0);
    XCTAssertEqual([MPKitCleverTap intVersion:@"9"], 0);
    XCTAssertEqual([MPKitCleverTap intVersion:@"9.0.0.0"], 0);
    XCTAssertEqual([MPKitCleverTap intVersion:@"10.123.5"], 1012305);
}


@end
