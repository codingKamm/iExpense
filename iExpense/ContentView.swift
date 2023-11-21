//
//  ContentView.swift
//  iExpense
//
//  Created by Cameron Warner on 11/19/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingAddExpense = false
    
   @State private var expenses = Expenses()
    
    func removeItem(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
    
    var body: some View {
        NavigationStack{
            VStack {
                List {
                    ForEach(expenses.items) { item in
                        Text(item.name)
                    }
                    .onDelete(perform: removeItem)
                }
                .toolbar{
                    Button("Add Expenses", systemImage: "plus"){
//                        let expense = ExpenseItem(name: "Test", type: "Personal", amount: 5)
//                        expenses.items.append(expense)
                        isShowingAddExpense = true
                    }
                }
            }// End of VStack
            .navigationTitle("iExpense")
            .sheet(isPresented: $isShowingAddExpense){
                    AddView(expenses: expenses)
                }
 
        }// End of Nav Statck
        
        
    }
}

#Preview {
    ContentView()
}
