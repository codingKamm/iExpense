//
//  LogicModel.swift
//  iExpense
//
//  Created by Cameron Warner on 11/20/23.
//

import Foundation
import SwiftUI
import Observation


@Observable //  @Observable if you want SwiftUI to watch its contents for changes; while using @State
class User {
    var firstName = "E.M."
    var lastName = "Douglass"
}

struct AltUser: Codable {
    let firstName: String
    let lastName: String
}
//protocol called Codable: a protocol specifically for archiving and unarchiving data, which is a fancy way of saying “converting objects into plain text and back again.”

struct ExpenseItem: Identifiable, Codable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}

@Observable
class Expenses {
    var items = [ExpenseItem]() {
        didSet {
            if let encode = try? JSONEncoder().encode(items) {
                UserDefaults.standard.setValue(encode, forKey: "Items")
            }
        }
    }
    
    init(){
        if let savedItems = UserDefaults.standard.data(forKey: "Items") {
            if let decodeItems = try? JSONDecoder().decode([ExpenseItem].self, from: savedItems) {
                items = decodeItems
                return
            }
        }
        items = []
    }
    
    
}

// .self mean? Well, if we had just used [ExpenseItem], Swift would want to know what we meant – are we trying to make a copy of the class? Were we planning to reference a static property or method? Did we perhaps mean to create an instance of the class? To avoid confusion – to say that we mean we’re referring to the type itself, known as the type object – we write .self after it.
