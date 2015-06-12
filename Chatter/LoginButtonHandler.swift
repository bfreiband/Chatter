//
//  LoginButtonHandler.swift
//  Chatter
//
//  Created by Ben Freiband on 6/11/15.
//  Copyright (c) 2015 Ben Freiband. All rights reserved.
//

import Foundation
import FBSDKLoginKit

class LoginButtonHandler{
    
    var optionalFacebookLoginButton : FBSDKLoginButton?
    var facebookLoginButton : FBSDKLoginButton {
        if let loginButtonFromOptional = optionalFacebookLoginButton {
            return loginButtonFromOptional
        }
        else
        {
            optionalFacebookLoginButton = FBSDKLoginButton()
            return self.facebookLoginButton
        }
    }
}
