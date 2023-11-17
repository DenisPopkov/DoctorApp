//
//  CategoryViewData.swift
//  DoctorApp
//
//  Created by Denis Popkov on 11/17/23.
//

import Foundation

extension CategoryModel {
    static let categoryList: [CategoryModel] = [
        CategoryModel(imageUrl: "ic_covid", categoryName: "covid_label"),
        CategoryModel(imageUrl: "ic_profile", categoryName: "doctor_label"),
        CategoryModel(imageUrl: "ic_medicine", categoryName: "medicine_label"),
        CategoryModel(imageUrl: "ic_hospital", categoryName: "hospital_label"),
    ]
}
