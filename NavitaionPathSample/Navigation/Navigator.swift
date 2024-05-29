//
//  Navigator.swift
//  NavitaionPathSample
//
//  Created by Ankit Sharma on 24/05/24.
//

import SwiftUI

protocol Routable: Hashable, Identifiable {
    var id: String { get }
}

enum Route: Routable {
    
    case firstScreen
    case secondScreen
    case thirdScreen(name: String)
    
    var id: String {
        switch self {
        case .firstScreen:
            return "firstScreen"
        case .secondScreen:
            return "secondScreen"
        case .thirdScreen:
            return "thirdScreen"
        }
    }
}

protocol Navigator: ObservableObject {
    
    associatedtype RoutePage: Routable
    var path: NavigationPath { get set }
    
    func push(_ page: RoutePage)
    func pop()
    func popToRoot()
}
