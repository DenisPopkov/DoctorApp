//
//  SearchView.swift
//  DoctorApp
//
//  Created by Denis Popkov on 11/11/23.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        HStack {
            Label {
                Text("search_label", comment: "Text")
                    .font(.poppinsRegular16)
                    .foregroundColor(.purple)
                    .padding(.leading, smallPadding6)
            } icon: {
                Image("ic_magnifier")
            }
            Spacer()
        }
        .padding(mediumPadding16)
        .background(.accentBackground)
        .clipShape(RoundedRectangle(cornerRadius: cornerRadius12))
    }
}

#Preview {
    SearchView()
}
