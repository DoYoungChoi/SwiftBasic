//
//  Collections.swift
//  SwiftBasic
//
//  Created by dodor on 2023/10/10.
//

import SwiftUI

struct Collections: View {
    
    var foods: [String] = ["eggs", "bananas", "beans"]
    var jazz: Set<String> = ["bibidudu", "labdap", "dididudu"]
    var hiphop: Set<String> = ["labdap", "rap", "skirrr"]
    var koEngDict: [String:String] = ["사과":"Apple", "바나나":"Banana"]
    
    var body: some View {
        VStack {
            Text("\(foods[0])")
            Text("\(foods[1])")
            Text("\(foods[2])")
            
            Text(hiphop.union(jazz).description)
            Text(hiphop.intersection(jazz).description)
            
            Text(koEngDict["사과"]!)
            Text(koEngDict["바나나"]!)
        }
    }
}

struct Collections_Previews: PreviewProvider {
    static var previews: some View {
        Collections()
    }
}
