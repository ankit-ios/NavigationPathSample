//
//  NavigationManager.swift
//  NavitaionPathSample
//
//  Created by Ankit Sharma on 24/05/24.
//

import SwiftUI

final class NavigationManager: Navigator {
    typealias RoutePage = Route
    @Published var path = NavigationPath()
    @Published var sheetStyle: Route?
    @Published var fullScreenStyle: Route?
}

extension NavigationManager {
    
    func push(_ page: Route) {
        path.append(page)
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
}
