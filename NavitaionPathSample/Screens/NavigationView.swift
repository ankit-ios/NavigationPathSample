//
//  NavigationView.swift
//  NavitaionPathSample
//
//  Created by Ankit Sharma on 24/05/24.
//

import SwiftUI

struct NavigationView: View {
    
    @StateObject private var navigate = NavigationManager()
    
    var body: some View {
        NavigationStack(path: $navigate.path) {
            navigate(to: .firstScreen)
                .navigationDestination(for: Route.self) { page in
                    navigate(to: page)
                }
        }
        .environmentObject(navigate)
    }
    
    @ViewBuilder
    private func navigate(to page: Route) -> some View {
        switch page {
        case .firstScreen:
            FirstView()
        case .secondScreen:
            SecondView()
        case .thirdScreen(let name):
            ThirdView(name)
        }
    }
}

#Preview {
    NavigationView()
}
