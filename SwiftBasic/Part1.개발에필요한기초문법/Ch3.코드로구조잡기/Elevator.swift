//
//  Elevator.swift
//  SwiftBasic
//
//  Created by dodor on 2023/10/10.
//

import SwiftUI

struct Elevator: View {
    
    @State private var myElevator = ElevatorStruct()
    
    var body: some View {
        VStack {
            Text("층수: \(myElevator.level)")
            
            HStack {
                Button {
                    myElevator.goUp()
                } label: {
                    Text("위로")
                }
                
                Button {
                    myElevator.goDown()
                } label: {
                    Text("아래로")
                }
            }
        }
    }
}

struct ElevatorStruct {
    // 층수를 표시해주는 디스플레이
    // 위로 올라갈 수 있어야 함
    // 아래로 내려갈 수 있어야 함
    
    var level: Int = 1
    
    mutating func goUp() {
        level = level + 1
    }
    
    mutating func goDown() {
        level = level - 1
    }
}

struct Elevator_Previews: PreviewProvider {
    static var previews: some View {
        Elevator()
    }
}
