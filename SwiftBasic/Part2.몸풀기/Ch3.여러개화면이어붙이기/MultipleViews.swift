//
//  MultipleViews.swift
//  SwiftBasic
//
//  Created by dodor on 2023/10/11.
//

import SwiftUI

struct MultipleViews: View {
    
    @State private var showModal: Bool = false
    
    var body: some View {
        TabView {
            NavigationStack {
                List {
                    NavigationLink {
                        Text("첫 번째 하위페이지")
                    } label: {
                        Text("첫 번째 페이지")
                    }
                    
                    NavigationLink {
                        Text("두 번째 하위페이지")
                    } label: {
                        Text("두 번째 페이지")
                    }
                    
                    
                    NavigationLink {
                        Text("세 번째 하위페이지")
                    } label: {
                        Text("세 번째 페이지")
                    }
                    
                    NavigationLink {
                        Text("네 번째 하위페이지")
                    } label: {
                        Text("네 번째 페이지")
                    }
                }
                .navigationTitle("리스트")
            }
            .tabItem {
                Label("First", systemImage: "list.bullet.clipboard")
            }
            
            Text("Second")
                .tabItem {
                    Label("Second", systemImage: "cross.case")
                }
            
            Text("Third")
                .tabItem {
                    Label("Third", systemImage: "bed.double")
                }
            
            Text("Fourth")
                .tabItem {
                    Label("Fourth", systemImage: "syringe")
                }
        }
        .sheet(isPresented: $showModal) {
            TabView {
                ZStack {
                    Color.yellow
                        .ignoresSafeArea()
                    VStack {
                        Text("온보딩1")
                            .font(.largeTitle)
                        
                        Spacer()
                    }
                    .padding()
                }
                
                ZStack {
                    Color.green
                        .ignoresSafeArea()
                    VStack {
                        Text("온보딩2")
                            .font(.largeTitle)
                        
                        Spacer()
                    }
                    .padding()
                }
                
                ZStack {
                    Color.cyan
                        .ignoresSafeArea()
                    VStack {
                        Text("온보딩3")
                            .font(.largeTitle)
                        
                        Spacer()
                        
                        Button {
                            showModal = false
                        } label: {
                            Text("Start")
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        .padding(.bottom)
                    }
                    .padding()
                }
            }
            .tabViewStyle(.page)
        }
        .onAppear {
            showModal = true
        }
    }
}

struct MultipleViews_Previews: PreviewProvider {
    static var previews: some View {
        MultipleViews()
    }
}
