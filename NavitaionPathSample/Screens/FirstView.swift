//
//  FirstView.swift
//  NavitaionPathSample
//
//  Created by Ankit Sharma on 24/05/24.
//

import SwiftUI

struct FirstView: View {
    
    @EnvironmentObject private var nav: NavigationManager
    
    var body: some View {
        VStack(spacing: 10) {
            Text("First Screen")
            Button(action: {
                nav.push(.secondScreen)
            }, label: {
                Text("Navigate to second Screen")
            })
        }
        .navigationTitle("Home")
    }
}

#Preview {
    FirstView()
}
