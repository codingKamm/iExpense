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
