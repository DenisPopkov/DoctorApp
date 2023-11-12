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
            CardView(
                cardBackgroundColor: .white, doctorNameColor: Color("NearBlackTextColor"), doctorDegreeColor: Color("PurpleTextColor"), doctorImageUrl: "ic_second_doctor", doctorName: "second_doctor_name", doctorDegree: "second_doctor_degree", isMainCard: false
            )
            .shadow(color: Color("ShadowColor").opacity(0.04), radius: 10, x: 2, y: 12)
            .padding(.bottom, 20)
        }
        .padding([.leading, .trailing], 24)
        .padding(.top, 20)
    }
}

#Preview {
    ContentView()
}
