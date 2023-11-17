//
//  TabbedItems.swift
//  DoctorApp
//
//  Created by Denis Popkov on 11/12/23.
//

import SwiftUI

enum TabbedItems: Int, CaseIterable {
    case home = 0
    case calendar
    case chat
    case profile
    
    var title: String {
        switch self {
        case .home:
            return "Home"
        case .calendar:
            return "Date"
        case .chat:
            return "Chat"
        case .profile:
            return "Profile"
        }
    }
    
    var iconName: String {
        switch self {
        case .home:
            return "ic_home"
        case .calendar:
            return "ic_calendar"
        case .chat:
            return "ic_message"
        case .profile:
            return "ic_contact"
        }
    }
}

struct MainTabbedView: View {
    
    @State var selectedTab = 0
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedTab) {
                ContentView().tag(0)
            }
            ZStack {
                HStack {
                    ForEach((TabbedItems.allCases), id: \.self) { item in
                        Button {
                            selectedTab = item.rawValue
                        } label: {
                            CustomTabItem(imageName: item.iconName, title: item.title, isActive: (selectedTab == item.rawValue))
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
    func CustomTabItem(imageName: String, title: String, isActive: Bool) -> some View {
        HStack {
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
        .background(isActive ? Color("TabViewActiveBarBackgroundColor") : .clear)
        .cornerRadius(cornerRadius12)
    }
}
