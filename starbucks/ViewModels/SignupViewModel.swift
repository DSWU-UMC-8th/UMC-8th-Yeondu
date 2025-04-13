//
//  SignupViewModel.swift
//  starbucks
//
//  Created by 신연주 on 3/31/25.
//

import Foundation
import SwiftUI

class SignupViewModel{
    @AppStorage("nickName") private var nickName: String = ""
    @AppStorage("email") private var email: String = ""
    @AppStorage("password") private var password: String = ""
    
    var user = SignupModel(nickName: "",email: "", password: "")
    
    public func signupButton(){
        user.nickName = nickName
        user.email = email
        user.password = password
    }
}
