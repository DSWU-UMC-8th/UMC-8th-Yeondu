//
//  UserListView2.swift
//  week3
//
//  Created by 신연주 on 4/23/25.
//

import SwiftUI
import Observation

struct UserListView2: View {
    @State private var userViewModel: UserViewModel = .init()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(userViewModel.users.indices, id: \.self) { index in
                    NavigationLink(destination: UserEditView(user: $userViewModel.users[index])) {
                        HStack {
                            Text(userViewModel.users[index].name)
                            Spacer()
                            Text("\(userViewModel.users[index].age) years old")
                        }
                    }
                }
            }
            .navigationTitle("Users")
        }
    }
}
            
#Preview {
    UserListView2()
}
