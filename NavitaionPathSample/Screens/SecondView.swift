//
//  SecondView.swift
//  NavitaionPathSample
//
//  Created by Ankit Sharma on 24/05/24.
//

import SwiftUI

struct SecondView: View {
    
    @EnvironmentObject private var nav: NavigationManager
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Second Screen")
            
            Button(action: {
                nav.push(.thirdScreen(name: "Demo App"))
            }, label: {
                Text("Navigate to Third Screen")
            })
            
            Button(action: {
                nav.pop()
            }, label: {
                Text("Back to First Screen")
            })
        }
    }
}

#Preview {
    SecondView()
}
