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
    var doctorName: LocalizedStringKey = "first_doctor_name"
    var doctorDegree: LocalizedStringKey = "first_doctor_degree"
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
                    Text(doctorName, comment: "Text")
                        .foregroundColor(doctorNameColor)
                        .font(.custom("Poppins-Bold", size: 16, relativeTo: .title))
                    
                    Text(doctorDegree, comment: "Text")
                        .foregroundColor(doctorDegreeColor)
                        .font(.custom("Poppins-Regular", size: 14, relativeTo: .body))
                }
                
                Spacer()
                
                if isMainCard {
                    Image("ic_arrow")
                } else {
                    Label {
                        Text("distance_label", comment: "Text")
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
                        Text("date_label", comment: "Text")
                            .font(.custom("Poppins-Regular", size: 12, relativeTo: .body))
                            .foregroundColor(.white)
                    } icon: {
                        Image("ic_date_calendar")
                    }
                    Label {
                        Text("time_label", comment: "Text")
                            .font(.custom("Poppins-Regular", size: 12, relativeTo: .body))
                            .foregroundColor(.white)
                    } icon: {
                        Image("ic_clock")
                    }
                    .padding(.leading, 25)
                }
            } else {
                HStack {
                    Label {
                        Text("rating_label", comment: "Text")
                            .font(.custom("Poppins-Regular", size: 12, relativeTo: .body))
                            .foregroundColor(Color("ReviewItemTintColor"))
                    } icon: {
                        Image("ic_clock")
                            .renderingMode(.template)
                            .foregroundColor(Color("ReviewItemTintColor"))
                    }
                    Label {
                        Text("open_time_label", comment: "Text")
                            .font(.custom("Poppins-Regular", size: 12, relativeTo: .body))
                            .foregroundColor(Color("TimeItemTintColor"))
                    } icon: {
                        Image("ic_clock")
                            .renderingMode(.template)
                            .foregroundColor(Color("TimeItemTintColor"))
                    }
                    .padding(.leading, 25)
                }
            }
        }
        .padding(20)
        .background(cardBackgroundColor, in: RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    CardView()
}
