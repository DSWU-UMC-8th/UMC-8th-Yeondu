//
//  OtherView.swift
//  starbucks
//
//  Created by 신연주 on 4/9/25.
//

import SwiftUI

struct OtherView: View {
    @AppStorage("nickName") private var nickName: String = ""
    private var viewModel: OtherViewModel = .init()
    
    var body: some View {
        VStack(spacing: 41){
            
            MainTitleGroup
            
            MainInfoGroup
            
            PayGroup
            
            CustomerGroup
            
            Spacer()
            
        }
        .background(Color(.white01))
    }
    
    private var MainTitleGroup: some View{
        HStack{
            Text("Other")
                .foregroundStyle(.black)
                .font(.mainTextBold24)
            
            Spacer()
            
            Button(action:{
                print("로그아웃 되었습니다")
            }, label:{
                Image("LogoutIcon")
            })
            .frame(width: 35,height: 35)
        }
        .padding(.horizontal, 23.5)
        .padding(.vertical, 16)
        .background(.white)
    }
    
    private var MainInfoGroup: some View {
        VStack(spacing: 24) {
            VStack(spacing: 5) {
                Text(nickName)
                    .foregroundStyle(Color("green01"))                +
                Text(" 님")
                Text("환영합니다!🙌🏻")
            }
            .font(.mainTextSemiBold24)
            .foregroundStyle(Color(.black02))
            
            HStack(spacing: 10.5){
                UserButton(icon: viewModel.otherUserModel[0].menuIcon, name: viewModel.otherUserModel[0].menuName, action: {print(viewModel.otherUserModel[0].menuName)})
                
                UserButton(icon: viewModel.otherUserModel[1].menuIcon, name: viewModel.otherUserModel[1].menuName, action: {print(viewModel.otherUserModel[1].menuName)})
                
                UserButton(icon: viewModel.otherUserModel[2].menuIcon, name: viewModel.otherUserModel[2].menuName, action: {print(viewModel.otherUserModel[2].menuName)})
            }
            .padding(.horizontal, 60)
        }
    }
    
    
    private var PayGroup: some View {
        VStack(alignment: .leading){
            Text("Pay")
                .font(.mainTextSemiBold18)
                .foregroundStyle(.black)
            
            Spacer().frame(height: 8)
            
            HStack{
                MenuButton(icon: viewModel.otherPayModel[0].menuIcon, name: viewModel.otherPayModel[0].menuName, action: {print(viewModel.otherPayModel[0].menuName)})
                
                Spacer()
                
                MenuButton(icon: viewModel.otherPayModel[1].menuIcon, name: viewModel.otherPayModel[1].menuName, action: {print(viewModel.otherPayModel[1].menuName)})
            }
            .padding(.vertical, 16)
            
            HStack{
                MenuButton(icon: viewModel.otherPayModel[2].menuIcon, name: viewModel.otherPayModel[2].menuName, action: {print(viewModel.otherPayModel[2].menuName)})
                
                Spacer()
                
                MenuButton(icon: viewModel.otherPayModel[3].menuIcon, name: viewModel.otherPayModel[3].menuName, action: {print(viewModel.otherPayModel[3].menuName)})
            }
            .padding(.vertical, 16)
            
            Divider()
                .frame(width: 327)
        }
        .padding(.horizontal,10)
    }
    
    private var CustomerGroup: some View {
        VStack(alignment: .leading){
            Text("고객지원")
                .font(.mainTextSemiBold18)
                .foregroundStyle(.black)
            
            Spacer().frame(height: 8)
            
            HStack{
                MenuButton(icon: viewModel.otherCustomerModel[0].menuIcon, name: viewModel.otherCustomerModel[0].menuName, action: {print(viewModel.otherCustomerModel[0].menuName)})
                
                Spacer()
                
                MenuButton(icon: viewModel.otherCustomerModel[1].menuIcon, name: viewModel.otherCustomerModel[1].menuName, action: {print(viewModel.otherCustomerModel[1].menuName)})
            }
            .padding(.vertical, 16)
            
            HStack{
                MenuButton(icon: viewModel.otherCustomerModel[2].menuIcon, name: viewModel.otherCustomerModel[2].menuName, action: {print(viewModel.otherCustomerModel[2].menuName)})
                
                Spacer()
                
                MenuButton(icon: viewModel.otherCustomerModel[3].menuIcon, name: viewModel.otherCustomerModel[3].menuName, action: {print(viewModel.otherCustomerModel[3].menuName)})
            }
            .padding(.vertical, 16)
            
            HStack{
                MenuButton(icon: viewModel.otherCustomerModel[4].menuIcon, name: viewModel.otherCustomerModel[4].menuName, action: {print(viewModel.otherCustomerModel[4].menuName)})
                
                Spacer()
            }
            .padding(.vertical, 16)

        }
        .padding(.horizontal,10)
    }
    
    private func UserButton(icon: Image, name: String, action: @escaping () -> Void) -> some View{
        Button(action:{
            action()
        },label:{
            VStack(alignment: .center, spacing: 4) {
                ZStack{
                    Color.clear
                    icon
                }
                .frame(width: 48, height: 48)
                
                Text(name)
                    .font(.mainTextSemiBold16)
                    .foregroundStyle(Color(.black))
            }
        })
        .padding(.vertical, 19)
        .frame(width: 102, height: 108)
        .background(.white)
        .cornerRadius(15)
        .shadow(color: .black.opacity(0.1), radius: 2.5, x: 0, y: 0)
    }

    
    private func MenuButton(icon: Image, name: String, action: @escaping () -> Void) -> some View {
        
        Button(action:{
            action()
        },label:{
            HStack(spacing: 4){
                ZStack {
                            Color.clear
                            icon
                        }
                        .frame(width: 32, height: 32)

                Text(name)
                    .font(.mainTextSemiBold16)
                    .foregroundStyle(Color(.black02))
                Spacer()
            }
            .padding(.horizontal, 1)
            .frame(width: 172,height:32)
        })
    }
}
                


#Preview {
    OtherView()
}
