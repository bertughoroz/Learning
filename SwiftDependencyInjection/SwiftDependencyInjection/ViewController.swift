//
//  ViewController.swift
//  SwiftDependencyInjection
//
//  Created by Bertuğ Horoz on 17.11.2022.
//

import UIKit
import Swinject

class ViewController: UIViewController {

    //SWinject
    let container : Container = {
       
        let container = Container()
        
        container.register(BackgroundProvidingClass.self) { resolver in
            return BackgroundProvidingClass()
        }
        
        container.register(AnotherVC.self) { resolver in
            let vc = AnotherVC(providerProtocol: resolver.resolve(BackgroundProvidingClass.self))
            return vc
        }
        
        return container
        
    }()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
        
        let Button = UIButton(frame: CGRect(x: 0, y: 0, width: 250, height: 250))
        Button.setTitle("Open Another VC", for: .normal)
        Button.center = view.center
        Button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        view.addSubview(Button)
    }

    @objc private func buttonClicked() {
        
        if let viewController = container.resolve(AnotherVC.self) {
            present(viewController, animated: true)
        }

    }
    
}
