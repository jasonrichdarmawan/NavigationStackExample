//
//  Feature2_1_ViewModel.swift
//  NavigationStackExample
//
//  Created by Jason Rich Darmawan Onggo Putra on 29/07/23.
//

import SwiftUI

class Feature2_1ViewModel: ObservableObject {
    var id = UUID()
    
    @Published var currentStation: Station?
    
    init() { print("\(type(of: self)) \(#function) \(id.uuidString)") }
    
    deinit { print("\(type(of: self)) \(#function) \(id.uuidString)") }
}
