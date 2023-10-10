//
//  Loop.swift
//  SwiftBasic
//
//  Created by dodor on 2023/10/10.
//

import SwiftUI

struct Loop: View {
    
    var names: [String] = ["dodor", "latte", "jantazn", "dojja"]
    
    var body: some View {
        VStack {
            ForEach(names, id:\.self) { name in
                Text(name)
            }
        }
    }
}

struct Loop_Previews: PreviewProvider {
    static var previews: some View {
        Loop()
    }
}
