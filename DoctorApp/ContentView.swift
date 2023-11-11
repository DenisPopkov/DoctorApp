//
//  ContentView.swift
//  DoctorApp
//
//  Created by Denis Popkov on 11/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center) {
            HeaderView().padding(.bottom, 36)
            CardView().padding(.bottom, 20)
            SearchView().padding(.bottom, 24)
            CategoryView()
        }
        .padding([.leading, .trailing], 24)
        .padding(.top, 20)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    ContentView()
}
