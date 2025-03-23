//
//  SplashView.swift
//  starbucks
//
//  Created by 신연주 on 3/23/25.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color(red: 1/255, green: 168/255, blue: 98/255))
                .ignoresSafeArea()
            Image(.starbucksLogo)
                .resizable()
                .frame(width: 168, height: 168)
        }
    }
}

#Preview {
    SplashView()
}
