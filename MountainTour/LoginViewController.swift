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
    
    
//    private func navigateToMainInterface() {
////        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
//        
//        let mainVC = self.storyboard!.instantiateViewController(withIdentifier: "ViewController") as! ViewController
//        mainVC.userName = userNameField.text
//        mainVC.password = passwordField.text
//        let mainNavigationVC = MainNavigationController(rootViewController: mainVC)
//        present(mainNavigationVC, animated: true, completion: nil)
//
//        guard let mainNavigationVC = mainStoryboard.instantiateViewController(withIdentifier: "MainNavigationController") as?
//            MainNavigationController else {
//                return
//        }
//
//        print(mainNavigationVC.topViewController!)
//        print(mainNavigationVC.viewControllers)
//
//        if let mainVC = mainNavigationVC.topViewController as? ViewController {
//            mainVC.userName = userNameField.text
//            mainVC.password = passwordField.text
//        }
//
//
//
//        present(mainNavigationVC, animated: true, completion: nil)
}
