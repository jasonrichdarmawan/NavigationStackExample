//
//  Feature2View.swift
//  NavigationStackExample
//
//  Created by Jason Rich Darmawan Onggo Putra on 29/07/23.
//

import SwiftUI

struct Feature2View: View {
    @StateObject private var feature2ViewModel = Feature2ViewModel()
    @StateObject private var feature2_1ViewModel = Feature2_1ViewModel()
    @StateObject private var feature2_1_1ViewModel = Feature2_1_1ViewModel()
    @StateObject private var feature2_1_1_1ViewModel = Feature2_1_1_1ViewModel()
    
    init() {
        print("\(type(of: self)) \(#function)")
    }
    
    var body: some View {
        VStack {
            Text("Feature2")
            Text("departure \(feature2ViewModel.departure?.name ?? "")")
            Button {
                feature2ViewModel.departure = Station(name: "Lebak Bulus Grab")
            } label: {
                Text("set departure")
            }
            
            NavigationLink(value: Feature2ViewRoute.Feature2_1) {
                Text("go to Feature 2_1")
            }
        }
        .navigationDestination(for: Feature2ViewRoute.self) { value in
            Feature2_1View(
                feature2ViewModel: feature2ViewModel,
                feature2_1ViewModel: feature2_1ViewModel,
                feature2_1_1ViewModel: feature2_1_1ViewModel,
                feature2_1_1_1ViewModel: feature2_1_1_1ViewModel
            )
//                .navigationBarBackButtonHidden(true)
        }
    }
}
