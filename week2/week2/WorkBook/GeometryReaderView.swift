//
//  GeometryReaderView.swift
//  week2
//
//  Created by 신연주 on 3/30/25.
//

import SwiftUI

struct GeometryReaderView: View {
    
    var screenSize:CGRect {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return .zero
        }
        return windowScene.screen.bounds
    }
    
    var body: some View {
        VStack{
            Text("Screen Width: \(screenSize.width)")
            Text("Screen Height: \(screenSize.height)")
        }
    }
}

#Preview {
    GeometryReaderView()
}
