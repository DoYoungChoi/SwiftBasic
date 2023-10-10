//
//  Exception.swift
//  SwiftBasic
//
//  Created by dodor on 2023/10/10.
//

import SwiftUI

struct Exception: View {
    
    @State private var inputNumber: String = ""
    @State private var resultNumber: Float = 0
    
    var body: some View {
        VStack {
            TextField("나눌 숫자를 입력해주세요", text: $inputNumber)
            
            Text("나눈 결과는 다음입니다: \(resultNumber)")
            
            Button {
                
                do {
                    try resultNumber = devideTen(with: Float(inputNumber) ?? 1)
                } catch DivideError.dividedByZero {
                    print("0으로 나눌 수 없습니다.")
                } catch {
                    print(error.localizedDescription)
                }
                
            } label: {
                Text("나누기")
            }
        }
    }
    
    func devideTen(with inputNumber: Float) throws -> Float {
        if inputNumber == 0 {
            throw DivideError.dividedByZero
        } else {
            return 10 / inputNumber
        }
    }
}

enum DivideError: Error {
    case dividedByZero
}

struct Exception_Previews: PreviewProvider {
    static var previews: some View {
        Exception()
    }
}
