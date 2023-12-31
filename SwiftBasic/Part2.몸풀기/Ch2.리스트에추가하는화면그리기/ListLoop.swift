//
//  ListLoop.swift
//  SwiftBasic
//
//  Created by dodor on 2023/10/10.
//

import SwiftUI

struct Fruit: Identifiable {
    let id = UUID()
    let name: String
    let matchFruitName: String
    let price: Int
}

struct ListLoop: View {
    
    @State private var fruits = [
        Fruit(name: "Apple",
              matchFruitName: "Banana",
              price: 1000),
        Fruit(name: "Banana",
              matchFruitName: "Banana",
              price: 3000),
        Fruit(name: "Cherry",
              matchFruitName: "Banana",
              price: 4000),
        Fruit(name: "Double Kiwi",
              matchFruitName: "Elder berry",
              price: 2400),
        Fruit(name: "Elder berry",
              matchFruitName: "Double Kiwi",
              price: 8000)
    ]
    
    @State private var fruitName: String = ""
    var body: some View {
        NavigationStack {
            VStack {
                
                HStack {
                    TextField("Insert fruit name", text: $fruitName)
                    Button {
                        fruits.append(Fruit(name: fruitName,
                                            matchFruitName: fruitName,
                                            price: 1000))
                        fruitName = ""
                    } label: {
                        Text("Insert")
                            .padding()
                            .background(Color.accentColor)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                .padding(.horizontal)
                
                List {
                    ForEach(fruits) { fruit in
                        HStack {
                            Text(fruit.name)
                            Spacer()
                            Text("\(fruit.price)")
                        }
                    }
                    .onDelete { indexSet in
                        fruits.remove(atOffsets: indexSet)
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
