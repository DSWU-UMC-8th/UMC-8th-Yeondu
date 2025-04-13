//
//  ParentView.swift
//  week2
//
//  Created by 신연주 on 3/30/25.
//

import SwiftUI

struct ParentView: View {
    
    @StateObject var userViewModel: UserViewModel = .init()
    
    var body: some View{
        NavigationStack {
            VStack {
                Text("현재 사용자 = \(userViewModel.userName)")
                    .font(.title)
                NavigationLink("프로필화면으로 이동", destination: ProfileView().environmentObject(userViewModel))
                NavigationLink("설정화면으로 이동", destination: SettingView().environmentObject(userViewModel))
            }
        }
    }
}


#Preview {
    ParentView()
}
