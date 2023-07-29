//
//  Feature2_1_1_1View.swift
//  NavigationStackExample
//
//  Created by Jason Rich Darmawan Onggo Putra on 29/07/23.
//

import SwiftUI

struct Feature2_1_1_1View: View {
    @EnvironmentObject var contentViewModel: ContentViewModel
    
    @ObservedObject var feature2_1_1_1Viewmodel: Feature2_1_1_1ViewModel
    
    init(
        feature2_1_1_1Viewmodel: Feature2_1_1_1ViewModel = Feature2_1_1_1ViewModel()
    ) {
        self.feature2_1_1_1Viewmodel = feature2_1_1_1Viewmodel
        print("\(type(of: self)) \(#function)")
    }
    
    var body: some View {
        VStack {
            Text("Feature2_1_1_1")
            Text("something2 \(feature2_1_1_1Viewmodel.something2 ?? "")")
            Button {
                feature2_1_1_1Viewmodel.something2 = "setted"
            } label: {
                Text("set something2")
            }
            
            Button {
                contentViewModel.path = .init()
            } label: {
                Text("simulate exit")
            }
        }
    }
}
