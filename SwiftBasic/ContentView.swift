//
//  ContentView.swift
//  SwiftBasic
//
//  Created by dodor on 2023/10/10.
//

import SwiftUI

struct ContentView: View {
    
    var name: String = "라떼"
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("\(name)님 안녕하세요.")
            Text("\(name)님의 잔여 포인트는 202점 입니다.")
            Text("\(name)님 안녕히가세요.")
            Text(name)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
