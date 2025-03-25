//
//  UserModel.swift
//  week1
//
//  Created by 신연주 on 3/20/25.
//

import Foundation

struct UserModel {
    var name: String
    var age: Int
    
    mutating func increaseAge(){
        self.age += 1
    }
    
    mutating func decreaseAge(){
        self.age -= 1
    }
}
