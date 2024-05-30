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
                .sheet(item: $navigate.sheetStyle, content: sheetContent)
                .fullScreenCover(item: $navigate.fullScreenStyle, content: coverContent)
                .navigationDestination(for: Route.self, destination: linkDestination)
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
        default:
            EmptyView()
        }
    }
    
    @ViewBuilder private func linkDestination(link: Route) -> some View {
        switch link {
        case .firstScreen:
            FirstView()
        case .secondScreen:
            SecondView()
        case .thirdScreen(let name):
            ThirdView(name)
        default:
            EmptyView()
        }
    }
    
    @ViewBuilder private func sheetContent(link: Route) -> some View {
        switch link {
        case .sheetLink(_):
            SheetPopupView()
        default:
            EmptyView()
        }
    }
    
    @ViewBuilder private func coverContent(link: Route) -> some View {
        switch link {
        case .coverLink(_):
            FullCoverView()
        default:
            EmptyView()
        }
    }
}

#Preview {
    NavigationView()
}
