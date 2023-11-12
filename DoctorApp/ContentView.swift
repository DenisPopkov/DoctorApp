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
            HeaderView()
            CardView().padding(.top, 16)
            SearchView().padding(.top, 14)
            CategoryView().padding(.top, 18)
            Text(NSLocalizedString("near_doctor_label", comment: ""))
                .foregroundColor(Color("NearBlackTextColor"))
                .font(.custom("Poppins-SemiBold", size: 16, relativeTo: .title3))
                .padding(.top, 24)
            CardView(
                cardBackgroundColor: .white, doctorNameColor: Color("NearBlackTextColor"), doctorDegreeColor: Color("PurpleTextColor"), dividerColor: Color("LightDividerColor"), doctorImageUrl: "ic_second_doctor", doctorName: "second_doctor_name", doctorDegree: "second_doctor_degree", isMainCard: false
            )
            .shadow(color: Color("ShadowColor").opacity(0.04), radius: 10, x: 2, y: 12)
            .padding(.top, 6)
        }
        .padding([.leading, .trailing], 24)
    }
}

#Preview {
    ContentView()
}
