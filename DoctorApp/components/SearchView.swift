//
//  SearchView.swift
//  DoctorApp
//
//  Created by Denis Popkov on 11/11/23.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            Label(NSLocalizedString("search_label", comment: ""), image: "ic_magnifier")
                .font(.custom("Poppins-Regular", size: 15, relativeTo: .body))
                .foregroundColor(Color("PurpleTextColor"))
        }
        .padding(16)
        .background(Color("AccentBackgroundColor"))
        .cornerRadius(12)
    }
}

#Preview {
    SearchView()
}
