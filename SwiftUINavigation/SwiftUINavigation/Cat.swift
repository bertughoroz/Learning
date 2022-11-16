//
//  Cat.swift
//  SwiftUINavigation
//
//  Created by Bertuğ Horoz on 16.11.2022.
//

import Foundation

struct Cat : Identifiable, Hashable{
    var id = UUID()
    let name : String
}

let cats : [Cat] = [Cat(name: "Bo"), Cat(name: "Whisey"), Cat(name: "Blue")]
