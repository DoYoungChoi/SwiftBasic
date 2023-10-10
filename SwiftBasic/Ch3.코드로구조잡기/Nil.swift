//
//  Nil.swift
//  SwiftBasic
//
//  Created by dodor on 2023/10/10.
//

import SwiftUI

struct Nil: View {
    
    var dodor = People(name: "Dodor",
                       pet: Pet(name: "Latte", age: 2))
    
    var body: some View {
        VStack {
            Text("이름: \(dodor.name)")
            
            if let pet = dodor.pet {
                Text("반려동물 이름: \(pet.name)")
            } else {
                Text("반려동물은 없습니다.")
            }
            
            if let petAge = dodor.pet?.age {
                Text("반려동물 나이: \(petAge)")
            } else {
                Text("반려동물의 나이는 모릅니다.")
            }
        }
    }
}

struct People {
    let name: String
    var pet: Pet?
}

struct Pet {
    var name: String
    var age: Int?
}

struct Nil_Previews: PreviewProvider {
    static var previews: some View {
        Nil()
    }
}
