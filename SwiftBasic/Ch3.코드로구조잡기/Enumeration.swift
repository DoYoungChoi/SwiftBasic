//
//  Enumeration.swift
//  SwiftBasic
//
//  Created by dodor on 2023/10/10.
//

import SwiftUI

struct Enumeration: View {
    
    var direction: Direction = .north
    var menu: Menu = .steak("rare")
    
    var body: some View {
        Text("방향은 \(direction.rawValue)쪽 입니다")
    }
}

enum Direction: String {
    case north = "북"
    case south = "남"
    case east = "동"
    case west = "서"
}

enum Menu {
    case pasta
    case pizza
    case steak(String)
}

struct Enumeration_Previews: PreviewProvider {
    static var previews: some View {
        Enumeration()
    }
}
