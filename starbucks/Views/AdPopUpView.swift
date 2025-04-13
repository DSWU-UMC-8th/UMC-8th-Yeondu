//
//  AdPopUpView.swift
//  starbucks
//
//  Created by 신연주 on 3/31/25.
//

import SwiftUI

struct AdPopUpView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack{
            Image(.ad)
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: 720)
                .aspectRatio(contentMode: .fit)
                .ignoresSafeArea(.all)
            
            Spacer()
            
            BottomButton
        }
    }
    
    private var BottomButton: some View {
        VStack(alignment: .trailing){
            GreenButton(name: "자세히 보기",action: {print("자세히 보기")})
            
            Button(action:{
                dismiss()
            }, label: {
                Label("닫기", systemImage: "xmark")
                    .font(.mainTextLight14)
                    .foregroundColor(Color(.gray05))
            })
            .padding(.trailing,19)
        }
        .padding(.horizontal, 18)
    }
}

#Preview {
    AdPopUpView()
}
