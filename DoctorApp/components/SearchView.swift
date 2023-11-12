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
            Label(NSLocalizedString("search_label", comment: ""), systemImage: "magnifyingglass")
                .font(.custom("Poppins-Regular", size: 15, relativeTo: .body))
                .foregroundColor(Color("PurpleTextColor"))
            Spacer()
        }
        .padding(16)
        .background(Color("AccentBackgroundColor"))
        .cornerRadius(12)
    }
}

#Preview {
    SearchView()
}
