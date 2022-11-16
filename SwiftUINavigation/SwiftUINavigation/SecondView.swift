//
//  SecondView.swift
//  SwiftUINavigation
//
//  Created by Bertuğ Horoz on 16.11.2022.
//

import SwiftUI

struct SecondView: View {
    
    @State var path : [Dog] = []
    
    var body: some View {
        
        NavigationStack(path: $path){
            List(dogs) {dog in
                NavigationLink(dog.name , value : dog)
            }.navigationDestination(for: Dog.self) { dog in
                VStack{
                    Text(dog.name).padding()
                    /*
                    Button("Go Back") {
                        self.path = []
                    }
                     */
                    Button("Add to Path") {
                        path = [dogs[0], dogs[1]]
                    }
                }
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
