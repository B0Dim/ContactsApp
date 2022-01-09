//
//  ContactsViewController.swift
//  ContactsApp
//
//  Created by  BoDim on 09.01.2022.
//

import UIKit

class ContactsViewController: UIViewController {
   
    @IBOutlet weak var tableView: UITableView!
    
    var persons: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 56
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let ContactInfoVC = segue.destination as? ContactInfoViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        ContactInfoVC.person = persons[indexPath.row]
    }
}

// MARK: - Table view data source
extension ContactsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "nameCell", for: indexPath)
        
        let person = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = person.fullName
        content.secondaryText = person.phone
        cell.contentConfiguration = content

        return cell
    }
}
