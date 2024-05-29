//
//  ThirdView.swift
//  NavitaionPathSample
//
//  Created by Ankit Sharma on 29/05/24.
//

import SwiftUI

struct ThirdView: View {
    
    @State var name: String
    @EnvironmentObject private var nav: NavigationManager
    
    init(_ name: String) {
        self.name = name
    }
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Third Screen")
            
            Text("Name: \(name)")
            
            Button(action: {
                nav.pop()
            }, label: {
                Text("Back to Second Screen")
            })
            
            Button(action: {
                nav.popToRoot()
            }, label: {
                Text("Navigate to First Screen")
            })
        }
    }
}

#Preview {
    ThirdView("Demo App")
}
