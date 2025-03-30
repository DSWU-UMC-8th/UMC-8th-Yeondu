//
//  LoginView.swift
//  starbucks
//
//  Created by 신연주 on 3/23/25.
//

import SwiftUI
import Observation

struct LoginView: View {
    @StateObject var loginModel = LoginModel()
    @FocusState private var isInputFocused: Field?
    
    enum Field {
        case id
        case password
    }
    
    var body: some View {
        VStack{
            Spacer().frame(height: 104)
            MainTitleGroup
            Spacer()
            MainLoginGroup
            Spacer()
            BottomLoginGroup
            Spacer().frame(height: 62)
        }
        .padding(.horizontal, 19)
    }
    
    // 상단 로고
    private var MainTitleGroup: some View {
        VStack(alignment:.leading){
            Image(.starbucksLogo)
                .resizable()
                .frame(width:97, height:95)
            
            Spacer().frame(height: 28)
            
            Text("안녕하세요.")
                .font(.mainTextExtraBold24)
            Text("스타벅스입니다.")
                .font(.mainTextExtraBold24)
            
            Spacer().frame(height: 19)
            
            Text("회원 서비스 이용을 위해 로그인 해주세요.")
                .foregroundStyle(Color(.gray01))
                .font(.mainTextMedium16)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    //로그인
    private var MainLoginGroup: some View{
        VStack(alignment:.leading){
            TextField("아이디", text: $loginModel.id)
                .font(.mainTextRegular13)
                .foregroundStyle(Color(.black01))
                .textInputAutocapitalization(.never) // 첫 글자 대문자 방지
                .focused($isInputFocused, equals: .id)
            
            Divider()
                .background(isInputFocused == .id ? Color(.green00) : Color(.gray00))
            
            Spacer().frame(height: 47)
            TextField("비밀번호", text: $loginModel.password)
                .font(.mainTextRegular13)
                .foregroundStyle(Color(.black01))
                .textInputAutocapitalization(.never) // 첫 글자 대문자 방지
                .focused($isInputFocused, equals: .password)
            
            Divider()
                .background(isInputFocused == .password ? Color(.green00) : Color(.gray00))
            
            Button(action: {
                print("버튼을 클릭했습니다")
            }, label: {
                Text("로그인하기")
                    .foregroundColor(.white)
                    .font(.mainTextMedium16)
            })
            .frame(maxWidth: .infinity)
            .padding(.vertical, 13.5)
            .background(Color(.green01))
            .cornerRadius(20)
        }
    }
                        
    // 하단 로그인
    private var BottomLoginGroup: some View{
        VStack{
            Text("이메일로 회원가입하기")
                .underline()
                .foregroundStyle(Color(.gray04))
                .font(.mainTextRegular12)
            Image(.kakaoLogin)
            Spacer().frame(height: 19)
            Image(.appleLogin)
        }
    }
}

#Preview {
    LoginView()
}
