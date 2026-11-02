//
//  CallViewController.swift
//  Calculator
//
//  Created by Guluma Wakuma on 29/10/2026.
//

import UIKit

class CallViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
//    Lazy car xy: String= ""
    
//    Computed and Stored Property
//
//    Stored once -> exist
//    Computed -> Allocated first call , copy each time
    
    var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign", for: .normal)
        button.addTarget(self, action: #selector(clickedBarButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

 var barButton: UIBarButtonItem{
        let barButton = UIBarButtonItem()
        barButton.title = "Back"
        barButton.target = self
//     UIKit
        barButton.action = #selector(clickedBarButton)
        return barButton
    }
    
   var barButton2: UIBarButtonItem{
        let barButton = UIBarButtonItem()
        barButton.title = "Edit"
        return barButton
    }
    
   var barButton3: UIBarButtonItem{
        let barButton = UIBarButtonItem()
        barButton.title = "Done"
        return barButton
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = barButton2
        navigationItem.rightBarButtonItem = barButton3
        navigationItem.title = "Calls"
//        view.addSubview(button)
//        NSLayoutConstraint.activate([
//            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            button.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 100)
//            
//        ])
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }
    
    
    
    
    @objc func clickedBarButton(){
        navigationController?.popViewController(animated: true)
    }
    
    

    func deisplayName(){
        print("Name")
    }

}

extension CallViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GalleryCell", for: indexPath) as? GalleryCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.configure(name: "profileImage")
        
        return cell
    }
    
    
}
