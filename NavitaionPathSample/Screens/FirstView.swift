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
        List {
            Section("Link presentation style") {
                Button(action: {
                    nav.push(.secondScreen)
                }, label: {
                    Text("Navigate to second Screen")
                })
            }
            
            Section("Sheet popup style") {
                Button(action: {
                    nav.sheetStyle = .sheetLink(link: "ABCD")
                }, label: {
                    Text("Show Sheet")
                })
            }
            
            Section("Full Cover style") {
                Button(action: {
                    nav.fullScreenStyle = .coverLink(link: "1234")
                }, label: {
                    Text("Present full screen cover")
                })
            }
        }
        .listStyle(.automatic)
        .navigationTitle("First Screen")
    }
}

#Preview {
    FirstView()
}
