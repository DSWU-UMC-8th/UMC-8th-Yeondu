//
//  AppStorageView.swift
//  week2
//
//  Created by 김건 on 3/30/25.
//

import SwiftUI

struct AppStorageView: View {
    @AppStorage("UserName") private var userName: String = "Shin"
    @AppStorage("userAge") private var userAge: Int = 23
    @AppStorage("isDarkMode") private var isDarkMode: Bool = false

    var body: some View {
        Text("사용자 이름은 = \(userName)!")
            .font(.largeTitle)
        Button("이름 변경"){
            userName = "UMC"
        }
        
        Text("Age: \(userAge)")
            .font(.largeTitle)
        Button("나이 증가"){
            userAge += 1
        }
        
        Toggle("DarkMode",isOn: $isDarkMode)
            .frame(width:  150)
        
    }
}

#Preview {
    AppStorageView()
}
