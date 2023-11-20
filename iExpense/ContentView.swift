//
//  ContentView.swift
//  iExpense
//
//  Created by Cameron Warner on 11/19/23.
//

import SwiftUI
import Observation

struct ContentView: View {
    @State private var user = User()
    
    @State private var showingSheet = false
    
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
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
