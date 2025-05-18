//
//  UserEditView.swift
//  week3
//
//  Created by 김건 on 4/23/25.
//

import SwiftUI

struct UserEditView: View {
    @Binding var user: User
    
    var body: some View {
        Form{
            TextField("name",text: $user.name)
            Stepper("Age: \(user.age)", value: $user.age, in: 18...100)
        }
    }
}

