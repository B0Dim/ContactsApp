//
//  TabBarViewController.swift
//  ContactsApp
//
//  Created by  BoDim on 09.01.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }
    
    func setupTabBar() {
        let persons = Person.getContacts()
        let contactVC = viewControllers?.first as! ContactsViewController
        let detailVC = viewControllers?.last as! ContactsDetailViewController
        
        contactVC.persons = persons
        detailVC.persons = persons
    }
    
}
