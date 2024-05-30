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
    case sheetLink(link: String)
    case coverLink(link: String)
    
    var id: String {
        switch self {
        case .firstScreen:
            return "firstScreen"
        case .secondScreen:
            return "secondScreen"
        case .thirdScreen:
            return "thirdScreen"
        case .sheetLink(let link):
            return link
        case .coverLink(let link):
            return link
        }
    }
}

protocol Navigator: ObservableObject {
    
    associatedtype RoutePage: Routable
    var path: NavigationPath { get set }
    var sheetStyle: Route? { get set }
    var fullScreenStyle: Route? { get set }
    
    func push(_ page: RoutePage)
    func pop()
    func popToRoot()
}

/** TODO: This is other way to implement Navigation Style with NavigationPath
enum NavigationStyle: Hashable, Identifiable {
    case presentedStyle(params: String?)
    case sheetStyle(params: String?)
    case fullScreenStyle(params: String?)

    var id: String {
        String(describing: self)
    }
}
 */
