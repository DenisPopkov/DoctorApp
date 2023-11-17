//
//  TabbedItems.swift
//  DoctorApp
//
//  Created by Denis Popkov on 11/12/23.
//

import SwiftUI

enum TabbedItems: Int, CaseIterable {
    case home
    case calendar
    case chat
    case profile
    
    var title: String {
        switch self {
        case .home:
            return LocalizedStringKey.tabHomeLabel
        case .calendar:
            return LocalizedStringKey.tabDateLabel
        case .chat:
            return LocalizedStringKey.tabChatLabel
        case .profile:
            return LocalizedStringKey.tabProfileLabel
        }
    }
    
    var iconName: String {
        switch self {
        case .home:
            return ImageAsset.icHome
        case .calendar:
            return ImageAsset.icCalendar
        case .chat:
            return ImageAsset.icMessage
        case .profile:
            return ImageAsset.icContact
        }
    }
}

struct MainTabbedView: View {
    
    @State var selectedTab = 0
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedTab) {
                MainScreen().tag(0)
                DateScreen().tag(1)
                ChatScreen().tag(2)
                ProfileScreen().tag(3)
            }
            ZStack {
                HStack {
                    ForEach((TabbedItems.allCases), id: \.self) { item in
                        Button {
                            selectedTab = item.rawValue
                        } label: {
                            createCustomTabView(imageName: item.iconName, title: item.title, isActive: (selectedTab == item.rawValue))
                        }
                    }
                }
            }
            .background(.white)
            .padding([.leading, .trailing], bigPadding24)
        }
    }
}

extension MainTabbedView {
    func createCustomTabView(imageName: String, title: String, isActive: Bool) -> some View {
        let backgroundColor: Color = isActive ? .activeTabBackground : .clear
        return HStack {
            Spacer()
            Image(imageName)
                .renderingMode(.template)
                .foregroundColor(isActive ? .tabAccent : .tabNotAccent)
            if isActive {
                Text(title)
                    .font(.nunitoBold14)
                    .foregroundColor(isActive ? .tabAccent : .gray)
            }
            Spacer()
        }
        .frame(width: isActive ? activeTabHeight94 : notActiveTabHeight64)
        .frame(maxWidth: .infinity)
        .frame(height: imageSize48)
        .background(backgroundColor)
        .cornerRadius(cornerRadius12)
    }
}
