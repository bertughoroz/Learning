//
//  BackgrouncProvidingClass.swift
//  SwiftDependencyInjection
//
//  Created by Bertuğ Horoz on 17.11.2022.
//

import Foundation
import UIKit

class BackgroundProvidingClass : BackgroundProviderProtocol {
    
    var backgroundColor: UIColor {
        let backgroundsColor : [UIColor] = [.systemGray , .systemBlue , .systemCyan , .systemMint]
        return backgroundsColor.randomElement()!
    }
    
    
}
