//
//  TabDetail.swift
//  SwiftBasic
//
//  Created by dodor on 2023/10/11.
//

import SwiftUI

struct TabDetail: View {
    let color: Color
    
    var body: some View {
        ZStack {
            color
                .ignoresSafeArea()
            
            Text("This is \(color.description)")
        }
    }
}

struct TabDetail_Previews: PreviewProvider {
    static var previews: some View {
        TabDetail(color: .gray)
    }
}
