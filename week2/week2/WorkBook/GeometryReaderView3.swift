//
//  GeometryReaderView3.swift
//  week2
//
//  Created by 신연주 on 3/30/25.
//

import SwiftUI

struct GeometryReaderView3: View {
    var body: some View {
        GeometryReader{geometry in
            VStack{
                Text("뷰의 x좌표: \(geometry.frame(in:.global).origin.x)")
                Text("뷰의 y좌표: \(geometry.frame(in: .global).origin.y)")
            }
            .frame(width: 200, height: 100)
            .background(Color.orange.opacity(0.5))
            .position(x: geometry.size.width / 2, y:  geometry.size.height / 2)
        }
    }
}

#Preview {
    GeometryReaderView3()
}
