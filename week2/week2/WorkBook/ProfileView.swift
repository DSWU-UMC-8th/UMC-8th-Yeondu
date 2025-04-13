//
//  ProfileView.swift
//  week2
//
//  Created by 신연주 on 3/30/25.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var userViewModel: UserViewModel
    
    var body: some View {
        Text("프로필 화면")
            .font(.largeTitle)
        Text("사용자 이름 = \(userViewModel.userName)")
            .font(.title)
        Button("이름 변경"){
            userViewModel.userName = "새로운 사용자"
        }
        .padding()
        .background(Color.blue)
        .foregroundColor(.white)
    }
}

#Preview {
    ProfileView()
        .environmentObject(UserViewModel())
}
