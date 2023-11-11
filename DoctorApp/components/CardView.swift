//
//  CardView.swift
//  DoctorApp
//
//  Created by Denis Popkov on 11/11/23.
//

import SwiftUI

struct CardView: View {
    
    var cardBackgroundColor: Color = Color("BlueCardColor")
    var doctorNameColor: Color = .white
    var doctorImageUrl: String = "ic_first_doctor"
    var imageShapeRadius: CGFloat = 0
    var isMainCard: Bool = true
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Image(doctorImageUrl)
                    .resizable()
                        .scaledToFill()
                        .frame(width: 48, height: 48, alignment: .top)
                        .background(.white)
                        .clipShape(.circle)
                        .padding(.trailing, 8)
                
                VStack(alignment: .leading) {
                    Text(NSLocalizedString("first_doctor_name", comment: ""))
                        .foregroundColor(doctorNameColor)
                        .font(.custom("Poppins-Bold", size: 16, relativeTo: .title))
                    
                    Text(NSLocalizedString("first_doctor_degree", comment: ""))
                        .foregroundColor(Color("GrayTextColor"))
                        .font(.custom("Poppins-Regular", size: 14, relativeTo: .body))
                }
                Spacer()
                Image("ic_arrow")
            }
            
            Divider()
                .overlay(Color("DividerColor"))
            
            HStack {
                Label(NSLocalizedString("date_label", comment: ""), image: "ic_date_calendar")
                    .font(.custom("Poppins-Regular", size: 12, relativeTo: .body))
                    .foregroundColor(.white)
                Label(NSLocalizedString("time_label", comment: ""), image: "ic_clock")
                    .font(.custom("Poppins-Regular", size: 12, relativeTo: .body))
                    .foregroundColor(.white)
                    .padding(.leading, 30)
            }
        }
        .padding(20)
        .background(cardBackgroundColor)
        .cornerRadius(12)
    }
}

#Preview {
    CardView()
}
