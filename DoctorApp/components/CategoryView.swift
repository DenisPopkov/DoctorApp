//
//  CategoryView.swift
//  DoctorApp
//
//  Created by Denis Popkov on 11/11/23.
//

import SwiftUI

struct CategoryView: View {
    
    var categoryList: [CategoryModel] = [
        CategoryModel(imageUrl: "ic_covid", categoryName: NSLocalizedString("covid_label", comment: "")),
        CategoryModel(imageUrl: "ic_profile", categoryName: NSLocalizedString("doctor_label", comment: "")),
        CategoryModel(imageUrl: "ic_medicine", categoryName: NSLocalizedString("medicine_label", comment: "")),
        CategoryModel(imageUrl: "ic_hospital", categoryName: NSLocalizedString("hospital_label", comment: "")),
    ]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 4) {
                ForEach(categoryList, id: \.self) { category in
                    VStack {
                        ZStack {
                            Image(category.imageUrl)
                        }
                        .padding(24)
                        .background(Color("AccentBackgroundColor"))
                        .cornerRadius(100)
                        .clipShape(.circle)
                        Text(category.categoryName)
                            .foregroundColor(Color("PurpleTextColor"))
                            .font(.custom("Poppins-Regular", size: 15, relativeTo: .body))
                    }
                    Spacer()
                }
            }
        }.frame(maxHeight: 100)
    }
}

#Preview {
    CategoryView()
}
