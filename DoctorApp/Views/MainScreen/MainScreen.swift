//
//  ContentView.swift
//  DoctorApp
//
//  Created by Denis Popkov on 11/11/23.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                HeaderView(userData: .constant(UserModel.userData))
                CardView(cardViewData: .constant(CardViewModel.firstCardViewData)).padding(.top, mediumPadding16)
                SearchView().padding(.top, mediumPadding14)
                CategoryView(categoryList: .constant(CategoryModel.categoryList)).padding(.top, mediumPadding18)
                Text(LocalizedStringKey.nearDoctorLabel, comment: "Text")
                    .foregroundColor(.nearBlack)
                    .font(.poppinsSemiBold16)
                    .padding(.top, bigPadding24)
                CardView(cardViewData: .constant(CardViewModel.secondCardViewData))
                    .shadow(color: .shadow.opacity(shadowOpacity), radius: cornerRadius10, x: shadowX, y: shadowY)
                    .padding(.top, smallPadding6)
            }
        }
        .padding([.leading, .trailing], bigPadding24)
        .padding(.top, mediumPadding20)
    }
}

#Preview {
    MainScreen()
}
