//
//  SheetView.swift
//  iExpense
//
//  Created by Cameron Warner on 11/20/23.
//

import SwiftUI

struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    let name: String
    
    var body: some View {
        Button("Dismiss"){
            dismiss()
        }
    }
}

#Preview {
    SheetView(name: String())
}
