//
//  VariableType.swift
//  SwiftBasic
//
//  Created by dodor on 2023/10/10.
//

import SwiftUI

struct VariableType: View {
    
    var name: String = "Dodor"
    var age: Int = 32
    var height: Float = 157.0
    var weight: Double = 56.8
    var havePet: Bool = true
    
    var body: some View {
        VStack {
            Text("\(name)")
            Text("\(age)")
            Text("\(height)")
            Text("\(weight)")
            Text("\(havePet.description)")
        }
    }
}

struct VariableType_Previews: PreviewProvider {
    static var previews: some View {
        VariableType()
    }
}
