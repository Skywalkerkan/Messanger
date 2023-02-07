//
//  ConversationsViewController.swift
//  Messanger
//
//  Created by Erkan on 5.02.2023.
//

import UIKit
import FirebaseAuth
class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemGray3
        
       // DatabaseManager.shared.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        validateAuth()
        
        /*let isLoggedIn = UserDefaults.standard.bool(forKey: "Logged_in")
        
        if !isLoggedIn{
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc) //navigation controller add
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: false)
        }*/
        
    }

    private func validateAuth(){
        if FirebaseAuth.Auth.auth().currentUser == nil{
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc) //navigation controller add
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: false)
        }
        
        
        
        
    }
    


}

