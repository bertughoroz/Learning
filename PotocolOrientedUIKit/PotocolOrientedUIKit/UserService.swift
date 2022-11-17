//
//  UserService.swift
//  PotocolOrientedUIKit
//
//  Created by Bertuğ Horoz on 17.11.2022.
//

import Foundation

protocol UserService {
    
    func fetchUser(completion : @escaping(Result<User, Error>) -> Void)
    
}
