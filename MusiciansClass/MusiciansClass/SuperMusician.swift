//
//  SuperMusician.swift
//  MusiciansClass
//
//  Created by Bertuğ Horoz on 25.10.2022.
//

import Foundation

class superMusician : Musicians{
    func sign2(){
            print("enter night")
    }
    
    override func sign () {
        super.sign()
        print("exit light")
    }
}

