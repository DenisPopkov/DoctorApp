//
//  CardViewData.swift
//  DoctorApp
//
//  Created by Denis Popkov on 11/17/23.
//

import SwiftUI

extension CardViewModel {
    static let firstCardViewData: CardViewModel = CardViewModel(
        cardBackgroundColor: .darkBlueCard,
        doctorNameColor: .white,
        doctorDegreeColor: .white,
        dividerColor: .blackDivider,
        doctorImageUrl: ImageAsset.icFirstDoctor,
        doctorName: LocalizedStringKey.firstDoctorName,
        doctorDegree: LocalizedStringKey.firstDoctorDegree,
        isMainCard: true
    )
    static let secondCardViewData: CardViewModel = CardViewModel(
        cardBackgroundColor: .white,
        doctorNameColor: .nearBlack,
        doctorDegreeColor: .purple,
        dividerColor: .lightDivider,
        doctorImageUrl: ImageAsset.icSecondDoctor,
        doctorName: LocalizedStringKey.secondDoctorName,
        doctorDegree: LocalizedStringKey.secondDoctorDegree,
        isMainCard: false
    )
}
