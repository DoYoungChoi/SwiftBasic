//
//  Onboarding.swift
//  SwiftBasic
//
//  Created by dodor on 2023/10/10.
//

import SwiftUI

struct Onboarding: View {
    var body: some View {
        VStack {
            Text("What's New in Photos")
                .font(.largeTitle)
                .padding(.vertical, 32)
            
            ContentCard(imageName: "person.2",
                        title: "Shared Library",
                        content: "Combine photos and videos with the people closest to you and automatically share new photos from Camera.")
            
            ContentCard(imageName: "slider.horizontal.2.square.on.square",
                        title: "Copy & Paste Edits",
                        content: "Save time by making edits to one photo, then applying the changes to other photos with a tap.")
            
            ContentCard(imageName: "square.on.square",
                        title: "Merge Duplicates",
                        content: "Quickly find and merge all your duplicate photos and videos from one central place in the Albums tab.")
            
            Spacer()
            
            Button {
            } label: {
                Text("Continue")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.accentColor)
                    .foregroundColor(.white)
                    .cornerRadius(15)
            }
        }
        .bold()
        .padding()
    }
}

struct ContentCard: View {
    var imageName: String
    var title: String
    var content: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 30)
                .foregroundColor(.accentColor)
                .padding(.horizontal, 10)
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.headline)
                
                Text(content)
                    .foregroundColor(.gray)
            }
        }
        .padding(12)
    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
