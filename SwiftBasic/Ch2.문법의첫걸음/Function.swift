//
//  Function.swift
//  SwiftBasic
//
//  Created by dodor on 2023/10/10.
//

import SwiftUI

struct Function: View {
    
    @State private var inputNumber: Int = 0
    
    var body: some View {
        VStack {
            Text("Input number is \(inputNumber)")
            
            Button {
                inputNumber = plusFive(with: inputNumber)
            } label: {
                Text("+5")
            }

        }
    }
    
    func plusFive(with input: Int) -> Int {
        return input + 5
    }
}

struct Function_Previews: PreviewProvider {
    static var previews: some View {
        Function()
    }
}
