//
//  TapCountView.swift
//  iExpense
//
//  Created by Cameron Warner on 11/20/23.
//

import SwiftUI

struct TapCountView: View {
//    @State private var tapCount = UserDefaults.standard.integer(forKey: "Tap")
    @AppStorage("tap count") private var tapCount = 0
//      Our access to the UserDefaults system is through the @AppStorage property wrapper. This works like @State: when the value changes, it will reinvoked the body property so our UI reflects the new data.
//    We attach a string name, which is the UserDefaults key where we want to store the data. I’ve used “tapCount”, but it can be anything at all – it doesn’t need to match the property name.
//    The rest of the property is declared as normal, including providing a default value of 0. That will be used if there is no existing value saved inside UserDefaults.
//    Clearly using @AppStorage is easier than UserDefaults: it’s one line of code rather than two, and it also means we don’t have to repeat the key name each time
    
    var body: some View {
        VStack{
            Button("Tap Count \(tapCount)"){
                tapCount += 1
//                UserDefaults.standard.set(tapCount, forKey: "Tap")
            }
            
        }
    }
}

#Preview {
    TapCountView()
}


// When it comes to you submitting an app to the App Store, Apple asks that you let them know why you're loading and saving data using UserDefaults. This also applies to the @AppStorage property wrapper. It's nothing to worry about, they just want to make sure developers aren't trying to identify users across apps.
