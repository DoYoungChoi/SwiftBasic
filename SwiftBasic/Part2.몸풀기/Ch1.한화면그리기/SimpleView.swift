//
//  SimpleView.swift
//  SwiftBasic
//
//  Created by dodor on 2023/10/10.
//

import SwiftUI

struct SimpleView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            Text("헤드라인 입니다")
                .font(.headline)
                .bold()
            
            Text("서브헤드라인 입니다")
                .font(.subheadline)
            
            Text("바디 입니다")
                .font(.body)
            
            Button {
            } label: {
                Text("Click Me")
                    .padding()
                    .foregroundColor(.white)
                    .bold()
                    .background(.blue)
                    .cornerRadius(10)
            }
        }
    }
}

struct SimpleView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleView()
    }
}
