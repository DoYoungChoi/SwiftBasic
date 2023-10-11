//
//  MyTab.swift
//  SwiftBasic
//
//  Created by dodor on 2023/10/11.
//

import SwiftUI

struct MyTab: View {
    
    var colors: [Color] = [.teal, .blue, .indigo, .purple]
    
    var body: some View {
        TabView {
            ForEach(colors, id:\.self) { color in
                TabDetail(color: color)
                    .tabItem {
                        Label("\(color.description)", systemImage: "square.fill")
                    }
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

struct MyTab_Previews: PreviewProvider {
    static var previews: some View {
        MyTab()
    }
}
