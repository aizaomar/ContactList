//
//  ContactDetailsViewController.swift
//  ContactList
//
//  Created by Aiza on 08.09.2021.
//

import UIKit

class ContactDetailsViewController: UIViewController {

    @IBOutlet var contactPhoneNumberLabel: UILabel!
    
    @IBOutlet var contactEmailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullname
        contactPhoneNumberLabel.text = "Phone: \(person.phoneNumber)"
        contactEmailLabel.text = "Email: \(person.email)"
    }
}
