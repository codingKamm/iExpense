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

struct ExpenseItem: Identifiable {
    let id = UUID()
    let name: String
    let type: String
    let amount: Double
}

@Observable
class Expenses {
    var items = [ExpenseItem]()
}
