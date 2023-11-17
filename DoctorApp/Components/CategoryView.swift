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
            LazyHStack(spacing: itemSpacing14) {
                ForEach(categoryList, id: \.self) { category in
                    VStack {
                        Image(category.imageUrl)
                            .padding(bigPadding24)
                            .background(.accentBackground, in: .circle)
                        Text(LocalizedStringKey(category.categoryName), comment: "Text")
                            .foregroundColor(.purple)
                            .font(.poppinsRegular16)
                            .padding(.top, smallPadding2)
                    }
                }
            }
        }.frame(maxHeight: frameHeight100)
    }
}

#Preview {
    CategoryView(categoryList: .constant(CategoryModel.categoryList))
}
