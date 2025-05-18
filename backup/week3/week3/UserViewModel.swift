//
//  UserViewModel.swift
//  week3
//
//  Created by 신연주 on 4/23/25.
//

import SwiftUI

@Observable
class UserViewModel {
    var users = [
        User(name: "Alice", age: 24),
        User(name: "Bob", age: 30),
        User(name: "Charlie", age: 28)
    ]
}


