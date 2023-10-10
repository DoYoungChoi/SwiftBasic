//
//  Switch.swift
//  SwiftBasic
//
//  Created by dodor on 2023/10/10.
//

import SwiftUI

struct Switch: View {
    
    var direction: Direction = .north
    
    var body: some View {
        switch direction {
        case .north:
            Text("NORTH")
        case .south:
            Text("SOUTH")
        case .east:
            Text("EAST")
        case .west:
            Text("WEST")
        }
    }
}

struct Switch_Previews: PreviewProvider {
    static var previews: some View {
        Switch()
    }
}
