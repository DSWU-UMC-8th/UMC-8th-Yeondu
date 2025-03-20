//
//  UserViewModel.swift
//  week1
//
//  Created by 신연주 on 3/20/25.
//

import Foundation

class UserViewModel: ObservableObject{
    
    @Published var userModel: UserModel
    
    init(userModel: UserModel){
        self.userModel = userModel
    }
    
    func increaseAge(){
        self.userModel.increaseAge()
    }
    
    func decreaseAge(){
        self.userModel.decreaseAge()
    }
}
