//
//  GreenButton.swift
//  starbucks
//
//  Created by 신연주 on 3/31/25.
//

import SwiftUI

struct GreenButton: View {
    var name: String
    var action: () -> Void
    
    var body: some View {
        Button(action:{
            action()
        },label:{
            Text(name)
                .foregroundColor(.white)
                .font(.mainTextMedium16)
        })
        .frame(maxWidth: .infinity,maxHeight: 58)
        //.padding(.vertical, 13.5)
        .background(Color(.green01))
        .cornerRadius(20)
    }
}
