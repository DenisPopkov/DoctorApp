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
        HStack {
            VStack(alignment: .leading) {
                Text(NSLocalizedString("greeting_first_part", comment: ""))
                    .foregroundColor(Color("PurpleTextColor"))
                    .font(.custom("PoppinsRegular", size: 16))
                    .padding(.bottom, 6)
                
                Text(NSLocalizedString("greeting_second_part", comment: "") + " \(userName)")
                    .foregroundColor(Color("BlackTextColor"))
                    .font(.custom("PoppinsBold", size: 20))
            }
            Spacer()
            Image(userLogoUrl)
        }
    }
}

#Preview {
    HeaderView()
}
