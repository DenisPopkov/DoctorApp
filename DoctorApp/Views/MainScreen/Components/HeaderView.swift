//
//  HeaderView.swift
//  DoctorApp
//
//  Created by Denis Popkov on 11/11/23.
//

import SwiftUI

struct HeaderView: View {
    
    @Binding var userData: UserModel

    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text(LocalizedStringKey.greetingFirstPart, comment: "Text")
                        .foregroundColor(.purple)
                        .font(.poppinsRegular16)
                    HStack {
                        Text(LocalizedStringKey.greetingSecondPart, comment: "Text")
                            .foregroundColor(.blackText)
                            .font(.poppinsBold20)
                        Text(userData.userName)
                            .foregroundColor(.blackText)
                            .font(.poppinsBold20)
                    }
                }
                Spacer()
                Button(action: {}) {
                    Image(userData.userImageUrl)
                }
            }
        }
    }
}

#Preview {
    HeaderView(userData: .constant(UserModel.userData))
}
