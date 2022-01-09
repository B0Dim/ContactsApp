//
//  ContactInfoViewController.swift
//  ContactsApp
//
//  Created by  BoDim on 09.01.2022.
//

import UIKit

class ContactInfoViewController: UIViewController {
   
    @IBOutlet weak var labelPhone: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    @IBOutlet weak var imagePerson: UIImageView!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setValuesForm()
    }
    
    func setValuesForm() {
        print(person.email)
        title = person.fullName
        labelEmail.text = person.email
        labelPhone.text = person.phone
        imagePerson.layer.cornerRadius = imagePerson.frame.height / 2
        imagePerson.image = UIImage(named: "person")
    }
}
