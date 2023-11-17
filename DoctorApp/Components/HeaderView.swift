//
//  HeaderView.swift
//  DoctorApp
//
//  Created by Denis Popkov on 11/11/23.
//

import SwiftUI

struct HeaderView: View {
    
    var userLogoUrl: String = "ic_user_logo"
    var userName: String = "James"
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("greeting_first_part", comment: "Text")
                        .foregroundColor(.purple)
                        .font(.poppinsRegular16)
                    HStack {
                        Text("greeting_second_part", comment: "Text")
                            .foregroundColor(.blackText)
                            .font(.poppinsBold20)
                        Text(userName)
                            .foregroundColor(.blackText)
                            .font(.poppinsBold20)
                    }
                }
                Spacer()
                Image(userLogoUrl)
            }
        }
    }
}

#Preview {
    HeaderView()
}
