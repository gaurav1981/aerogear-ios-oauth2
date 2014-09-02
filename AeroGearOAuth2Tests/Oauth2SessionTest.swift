/*
* JBoss, Home of Professional Open Source.
* Copyright Red Hat, Inc., and individual contributors
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

import UIKit
import XCTest
import AeroGearOAuth2

class OAuth2SessionTests: XCTestCase {

    //let dictionary: [String:Any] = [ "accessToken": "ACCESS_TOKEN"]
    //let dictionaryComplete: [String:Any] = ["id": "MY_FACEBOOK_ID", "accessToken": "ACCESS_TOKEN", "accessTokenExpirationDate": "12/02/2021", "refreshToken": "REFRESH_TOKEN"]
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInitFromDictionary() {
        let session = OAuth2Session(accountId: "MY_FACEBOOK_ID")
        XCTAssert(session.accountId == "MY_FACEBOOK_ID", "wrong account id")
    }
    
    func testInitFromDictionaryComplete() {
        let session = OAuth2Session(accountId: "MY_FACEBOOK_ID", accessToken: "ACCESS")
        XCTAssert(session.accountId == "MY_FACEBOOK_ID", "wrong account id")
    }
    
}