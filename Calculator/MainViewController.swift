//
//  MainViewController.swift
//  Calculator
//
//  Created by Guluma Wakuma on 20/10/2026.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Hey Blue Screen"
        
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        tabBarController?.tabBar.isHidden = false
//    }
    
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//        tabBarController?.tabBar.isHidden = false
//    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tabBarController?.tabBar.isHidden = false
    }
    
    @IBAction func makeTabBarDisappear(_ sender: Any) {
        
        tabBarController?.tabBar.isHidden = true
    }
    
    
    
  
    
}
