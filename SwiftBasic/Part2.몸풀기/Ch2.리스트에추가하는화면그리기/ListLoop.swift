//
//  ListLoop.swift
//  SwiftBasic
//
//  Created by dodor on 2023/10/10.
//

import SwiftUI

struct ListLoop: View {
    
    var fruits: [String] = ["Apple", "Banana", "Cherry", "Double Kiwi", "Elder berry"]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(fruits, id:\.self) { fruit in
                    HStack {
                        Text(fruit)
                    }
                }
            }
            .navigationTitle("Fruit List")
        }
    }
}

struct ListLoop_Previews: PreviewProvider {
    static var previews: some View {
        ListLoop()
    }
}
