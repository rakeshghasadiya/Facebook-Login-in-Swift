//
//  ViewController.swift
//  Login With Facebook
//
//  Created by Datamint Solutions on 09/12/18.
//  Copyright © 2018 Datamint Solutions LLP. All rights reserved.
//

import UIKit
import FacebookLogin
import FacebookCore
class ViewController: UIViewController,LoginButtonDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         let loginButton = LoginButton(readPermissions: [ .publicProfile ])
        loginButton.center = view.center
        

        view.addSubview(loginButton)
  
    }

    func loginButtonDidCompleteLogin(_ loginButton: LoginButton, result: LoginResult) {
        switch result {
        case .failed(let error):
            print(error)
        case .cancelled:
            print("User cancelled login.")
        case .success(let grantedPermissions, let declinedPermissions, let accessToken):
            print("Logged in! \(accessToken.authenticationToken)")
        }
    }
    
    func loginButtonDidLogOut(_ loginButton: LoginButton) {
        
    }
    
    /*  Custom Login Button
     
     
    @IBAction func facebookLoginTapped(_ sender: UIButton) {
        
        let loginManager = LoginManager()
      
        loginManager.logIn(readPermissions: [ReadPermission.publicProfile], viewController: self) { loginResult in
            switch loginResult {
            case .failed(let error):
                print(error)
            case .cancelled:
                print("User cancelled login.")
            case .success(let grantedPermissions, let declinedPermissions, let accessToken):
                print("Logged in! \(accessToken.authenticationToken)")
            }
        
    }
    }
 */
    
}

