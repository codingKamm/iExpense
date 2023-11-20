//
//  DeleteListView.swift
//  iExpense
//
//  Created by Cameron Warner on 11/20/23.
//

import SwiftUI

struct DeleteListView: View {
    @State private var numbers = [Int]()
    @State private var currentNumber = 1
    
    
    
    func removeRows(at offsets: IndexSet) {
        numbers.remove(atOffsets: offsets)
    }
    
    var body: some View {
        NavigationStack{
            VStack{
                List{
                    ForEach(numbers, id: \.self) {
                        Text("Row \($0)")
                    }
                    .onDelete(perform: removeRows)
                }
                Button("Add Numbers") {
                    numbers.append(currentNumber)
                    currentNumber += 1
                }
                
                }
                .toolbar{
                    EditButton()
                }
            }

    }
}

#Preview {
    DeleteListView()
}
