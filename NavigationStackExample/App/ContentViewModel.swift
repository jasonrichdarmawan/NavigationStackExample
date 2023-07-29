//
//  ContentViewModel.swift
//  NavigationStackExample
//
//  Created by Jason Rich Darmawan Onggo Putra on 29/07/23.
//

import SwiftUI

class ContentViewModel: ObservableObject {
    @Published var path = NavigationPath()
    
    var id = UUID()
    
    init() { print("\(type(of: self)) \(#function)") }
    
    deinit { print("\(type(of: self)) \(#function) \(id.uuidString)") }
}
