//
//  CategoryView.swift
//  DoctorApp
//
//  Created by Denis Popkov on 11/11/23.
//

import SwiftUI

struct CategoryView: View {
    
    @Binding var categoryList: [CategoryModel]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: itemSpacing) {
                ForEach(categoryList, id: \.self) { category in
                    Button(action: {}) {
                        VStack {
                            Image(category.imageUrl)
                                .padding(largePadding)
                                .background(.accentBackground, in: .circle)
                            Text(LocalizedStringKey(category.categoryName))
                                .foregroundColor(.purple)
                                .font(.poppinsRegular16)
                        }
                    }.hoverEffect()
                }
            }
        }
    }
}

#Preview {
    CategoryView(categoryList: .constant(CategoryModel.categoryList))
}
