//
//  Settings.swift
//  SwiftBasic
//
//  Created by dodor on 2023/10/11.
//

import SwiftUI

struct Setting: Hashable {
    var title: String
    var imageName: String
    var color: Color
    var iconColor: Color = .white
}

struct Settings: View {
    
    var settings: [[Setting]] = [
        [
            Setting(title: "에어플레인 모드",
                    imageName: "airplane",
                    color: .orange),
            Setting(title: "Wi-Fi",
                    imageName: "wifi",
                    color: .blue),
            Setting(title: "Bluetooth",
                    imageName: "bolt.horizontal",
                    color: .blue),
            Setting(title: "셀룰러",
                    imageName: "antenna.radiowaves.left.and.right",
                    color: .green),
            Setting(title: "개인용 핫스팟",
                    imageName: "personalhotspot",
                    color: .green)
        ],
        [
            Setting(title: "알림",
                    imageName: "bell.badge.fill",
                    color: .red),
            Setting(title: "사운드 및 햅틱",
                    imageName: "speaker.wave.3.fill",
                    color: .pink),
            Setting(title: "집중 모드",
                    imageName: "moon.fill",
                    color: .indigo),
            Setting(title: "스크린 타임",
                    imageName: "hourglass",
                    color: .indigo),
        ],
        [
            Setting(title: "일반",
                    imageName: "gear",
                    color: .gray),
            Setting(title: "제어 센터",
                    imageName: "switch.2",
                    color: .gray),
            Setting(title: "디스플레이 및 밝기",
                    imageName: "textformat.size",
                    color: .blue),
            Setting(title: "손쉬운 사용",
                    imageName: "figure.wave.circle",
                    color: .blue),
            Setting(title: "배경화면",
                    imageName: "atom",
                    color: .cyan),
            Setting(title: "Siri 및 검색",
                    imageName: "apple.logo",
                    color: .black),
            Setting(title: "Face ID 및 암호",
                    imageName: "faceid",
                    color: .green),
            Setting(title: "긴급 구조 요청",
                    imageName: "sos",
                    color: .red),
            Setting(title: "노출 알림",
                    imageName: "sun.min.fill",
                    color: .yellow,
                    iconColor: .pink),
            Setting(title: "배터리",
                    imageName: "battery.100",
                    color: .green),
            Setting(title: "개인정보 보호 및 보안",
                    imageName: "hand.raised.fill",
                    color: .blue)
        ]
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(settings, id:\.self) { section in
                    Section {
                        ForEach(section, id:\.self) { item in
                            SettingItem(setting: item)
                        }
                    }
                }
            }
            .navigationTitle("설정")
        }
    }
}

struct SettingItem: View {
    let setting: Setting
    
    var body: some View {
        HStack {
            Image(systemName: setting.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                .padding(5)
                .background(setting.color)
                .foregroundColor(setting.iconColor)
                .cornerRadius(8)
                .padding(.horizontal, 5)
            
            Text(setting.title)
        }
    }
}

struct Setting_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
