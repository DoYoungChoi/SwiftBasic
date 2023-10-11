//
//  Navigation.swift
//  SwiftBasic
//
//  Created by dodor on 2023/10/11.
//

import SwiftUI

struct Navigation: View {
    
    let titles = ["디테일뷰로 이동하기", "디테일뷰로 이동하기2"]
    let descriptions = ["데스티네이션입니다", "데스티네이션입니다2"]
    
    @State private var showModal: Bool = false
    var body: some View {
        NavigationStack {
            List {
                ForEach([0,1], id: \.self) { index in
                    NavigationLink {
                        Text(descriptions[index])
                    } label: {
                        Text(titles[index])
                    }
                }
            }
            .toolbar {
                ToolbarItem {
                    Button {
                        showModal.toggle()
                    } label: {
                        Text("Add")
                    }
                }
            }
            .sheet(isPresented: $showModal) {
                Text("아이템 추가 페이지입니다")
            }
            .navigationTitle("네비게이션")
        }
    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
