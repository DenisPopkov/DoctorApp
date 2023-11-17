//
//  CardViewModel.swift
//  DoctorApp
//
//  Created by Denis Popkov on 11/17/23.
//

import SwiftUI

struct CardViewModel {
    var cardBackgroundColor: Color
    var doctorNameColor: Color
    var doctorDegreeColor: Color
    var dividerColor: Color
    var doctorImageUrl: String
    var doctorName: LocalizedStringKey
    var doctorDegree: LocalizedStringKey
    var isMainCard: Bool
    
    init(cardBackgroundColor: Color, doctorNameColor: Color, doctorDegreeColor: Color, dividerColor: Color, doctorImageUrl: String, doctorName: LocalizedStringKey, doctorDegree: LocalizedStringKey, isMainCard: Bool) {
        self.cardBackgroundColor = cardBackgroundColor
        self.doctorNameColor = doctorNameColor
        self.doctorDegreeColor = doctorDegreeColor
        self.dividerColor = dividerColor
        self.doctorImageUrl = doctorImageUrl
        self.doctorName = doctorName
        self.doctorDegree = doctorDegree
        self.isMainCard = isMainCard
    }
}
