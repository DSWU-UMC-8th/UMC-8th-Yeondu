//
//  ViewModel.swift
//  week2
//
//  Created by 신연주 on 3/27/25.
//

import Foundation
import SwiftUI

class ViewModel: ObservableObject {
    @Published var inputString: String = ""
    
    init(){
        print("새로운 TextViewModel 인스턴스 생성됨!")
    }
}
