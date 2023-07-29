//
//  Feature1_1_1View.swift
//  NavigationStackExample
//
//  Created by Jason Rich Darmawan Onggo Putra on 29/07/23.
//

import SwiftUI

struct Feature1_1_1View: View {
    @EnvironmentObject var contentViewModel: ContentViewModel
    
    @StateObject private var feature1_1_1ViewModel: Feature1_1_1ViewModel = Feature1_1_1ViewModel()
    
    init() {
        print("\(type(of: self)) \(#function)")
    }
    
    var body: some View {
        VStack {
            Text("Feature1_1_1View")
            
            Button {
                contentViewModel.path = .init()
            } label: {
                Text("simulate exit")
            }
        }
    }
}
