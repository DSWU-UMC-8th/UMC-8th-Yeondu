//
//  MovieView.swift
//  week2
//
//  Created by 신연주 on 3/30/25.
//

import SwiftUI
import Observation

struct MovieView: View {
    private var viewModel: MovieViewModel = .init()
    @AppStorage("movieName") var movieName: String = ""
    
    var body: some View {
        VStack(spacing: 56) {
            MovieCard(movieInfo: viewModel.movieModel[viewModel.currentIndex])
            
            leftRightChange
            
            settingMovie
            
            printAppStorageValue
        }
        .padding()
    }
    
    
    private var leftRightChange: some View{
        HStack(spacing: 61){
            makeChevron(name: "chevron.left", action: viewModel.previousMovie)
            
            Text("영화 바꾸기")
                .font(.system(size: 20, weight: .regular))
            
            makeChevron(name: "chevron.right", action: viewModel.previousMovie)
            
        }
        .frame(width: 256)
        .padding(.vertical,17)
        .padding(.horizontal,22)
        
    }
    
    // 화살표 재사용하기 위한 하위 뷰
    private func makeChevron(name: String, action: @escaping () -> Void) -> some View {
            Button(action: {
                action()
            }, label: {
                Image(systemName: name)
                    .resizable()
                    .frame(width: 17.47, height: 29.73)
            })
        }
    
    
    // 대표영화 설정
    private var settingMovie: some View{
        Button(action: {
            /* 현재 인덱스틔 영화 이름 AppStorage에 저장 */
            self.movieName = viewModel.movieModel[viewModel.currentIndex].movieName
        }, label: {
            Text("대표 영화로 설정")
                .font(.system(size: 20, weight: .regular))
                .foregroundStyle(Color.black)
                .padding(.top, 21)
                .padding(.bottom, 20)
                .padding(.leading, 53)
                .padding(.trailing, 52)
                .overlay(content: {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.clear)
                        .stroke(Color.black, style: .init(lineWidth: 1))
                })
        })
    }
    
    private var printAppStorageValue: some View {
        VStack(spacing: 17) {
            Text("@AppStorage에 저장된 영화")
                .font(.system(size: 30, weight: .regular))
                .foregroundStyle(Color.black)
            
            Text("현재 저장된 영화 : \(movieName)")
                .font(.system(size: 20, weight: .regular))
                .foregroundStyle(Color.red)
        }
    }
}

#Preview {
    MovieView()
}
