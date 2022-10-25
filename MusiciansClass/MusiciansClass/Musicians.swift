//
//  Musicians.swift
//  MusiciansClass
//
//  Created by Bertuğ Horoz on 25.10.2022.
//

import Foundation

enum MusicianType {
    case LeadGuitar
    case Drumer
    case Bassist
    case violenist
}

class Musicians {
    var names : String
    var age : Int
    var instrument : String
    var type : MusicianType
    
    init(nameInit: String , ageInit: Int , instrumentInit : String , typeInit : MusicianType) {
        names = nameInit
        age = ageInit
        instrument = instrumentInit
        type = typeInit
    }
    
    func sign (){
        print("Nothing Else Matters")
    }
}
