//
//  Feature2_1_1ViewModel.swift
//  NavigationStackExample
//
//  Created by Jason Rich Darmawan Onggo Putra on 29/07/23.
//

import Foundation

class Feature2_1_1ViewModel: ObservableObject {
    var id = UUID()
    
    @Published var something: String?
    
    init() { print("\(type(of: self)) \(#function) \(id.uuidString)") }
    
    deinit { print("\(type(of: self)) \(#function) \(id.uuidString)") }
}
