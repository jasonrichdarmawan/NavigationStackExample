//
//  Feature1ViewModelManager.swift
//  NavigationStackExample
//
//  Created by Jason Rich Darmawan Onggo Putra on 29/07/23.
//

import Foundation

class Feature1ViewModelManager {
    static var shared: Feature1ViewModel! {
        get {
            if sharedClosure == nil {
                sharedClosure = Feature1ViewModel()
            }
            
            return sharedClosure
        }
        set {
            sharedClosure = newValue
        }
    }
    
    private static var sharedClosure: Feature1ViewModel!
}
