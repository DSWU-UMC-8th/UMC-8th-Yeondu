//
//  CustomButtonView.swift
//  week2
//
//  Created by 신연주 on 3/27/25.
//

import SwiftUI

struct BottomView: View {
    @ObservedObject var viewModel: ViewModel
    
    init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        VStack {
            Text("하위 뷰 입니다.")
            Text("현재 입력된 값 : \(viewModel.inputString)")
            Button("강제 초기화") {
                viewModel.inputString = "초기화됨"
            }
            Spacer()
        }
    }
}
