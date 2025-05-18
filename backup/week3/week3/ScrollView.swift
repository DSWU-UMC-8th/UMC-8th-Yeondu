//
//  ScrollView1.swift
//  week3
//
//  Created by 김건 on 4/23/25.
//

import SwiftUI

struct ScrollView1: View {
    let rows = Array(repeating: GridItem(.fixed(80)), count: 2)

        var body: some View {
            ScrollView {
                VStack (spacing: 20) {
                    ForEach(0..<50) { index in
                        Text("Item \(index)")
                            .frame(maxWidth: .infinity)
                            .background(Color.blue.opacity(0.3))
                    }
                }
            }
            .scrollIndicators(.visible, axes: .vertical) // 스크롤 표시기 활성화
            .safeAreaPadding(.horizontal) // 안전 영역(safe area) 기준으로 좌우에 여백 주는 수정자
        }
}

#Preview {
    ScrollView1()
}
