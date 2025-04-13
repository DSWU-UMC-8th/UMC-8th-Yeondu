//
//  EnvironmentExampleView.swift
//  week2
//
//  Created by 신연주 on 3/27/25.
//

import SwiftUI

struct EnvironmentExampleView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        Text("현재 색상 모드 = \(colorScheme == .dark ? "다크모드": "라이트모드")")
            .background(colorScheme == .dark ? Color.black: Color.white)
    }
}

#Preview {
    EnvironmentExampleView()
}
