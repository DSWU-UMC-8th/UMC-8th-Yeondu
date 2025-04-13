//
//  TopView.swift
//  week2
//
//  Created by 신연주 on 3/26/25.
//

import SwiftUI

struct TopView: View {
    @StateObject var viewModel: ViewModel = .init()
    @State private var showBottom = false
    
    var body: some View {
        VStack {
            Text(" 상위뷰입니다")
                .font(.largeTitle)
            Text("Text입력값:\(viewModel.inputString)")
                .font(.largeTitle)
            TextField("텍스트를 입력하세요",text: $viewModel.inputString)
                .background(Color.gray)
            
            Button("하위뷰 부르기") {
                showBottom.toggle()
            }
            .sheet(isPresented: $showBottom) {
                BottomView(viewModel: viewModel)
            }
        }
        
    }
}

#Preview {
    TopView()
}
