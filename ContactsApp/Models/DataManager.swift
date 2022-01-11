//
//  DataManager.swift
//  ContactsApp
//
//  Created by  BoDim on 09.01.2022.
//

class DataManager {
    
    static let shared = DataManager()
    
    let names = [
        "John", "Tim", "Bill",
        "Ganh", "Robert", "Ann",
        "Elizabeth", "Maria", "Olga",
        "Victoria", "Mike", "Natan"
    ]
    let surnames = [
        "Mur", "Mone", "Dickson",
        "Hickson", "Mares", "Ivanovic",
        "Larsen", "Messi", "Gabel",
        "Satirson", "Mickelson", "Davidson"
    ]
    let phones = [
        "+7 (900) 132-45-67", "+7 (900) 123-45-67", "+7 (900) 789-45-61",
        "+7 (900) 755-66-45", "+7 (900) 111-33-56", "+7 (900) 785-65-48",
        "+7 (900) 127-95-56", "+7 (900) 487-32-95", "+7 (900) 458-98-99",
        "+7 (900) 454-45-78", "+7 (900) 544-45-11", "+7 (900) 478-98-56"
    ]
    let emails = [
        "aaaaaa@me.com", "bbbbbb@me.com", "cccccc@me.com",
        "dddddd@me.com", "eeeeee@me.com", "ffffff@me.com",
        "gggggg@me.com", "hhhhhh@me.com", "iiiiii@me.com",
        "jjjjjj@me.com", "kkkkkk@me.com", "zzzzzz@me.com"
    ]
    
    private init() {}
}
