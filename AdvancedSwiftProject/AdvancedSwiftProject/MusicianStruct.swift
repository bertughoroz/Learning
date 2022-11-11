//
//  MusicianStruct.swift
//  AdvancedSwiftProject
//
//  Created by Bertuğ Horoz on 11.11.2022.
//

import Foundation

struct MusicianStruct{
    
    var name : String
    var age : Int
    var intrument : String
    
    mutating func happyBirthday(){
        self.age += 1
    }
    
}
