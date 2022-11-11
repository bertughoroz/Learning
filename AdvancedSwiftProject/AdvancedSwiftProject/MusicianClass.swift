//
//  MusicianClass.swift
//  AdvancedSwiftProject
//
//  Created by Bertuğ Horoz on 11.11.2022.
//

import Foundation


class MusicianClass{
    
    var name :String
    var age :Int
    var instrument :String
    
    init(nameInput : String, ageInput : Int, instrumentInput : String){
        
        self.name = nameInput
        self.age = ageInput
        self.instrument = instrumentInput
        
    }
    
    func happyBirthDay(){
        self.age += 1
    }
    
    }
