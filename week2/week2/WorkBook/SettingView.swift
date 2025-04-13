//
//  SettingView.swift
//  week2
//
//  Created by 신연주 on 3/30/25.
//

import SwiftUI

struct SettingView: View {
    @EnvironmentObject var userViewModel: UserViewModel
    
    var body: some View {
        Text("설정 화면")
            .font(.largeTitle)
        TextField("사용자 이름 변경", text: $userViewModel.userName)
            .textFieldStyle(RoundedBorderTextFieldStyle())
    }
}

#Preview {
    SettingView()
        .environmentObject(UserViewModel())
}
