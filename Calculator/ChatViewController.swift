//
//  ChatViewController.swift
//  Calculator
//
//  Created by Guluma Wakuma on 30/10/2026.
//

import UIKit

struct Student{
    let id: UUID
    let name: String
    
}

//struct Summary{
//    let passed: [Student]
//    let failed: [Student]
//}

class ChatViewController: UIViewController {
    
    @IBOutlet weak var tableView:UITableView!
    
    var summary = [
       [
            Student(id: UUID(), name: "Nanati"),
            Student(id: UUID(), name: "Gule"),
            Student(id: UUID(), name: "Wako"),
            Student(id: UUID(), name: "Tih"),
            Student(id: UUID(), name: "Abel"),
        ],
        [Student(id: UUID(), name: "Abel"),
                    Student(id: UUID(), name: "Chala"),
                    Student(id: UUID(), name: "Bacha")]
    ]
 

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Chats"
        navigationController?.navigationBar.prefersLargeTitles = true
        tableView.dataSource = self
        tableView.delegate = self
        
        navigationItem.leftBarButtonItem = self.editButtonItem
       
       
    }
    
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        tableView.setEditing(editing, animated: true)
    }
    

}

extension ChatViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        summary.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        summary[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = summary[indexPath.section][indexPath.row].name
        guard let newCell = cell else {
            return UITableViewCell()
        }
        return newCell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "Passed"
        } else{
            return "Failed"
        }
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        String(summary[section].count)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        60
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        20
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            summary[indexPath.section].remove(at:indexPath.row)
            tableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let alert = UIAlertController(title: summary[indexPath.section][indexPath.row].name, message: "Please change this name", preferredStyle: .alert)
//
//        
//        let dismissAction = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
//        let confirm = UIAlertAction(title: "Confirm", style: .default, handler: nil)
//        alert.addAction(confirm)
//        alert.addAction(dismissAction)
        
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else {
            return
        }
        let name = summary[indexPath.section][indexPath.row].name
        vc.navigationItem.title = name
        vc.displayName(name: name)
        navigationController?.pushViewController(vc, animated: true)
    
    }
    
}
