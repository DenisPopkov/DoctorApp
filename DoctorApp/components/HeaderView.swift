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
                        .foregroundColor(Color("PurpleTextColor"))
                        .font(.custom("Poppins-Regular", size: 16, relativeTo: .body))
                    
                    HStack {
                        Text("greeting_second_part", comment: "Text")
                            .foregroundColor(Color("BlackTextColor"))
                            .font(.custom("Poppins-Bold", size: 20, relativeTo: .title))
                        Text(userName)
                            .foregroundColor(Color("BlackTextColor"))
                            .font(.custom("Poppins-Bold", size: 20, relativeTo: .title))
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
