//
//  ViewModel.swift
//  PotocolOrientedUIKit
//
//  Created by Bertuğ Horoz on 17.11.2022.
//

import Foundation

class userViewModel{
    
    weak var output : UserViewModelProtocol?
    
    
    private let userService : UserService
    init(userService: UserService) {
        self.userService = userService
    }
    
    func fetchUsers(){
        userService.fetchUser { [weak self] result in
            switch result {
            case .success(let user):
                self?.output?.updateView(name: user.name, email: user.email, userName: user.username)
            case .failure(_):
                self?.output?.updateView(name: "No User", email: "", userName: "")
            }
        }
    }
    
}
