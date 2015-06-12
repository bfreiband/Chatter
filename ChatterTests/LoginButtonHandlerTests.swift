//
//  LoginButtonHandlerTests.swift
//  Chatter
//
//  Created by Ben Freiband on 6/11/15.
//  Copyright (c) 2015 Ben Freiband. All rights reserved.
//

import Chatter
import XCTest
import FBSDKLoginKit

class LoginButtonHandlerTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testGetLoginButtonReturnsLoginButtonObject(){
        
        let loginButtonHandler = LoginButtonHandler()
        
        XCTAssertNil(loginButtonHandler.optionalFacebookLoginButton,"optionalFacebookLoginButton should not have a value until the first time facebookLoginButton is accessed")
        
        var receivedLoginButton = loginButtonHandler.facebookLoginButton
        
        XCTAssertNotNil(loginButtonHandler.optionalFacebookLoginButton, "optionalFacebookLoginButton should have a value after the first time facebookLoginButton is accessed")
        
        XCTAssertTrue((receivedLoginButton as Any) is FBSDKLoginButton, "facebookLoginButton must return a FBSDKLoginButton")
    }

}
