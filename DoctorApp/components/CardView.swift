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
    var doctorDegreeColor: Color = .white
    var dividerColor: Color = Color("DividerColor")
    var doctorImageUrl: String = "ic_first_doctor"
    var doctorName: String = "first_doctor_name"
    var doctorDegree: String = "first_doctor_degree"
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
                    Text(NSLocalizedString(doctorName, comment: ""))
                        .foregroundColor(doctorNameColor)
                        .font(.custom("Poppins-Bold", size: 16, relativeTo: .title))
                    
                    Text(NSLocalizedString(doctorDegree, comment: ""))
                        .foregroundColor(doctorDegreeColor)
                        .font(.custom("Poppins-Regular", size: 14, relativeTo: .body))
                }
                Spacer()
                if isMainCard {
                    Image("ic_arrow")
                } else {
                    Label {
                        Text(NSLocalizedString("distance_label", comment: ""))
                            .font(.custom("Poppins-Regular", size: 14, relativeTo: .body))
                            .foregroundColor(Color("PurpleTextColor"))
                    } icon: {
                        Image("ic_location")
                    }
                }
            }
            
            Divider().overlay(dividerColor)
            
            if isMainCard {
                HStack {
                    Label {
                        Text(NSLocalizedString("date_label", comment: ""))
                            .font(.custom("Poppins-Regular", size: 12, relativeTo: .body))
                            .foregroundColor(.white)
                    } icon: {
                        Image("ic_date_calendar")
                    }
                    Label {
                        Text(NSLocalizedString("time_label", comment: ""))
                            .font(.custom("Poppins-Regular", size: 12, relativeTo: .body))
                            .foregroundColor(.white)
                    } icon: {
                        Image("ic_clock")
                    }
                    .padding(.leading, 30)
                }
            } else {
                HStack {
                    Label {
                        Text(NSLocalizedString("rating_label", comment: ""))
                            .font(.custom("Poppins-Regular", size: 12, relativeTo: .body))
                            .foregroundColor(Color("ReviewItemTintColor"))
                    } icon: {
                        Image("ic_clock")
                            .renderingMode(.template)
                            .foregroundColor(Color("ReviewItemTintColor"))
                    }
                    Label {
                        Text(NSLocalizedString("open_time_label", comment: ""))
                            .font(.custom("Poppins-Regular", size: 12, relativeTo: .body))
                            .foregroundColor(Color("TimeItemTintColor"))
                    } icon: {
                        Image("ic_clock")
                            .renderingMode(.template)
                            .foregroundColor(Color("TimeItemTintColor"))
                    }
                    .padding(.leading, 30)
                }
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
