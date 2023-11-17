//
//  ContentView.swift
//  DoctorApp
//
//  Created by Denis Popkov on 11/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                HeaderView()
                CardView(cardViewData: .constant(CardViewModel.firstCardViewData)).padding(.top, 16)
                SearchView().padding(.top, 14)
                CategoryView(categoryList: .constant(CategoryModel.categoryList)).padding(.top, 18)
                Text("near_doctor_label", comment: "")
                    .foregroundColor(.nearBlack)
                    .font(.poppinsSemiBold16)
                    .padding(.top, 24)
                CardView(cardViewData: .constant(CardViewModel.secondCardViewData))
                    .shadow(color: .shadow.opacity(0.04), radius: 10, x: 2, y: 12)
                    .padding(.top, 6)
            }
        }
        .padding([.leading, .trailing], 24)
        .padding(.top, 20)
    }
}

#Preview {
    ContentView()
}
