//
//  CardViewData.swift
//  DoctorApp
//
//  Created by Denis Popkov on 11/17/23.
//

import SwiftUI

extension CardViewModel {
    static let firstCardViewData: CardViewModel =
    CardViewModel(cardBackgroundColor: .darkBlueCard, doctorNameColor: .white, doctorDegreeColor: .white, dividerColor: .blackDivider, doctorImageUrl: "ic_first_doctor", doctorName: "first_doctor_name", doctorDegree: "first_doctor_degree", isMainCard: true)
    
    static let secondCardViewData: CardViewModel =
    CardViewModel(cardBackgroundColor: .white, doctorNameColor: .nearBlack, doctorDegreeColor: .purple, dividerColor: .lightDivider, doctorImageUrl: "ic_second_doctor", doctorName: "second_doctor_name", doctorDegree: "second_doctor_degree", isMainCard: false)
}
