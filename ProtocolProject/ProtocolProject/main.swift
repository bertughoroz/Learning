//
//  main.swift
//  ProtocolProject
//
//  Created by Bertuğ Horoz on 11.11.2022.
//

import Foundation

protocol running{

    func myRun()
    
}

class animal{
    func test(){
        print("test")
    }
}
class dog: running{
    func myRun() {
        print("running22")
    }
    
    
}

let barley = dog()
barley.myRun()

class cat : animal, running{
    func myRun() {
        print("slow run")
    }
    
    
}

let hasan = cat()
hasan.test()
//hasan.running()

class turtle :animal{
    
}
let leonardo = turtle()
//leonardo.running()



struct bird : running{
    func myRun() {
        print("he can fly")
    }
    
    
}
let twetty = bird()
twetty.myRun()

