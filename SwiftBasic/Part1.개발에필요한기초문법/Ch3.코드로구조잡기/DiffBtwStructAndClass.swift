//
//  DiffBtwStructAndClass.swift
//  SwiftBasic
//
//  Created by dodor on 2023/10/10.
//

import SwiftUI

struct DiffBtwStructAndClass: View {
    
    let myCar = Car(name: "도돌카", owner: "도돌")
    @State private var greetingCarOwner: String = ""
    @ObservedObject var myKar = Kar(name: "라떼카", owner: "라떼")
    @State private var greetingKarOwner: String = ""
    
    var body: some View {
        VStack {
            Text("\(myCar.name)의 주인은 \(myCar.owner) 입니다.")
            
            Text(greetingCarOwner)
            Button {
                var sisCar = myCar
                sisCar.name = "여동생차"
                sisCar.owner = "여동생"
                
                greetingCarOwner = myCar.sayHi()
            } label: {
                Text("Car 주인에게 인사하기")
            }
            
            Text("\(myKar.name)의 주인은 \(myKar.owner) 입니다.")
            
            Text(greetingKarOwner)
            Button {
                let broKar = myKar
                broKar.name = "남동생차"
                broKar.owner = "남동생"
                
                greetingKarOwner = myKar.sayHi()
            } label: {
                Text("Kar 주인에게 인사하기")
            }
        }
    }
}

struct Car {
    var name: String
    var owner: String
    
    func sayHi() -> String {
        return "안녕하세요! \(owner)님"
    }
}

class Kar: ObservableObject {
    @Published var name: String
    var owner: String
    
    init(name: String, owner: String) {
        self.name = name
        self.owner = owner
    }
    
    func sayHi() -> String {
        return "안녕하세요! \(owner)님"
    }
}

struct DiffBtwStructAndClass_Previews: PreviewProvider {
    static var previews: some View {
        DiffBtwStructAndClass()
    }
}
