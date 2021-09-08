//
//  Person.swift
//  ContactList
//
//  Created by Aiza on 07.09.2021.
//

import Foundation

struct Person {
    
    let name: String
    let surename: String
    let phoneNumber: String
    let email: String
    
    var fullname: String {
        "\(name) \(surename)"
    }
    
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        for _ in 1...15 {
            persons.append(Person(
                name: DataManager.shared.names.randomElement() ?? "",
                surename: DataManager.shared.surnames.randomElement() ?? "",
                phoneNumber: DataManager.shared.phoneNumbers.randomElement() ?? "",
                email: DataManager.shared.emails.randomElement() ?? ""
            ))
        }
        
        return persons
    }
}








    


