//
//  ContentView.swift
//  DoctorApp
//
//  Created by Denis Popkov on 11/11/23.
//

import SwiftUI

struct MainScreen: View {
    
    var doctors: [CardViewModel] = [
        CardViewModel.secondCardViewData,
        CardViewModel.thirdCardViewData,
    ]
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                HeaderView(userData: .constant(UserModel.userData))
                Button(action: {}) {
                    CardView(cardViewData: .constant(CardViewModel.firstCardViewData))
                        .padding(.top, mediumPadding)
                }.hoverEffect()
                Button(action: {}) {
                    SearchView()
                        .padding(.top, mediumPadding)
                }.hoverEffect()
                CategoryView(categoryList: .constant(CategoryModel.categoryList))
                    .padding(.top, mediumPadding)
                Text(LocalizedStringKey.nearDoctorLabel, comment: "Text")
                    .foregroundColor(.nearBlack)
                    .font(.poppinsSemiBold16)
                    .padding(.top, largePadding)
                ForEach(doctors) { doctor in
                    Button(action: {}) {
                        CardView(cardViewData: .constant(doctor))
                            .shadow(
                                color: .shadow.opacity(shadowOpacity),
                                radius: cornerItemRadius, x: shadowX, y: shadowY
                            )
                            .padding(.top, smallPadding)
                    }.hoverEffect()
                }
                Spacer(minLength: fromBottomPadding)
            }
        }
        .padding([.leading, .trailing], largePadding)
        .padding(.top, mediumPadding)
    }
}

#Preview {
    MainScreen()
}
