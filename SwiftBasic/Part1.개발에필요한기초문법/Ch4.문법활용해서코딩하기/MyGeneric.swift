//
//  MyGeneric.swift
//  SwiftBasic
//
//  Created by dodor on 2023/10/10.
//

import SwiftUI

struct MyGeneric: View {
    
    @State private var input: String = ""
    @State private var myStack = MyStack<Int>()
    
    var body: some View {
        VStack {
            TextField("숫자를 입력해주세요", text: $input)
            
            Button("저장") {
                myStack.insertValue(input: Int(input) ?? 0)
            }
            
            Button("출력") {
                myStack.showData()
            }
        }
    }
}

struct MyStack<T> {
    var data: [T] = []
    
    mutating func insertValue(input: T) {
        data.append(input)
    }
    
    func showData() {
        data.forEach { item in
            print(item)
        }
    }
}

struct MyGeneric_Previews: PreviewProvider {
    static var previews: some View {
        MyGeneric()
    }
}
