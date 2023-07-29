//
//  Feature1_1_1ViewModel.swift
//  NavigationStackExample
//
//  Created by Jason Rich Darmawan Onggo Putra on 29/07/23.
//

import Foundation

class Feature1_1_1ViewModel: ObservableObject {
    let id = UUID()
    
    init() { print("\(type(of: self)) \(#function) \(id.uuidString)") }
    
    deinit { print("\(type(of: self)) \(#function) \(id.uuidString)") }
}
