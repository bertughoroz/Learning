//
//  Dog.swift
//  SwiftUINavigation
//
//  Created by Bertuğ Horoz on 16.11.2022.
//

import Foundation

struct Dog : Identifiable, Hashable {
    var id = UUID()
    let name : String
}

let dogs : [Dog] = [Dog(name: "Barley"), Dog(name: "Lucky"), Dog(name: "Daisy")]
