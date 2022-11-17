//
//  ViewController.swift
//  PotocolOrientedUIKit
//
//  Created by Bertuğ Horoz on 17.11.2022.
//

import UIKit

class UserViewController: UIViewController, UserViewModelProtocol {
    
    func updateView(name: String, email: String, userName: String) {
        self.nameLAbel.text = name
        self.emailLAbel.text = email
        self.userNameLAbel.text = userName
    }
    

    private let viewModel : userViewModel
    
    init(viewModel: userViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        self.viewModel.output = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let nameLAbel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    private let userNameLAbel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    private let emailLAbel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        // fetchUsers()
        viewModel.fetchUsers()
    }


    private func setupViews(){
            
        view.backgroundColor = .purple
        
        view.addSubview(emailLAbel)
        view.addSubview(nameLAbel)
        view.addSubview(userNameLAbel)
        
        
        NSLayoutConstraint.activate(
            [nameLAbel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
             nameLAbel.heightAnchor.constraint(equalToConstant: 60),
             nameLAbel.widthAnchor.constraint(equalToConstant: 200),
             nameLAbel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
             
             emailLAbel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
             emailLAbel.heightAnchor.constraint(equalToConstant: 60),
             emailLAbel.widthAnchor.constraint(equalToConstant: 200),
             emailLAbel.topAnchor.constraint(equalTo: nameLAbel.bottomAnchor, constant: 25),
             
             userNameLAbel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
             userNameLAbel.heightAnchor.constraint(equalToConstant: 60),
             userNameLAbel.widthAnchor.constraint(equalToConstant: 200),
             userNameLAbel.topAnchor.constraint(equalTo: emailLAbel.bottomAnchor, constant: 25)
        ]
        )
    }
    
    /*
    private func fetchUsers() {
        
        APIManager.shared.fetchUser { result in
            switch result{
            case .success(let user):
                self.userNameLAbel.text = user.username
                self.emailLAbel.text = user.email
                self.nameLAbel.text = user.name
                
            case .failure:
                self.nameLAbel.text = "No User Found"
            }
        }
        
    }
    */
     
}

