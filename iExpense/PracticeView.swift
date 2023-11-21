//
//  PracticeView.swift
//  iExpense
//
//  Created by Cameron Warner on 11/20/23.
//

import SwiftUI
import Observation

struct PracticeView: View {
    @State private var user = User()
    
    @State private var showingSheet = false
    
    @State private var altUser = AltUser(firstName: "E.M.", lastName: "Douglass")
    
    var body: some View {
        VStack {
            
            Text("Your name is \(user.firstName) \(user.lastName)")
            
            TextField("First Name", text: $user.firstName)
            TextField("Last Name", text: $user.lastName)
            
            Button("Show Sheet"){
                showingSheet.toggle()
            }
                .sheet(isPresented: $showingSheet, content: {
                    SheetView(name: "Douglass")
                })
            
            Button("Save User") {
                let encoder = JSONEncoder()
                
                if let data = try? encoder.encode(altUser) {
                    UserDefaults.standard.set(data, forKey: "Userdata")
                }
            }
        }
        
        .padding()
        
    }
}

#Preview {
    PracticeView()
}
