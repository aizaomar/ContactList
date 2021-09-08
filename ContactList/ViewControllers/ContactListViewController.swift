//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Aiza on 07.09.2021.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    private var contactList = Person.getContactList()
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactInfo", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = contactList[indexPath.row]
        
        content.text = person.fullname
        
        cell.contentConfiguration = content
        return cell
    }

    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? ContactDetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = contactList[indexPath.row]
        detailsVC.person = person
    }
}

    


