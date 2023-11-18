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
        VStack(alignment: .leading, spacing: itemSpacing) {
            HStack {
                Image(cardViewData.doctorImageUrl)
                    .resizable()
                    .scaledToFill()
                    .frame(width: circleImageSize, height: circleImageSize, alignment: .top)
                    .background(.white)
                    .clipShape(.circle)
                    .padding(.trailing, smallPadding)
                
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
                    Image(ImageAsset.icArrow)
                } else {
                    Label {
                        Text(LocalizedStringKey.distanceLabel, comment: "Text")
                            .font(.poppinsRegular14)
                            .foregroundColor(.purple)
                    } icon: {
                        Image(ImageAsset.icLocation)
                    }
                }
            }
            
            Divider().overlay(cardViewData.dividerColor).padding([.top, .bottom], superSmallPadding)
            
            if cardViewData.isMainCard {
                HStack {
                    Label {
                        Text(LocalizedStringKey.dateLabel, comment: "Text")
                            .font(.poppinsRegular12)
                            .foregroundColor(.white)
                    } icon: {
                        Image(ImageAsset.icDateCalendar)
                    }
                    Label {
                        Text(LocalizedStringKey.timeLabel, comment: "Text")
                            .font(.poppinsRegular12)
                            .foregroundColor(.white)
                    } icon: {
                        Image(ImageAsset.icClock)
                    }
                    .padding(.leading, largePadding)
                }
            } else {
                HStack {
                    Label {
                        Text(LocalizedStringKey.ratingLabel, comment: "Text")
                            .font(.poppinsRegular12)
                            .foregroundColor(.reviewTint)
                    } icon: {
                        Image(ImageAsset.icClock)
                            .renderingMode(.template)
                            .foregroundColor(.reviewTint)
                    }
                    Label {
                        Text(LocalizedStringKey.openTimeLabel, comment: "Text")
                            .font(.poppinsRegular12)
                            .foregroundColor(.timeTint)
                    } icon: {
                        Image(ImageAsset.icClock)
                            .renderingMode(.template)
                            .foregroundColor(.timeTint)
                    }
                    .padding(.leading, largePadding)
                }
            }
        }
        .padding(mediumPadding)
        .background(cardViewData.cardBackgroundColor, in: RoundedRectangle(cornerRadius: cornerItemRadius))
        .defaultHoverEffect(.highlight)
    }
}

#Preview {
    CardView(cardViewData: .constant(CardViewModel.firstCardViewData))
}
