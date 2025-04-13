//
//  SignupView.swift
//  starbucks
//
//  Created by 신연주 on 3/31/25.
//

import SwiftUI

struct SignupView: View {
    @State var viewModel: SignupViewModel = .init()
    
    var screenSize: CGRect {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return .zero
        }
        return windowScene.screen.bounds
    }
    
    var body: some View {
        VStack{
            UserTextFieldGroup
            
            Spacer()
            
            GreenButton(name:"생성하기",action: viewModel.signupButton)
            
        }
        .padding(.top,210)
        .padding(.bottom,72)
        .padding(.horizontal,19)
    }
    
    private var UserTextFieldGroup: some View {
        VStack(spacing: 49){
            makeTextField(name: "닉네임", text: $viewModel.user.nickName)
            
            makeTextField(name: "이메일", text: $viewModel.user.email)
            
            makeTextField(name: "비밀번호", text: $viewModel.user.password)
        }
    }
    
    // 텍스트 필드 그룹 함수
    private func makeTextField(name: String, text: Binding<String>) -> some View {
        VStack(spacing: 9){
            TextField(name, text: text)
                .foregroundColor(Color(.gray00))
                .font(.mainTextRegular18)
            
            Divider()
                .background(Color(.gray00))
        }
    }
}

#Preview {
    SignupView()
}
