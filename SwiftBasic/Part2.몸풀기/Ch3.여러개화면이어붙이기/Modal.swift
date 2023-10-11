//
//  Modal.swift
//  SwiftBasic
//
//  Created by dodor on 2023/10/11.
//

import SwiftUI

struct Modal: View {
    
    @State private var showModal: Bool = false
   
    var body: some View {
        VStack {
            Text("메일 페이지 입니다")
            Button {
                showModal.toggle()
            } label: {
                Text("Modal 화면 전환")
            }
        }
        .sheet(isPresented: $showModal) {
            Detail(showModal: $showModal)
        }
    }
}

struct Modal_Previews: PreviewProvider {
    static var previews: some View {
        Modal()
    }
}
