//
//  DetailedInfoTableViewController.swift
//  ContactList
//
//  Created by Aiza on 08.09.2021.
//

import UIKit

class DetailedInfoTableViewController: UITableViewController {
    
    private var contactList = Person.getContactList()
    
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contactList[section].fullname
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "details", for: indexPath)
        
        if indexPath.row == 0 {
            var content = cell.defaultContentConfiguration()
            content.image = UIImage(systemName: "phone")
            content.text = contactList[indexPath.section].phoneNumber
            cell.contentConfiguration = content
        }
        
        if indexPath.row == 1 {
            var content = cell.defaultContentConfiguration()
            content.image = UIImage(systemName: "tray.fill")
            content.text = contactList[indexPath.section].email
            cell.contentConfiguration = content
        }
        
        return cell
    }
}
