//
//  GeometryReaderView2.swift
//  week2
//
//  Created by 신연주 on 3/30/25.
//

import SwiftUI

struct GeometryReaderView2: View {
    var body: some View {
        GeometryReader{ geometry in
            VStack{
                Text("전체의 50% 크기의 뷰")
                    .frame(width: geometry.size.width*0.5,height: geometry.size.height*0.5)
                    .background(Color.green.opacity(0.5))
                    .border(Color.green)
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
            .border(Color.red)
        }
    }
}
#Preview {
    GeometryReaderView2()
}
