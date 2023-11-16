//
//  CategoryView.swift
//  DoctorApp
//
//  Created by Denis Popkov on 11/11/23.
//

import SwiftUI

struct CategoryView: View {
    
    var categoryList: [CategoryModel] = [
        CategoryModel(imageUrl: "ic_covid", categoryName: "covid_label"),
        CategoryModel(imageUrl: "ic_profile", categoryName: "doctor_label"),
        CategoryModel(imageUrl: "ic_medicine", categoryName: "medicine_label"),
        CategoryModel(imageUrl: "ic_hospital", categoryName: "hospital_label"),
    ]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 14) {
                ForEach(categoryList, id: \.self) { category in
                    VStack {
                        Image(category.imageUrl)
                            .padding(24)
                            .background(Color("AccentBackgroundColor"), in: .circle)
                        Text(LocalizedStringKey(category.categoryName), comment: "Text")
                            .foregroundColor(Color("PurpleTextColor"))
                            .font(.custom("Poppins-Regular", size: 15, relativeTo: .body))
                            .padding(.top, 2)
                    }
                }
            }
        }.frame(maxHeight: 100)
    }
}

#Preview {
    CategoryView()
}
