//
//  SystemDesign.swift
//  DoctorApp
//
//  Created by Denis Popkov on 11/17/23.
//

import SwiftUI

extension Color {
    static let nearBlack = Color("NearBlackTextColor")
    static let purple = Color("PurpleTextColor")
    static let whiteDivider = Color("LightDividerColor")
    static let blackDivider = Color("DividerColor")
    static let darkShadow = Color("ShadowColor")
    static let blueAccentBackground = Color("AccentBackgroundColor")
    static let darkBlack = Color("BlackTextColor")
    static let darkBlueCard = Color("BlueCardColor")
    static let reviewTint = Color("ReviewItemTintColor")
    static let timeTint = Color("TimeItemTintColor")
    static let lightTabAccent = Color("TabAccentColor")
    static let tabNotAccent = Color("TabNotActiveAccentColor")
    static let activeTabBackground = Color("TabViewActiveBarBackgroundColor")
}

extension Font {
    static let poppinsRegular16 = Font.custom("Poppins-Regular", size: 16)
    static let poppinsRegular14 = Font.custom("Poppins-Regular", size: 14)
    static let poppinsRegular12 = Font.custom("Poppins-Regular", size: 12)
    static let poppinsBold16 = Font.custom("Poppins-Bold", size: 16).weight(.bold)
    static let poppinsBold20 = Font.custom("Poppins-Bold", size: 20).weight(.bold)
    static let poppinsSemiBold16 = Font.custom("Poppins-SemiBold", size: 16).weight(.semibold)
    static let nunitoBold14 = Font.custom("Nunito-Bold", size: 14).weight(.bold)
}
