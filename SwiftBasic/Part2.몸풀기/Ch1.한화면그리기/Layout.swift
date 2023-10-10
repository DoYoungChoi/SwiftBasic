//
//  Layout.swift
//  SwiftBasic
//
//  Created by dodor on 2023/10/10.
//

import SwiftUI

struct Layout: View {
    var body: some View {
        VStack {
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            Text("Text Element 1")
                .font(.title)
                .padding()
            
            Text("Text Element 2")
                .font(.title2)
                .padding()
            
            Text("Text Element 3")
                .font(.body)
                .padding()
                .bold()
            
            HStack {
                MyButton(title: "Button 1", color: .blue)
                MyButton(title: "Button 2", color: .green)
            }
            
            Button {
            } label: {
                VStack {
                    Image(systemName: "arrow.right.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                    
                    Text("Complex Button")
                        .bold()
                }
                .foregroundColor(.white)
                .padding()
                .background(.orange)
                .cornerRadius(10)
            }
        }
    }
}

struct MyButton: View {
    
    var title: String
    var color: Color
    
    var body: some View {
        Button {
        } label: {
            Text(title)
                .padding()
                .background(color)
                .foregroundColor(.white)
                .cornerRadius(10)
                .bold()
        }
    }
}

struct Layout_Previews: PreviewProvider {
    static var previews: some View {
        Layout()
    }
}
