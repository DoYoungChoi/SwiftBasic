//
//  Detail.swift
//  SwiftBasic
//
//  Created by dodor on 2023/10/11.
//

import SwiftUI

struct Detail: View {
    
    @Binding var showModal: Bool
    
    var body: some View {
        VStack {
            Text("모달 페이지 입니다")
            
            Button {
                showModal.toggle()
            } label: {
                Text("닫기")
            }
        }
    }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        Detail(showModal: .constant(true))
    }
}
