//
//  CardView.swift
//  DoctorApp
//
//  Created by Denis Popkov on 11/11/23.
//

import SwiftUI

struct CardView: View {
    
    @Binding var cardViewData: CardViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: itemSpacing16) {
            HStack {
                Image(cardViewData.doctorImageUrl)
                    .resizable()
                    .scaledToFill()
                    .frame(width: imageSize48, height: imageSize48, alignment: .top)
                    .background(.white)
                    .clipShape(.circle)
                    .padding(.trailing, smallPadding8)
                
                VStack(alignment: .leading) {
                    Text(cardViewData.doctorName, comment: "Text")
                        .foregroundColor(cardViewData.doctorNameColor)
                        .font(.poppinsBold16)
                    
                    Text(cardViewData.doctorDegree, comment: "Text")
                        .foregroundColor(cardViewData.doctorDegreeColor)
                        .font(.poppinsRegular14)
                }
                
                Spacer()
                
                if cardViewData.isMainCard {
                    Image("ic_arrow")
                } else {
                    Label {
                        Text("distance_label", comment: "Text")
                            .font(.poppinsRegular14)
                            .foregroundColor(.purple)
                    } icon: {
                        Image("ic_location")
                    }
                }
            }
            
            Divider().overlay(cardViewData.dividerColor)
            
            if cardViewData.isMainCard {
                HStack {
                    Label {
                        Text("date_label", comment: "Text")
                            .font(.poppinsRegular12)
                            .foregroundColor(.white)
                    } icon: {
                        Image("ic_date_calendar")
                    }
                    Label {
                        Text("time_label", comment: "Text")
                            .font(.poppinsRegular12)
                            .foregroundColor(.white)
                    } icon: {
                        Image("ic_clock")
                    }
                    .padding(.leading, bigPadding24)
                }
            } else {
                HStack {
                    Label {
                        Text("rating_label", comment: "Text")
                            .font(.poppinsRegular12)
                            .foregroundColor(Color("ReviewItemTintColor"))
                    } icon: {
                        Image("ic_clock")
                            .renderingMode(.template)
                            .foregroundColor(.reviewTint)
                    }
                    Label {
                        Text("open_time_label", comment: "Text")
                            .font(.poppinsRegular12)
                            .foregroundColor(.timeTint)
                    } icon: {
                        Image("ic_clock")
                            .renderingMode(.template)
                            .foregroundColor(.timeTint)
                    }
                    .padding(.leading, bigPadding24)
                }
            }
        }
        .padding(mediumPadding20)
        .background(cardViewData.cardBackgroundColor, in: RoundedRectangle(cornerRadius: cornerRadius12))
    }
}

#Preview {
    CardView(cardViewData: .constant(CardViewModel.firstCardViewData))
}
