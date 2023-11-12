//
//  ContentView.swift
//  DoctorApp
//
//  Created by Denis Popkov on 11/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HeaderView().padding(.bottom, 36)
            CardView().padding(.bottom, 20)
            SearchView().padding(.bottom, 24)
            CategoryView()
            Text(NSLocalizedString("near_doctor_label", comment: ""))
                .foregroundColor(Color("NearBlackTextColor"))
                .font(.custom("Poppins-SemiBold", size: 16, relativeTo: .title3))
                .padding(.top, 32)
        }
        .padding([.leading, .trailing], 24)
        .padding(.top, 20)
    }
}

#Preview {
    ContentView()
}
