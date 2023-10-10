//
//  MyCar.swift
//  SwiftBasic
//
//  Created by dodor on 2023/10/10.
//

import SwiftUI

struct MyCar: View {
    
    let myCar: KIA = KIA()
    let sisCar: Hyundai = Hyundai()
    let cars: [Driveable] = [KIA(), Hyundai()]
    
    @State private var myCarSpeed: Int = 10
    @State private var sisCarSpeed: Int = 10
    
    var body: some View {
        VStack {
            Text("내 차 speed: \(myCarSpeed)")
            
            Button {
                myCarSpeed = myCar.speedDown(with: myCarSpeed)
            } label: {
                Text("내 차 감속!")
            }
            
            Text("여동생 차 speed: \(sisCarSpeed)")
            
            Button {
                sisCarSpeed = sisCar.speedDown(with: sisCarSpeed)
            } label: {
                Text("여동생 차 감속!")
            }
        }
    }
}

struct KIA: Driveable {
    func speedDown(with speed: Int) -> Int {
        if speed > 0 {
            return speed - 1
        } else {
            return 0
        }
    }
}

struct Hyundai: Driveable {
    func speedDown(with speed: Int) -> Int {
        if speed > 0 {
            return speed - 5
        } else {
            return 0
        }
    }
}

protocol Driveable {
    func speedDown(with speed: Int) -> Int
}

struct MyCar_Previews: PreviewProvider {
    static var previews: some View {
        MyCar()
    }
}
