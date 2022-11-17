//
//  UserViewModelOutput.swift
//  PotocolOrientedUIKit
//
//  Created by Bertuğ Horoz on 17.11.2022.
//

import Foundation

protocol UserViewModelProtocol : AnyObject {
    
    func updateView(name : String, email :String, userName: String)
    
}
