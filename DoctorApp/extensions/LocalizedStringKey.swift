//
//  LocalizedStringKey.swift
//  DoctorApp
//
//  Created by Denis Popkov on 11/16/23.
//

import SwiftUI

extension LocalizedStringKey {
    
    static var empty: LocalizedStringKey = ""
    
    var stringValue: String {
        guard let stringKey else { return .empty }
        return stringKey.localizedString
    }
    
    private var stringKey: String? {
        Mirror(reflecting: self)
            .children
            .first(where: { $0.label == "key" })?
            .value as? String
    }
}
