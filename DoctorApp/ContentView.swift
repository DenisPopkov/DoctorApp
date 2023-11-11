//
//  ContentView.swift
//  DoctorApp
//
//  Created by Denis Popkov on 11/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack() {
            HeaderView()
            Spacer()
        }
        .padding([.leading, .trailing], 24)
        .padding(.top, 20)
    }
}

#Preview {
    ContentView()
}
