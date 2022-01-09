//
//  Person.swift
//  ContactsApp
//
//  Created by  BoDim on 09.01.2022.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getContacts() -> [Person] {
        var persons: [Person] = []
        let dataManager = DataManager()
        
        let names = dataManager.names
        let surnames = dataManager.surnames
        let phones = dataManager.phones
        let emails = dataManager.emails
        
        let numValues = min(names.count, surnames.count,
                      phones.count, emails.count)
        
        for index in 0..<numValues {
            let person = Person(name: names[index],
                            surname: surnames[index],
                            phone: phones[index],
                            email: emails[index])
            persons.append(person)
        }
        
        return persons
    }
}
