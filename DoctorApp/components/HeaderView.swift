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
                    Text(NSLocalizedString("greeting_first_part", comment: ""))
                        .foregroundColor(Color("PurpleTextColor"))
                        .font(.custom("Poppins-Regular", size: 16, relativeTo: .body))
                    
                    Text(NSLocalizedString("greeting_second_part", comment: "") + " \(userName)")
                        .foregroundColor(Color("BlackTextColor"))
                        .font(.custom("Poppins-Bold", size: 20, relativeTo: .title))
                }
                Spacer()
                Image(userLogoUrl)
                    .resizable()
                    .frame(width: 56, height: 56)
            }.padding(.bottom, 36)
            
            CardView()
        }
    }
}

#Preview {
    HeaderView()
}
