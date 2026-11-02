//
//  DetailViewController.swift
//  Calculator
//
//  Created by Guluma Wakuma on 30/10/2026.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var userName: UILabel!
    
    var incomingName: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let name = incomingName {
            userName?.text = name
        }
    }
    
    func displayName(name: String){
        print(name)
        incomingName = name
    }

}
