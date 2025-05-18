//
//  UserListView.swift
//  week3
//
//  Created by 신연주 on 4/23/25.
//

import SwiftUI

struct UserListView: View {
    @State private var users = [
        User(name: "Alice", age: 24),
        User(name: "Bob", age: 30),
        User(name: "Charlie", age: 28),
    ]
    
    @State private var selectedUser: User?
    
    var body: some View {
        NavigationView {
            List {
                ForEach($users) { $user in
                    NavigationLink(destination: UserEditView(user: $user)) {
                        HStack {
                            Text(user.name)
                            Spacer()
                            Text("\(user.age) years old")
                        }
                    }
                }
            }
            .navigationTitle("Users")
        }
    }
}

#Preview {
    UserListView()
}
