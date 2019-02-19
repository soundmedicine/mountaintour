//
//  LoginViewController.swift
//  MountainTour
//
//  Created by Roberto Santos on 2/16/19.
//  Copyright © 2019 Roberto Santos. All rights reserved.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var userNameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()        
    }
    
    @IBAction func loginTapped(_ sender: Any) {
        performSegue(withIdentifier: "goToMain", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let mainNavigationVC = segue.destination as? UINavigationController,
            let mainVC = mainNavigationVC.viewControllers[0] as? ViewController else { return }
        
        mainVC.password = passwordField.text
        mainVC.userName = userNameField.text
    }
//        present(mainNavigationVC, animated: true, completion: nil)
}
