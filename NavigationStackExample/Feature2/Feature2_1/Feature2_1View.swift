//
//  Feature2_1View.swift
//  NavigationStackExample
//
//  Created by Jason Rich Darmawan Onggo Putra on 29/07/23.
//

import SwiftUI

struct Feature2_1View: View {
    @ObservedObject var feature2ViewModel: Feature2ViewModel
    @ObservedObject var feature2_1ViewModel: Feature2_1ViewModel
    @ObservedObject var feature2_1_1ViewModel: Feature2_1_1ViewModel
    @ObservedObject var feature2_1_1_1ViewModel: Feature2_1_1_1ViewModel
    
    init(
        feature2ViewModel: Feature2ViewModel = Feature2ViewModel(),
        feature2_1ViewModel: Feature2_1ViewModel = Feature2_1ViewModel(),
        feature2_1_1ViewModel: Feature2_1_1ViewModel = Feature2_1_1ViewModel(),
        feature2_1_1_1ViewModel: Feature2_1_1_1ViewModel = Feature2_1_1_1ViewModel()
    ) {
        self.feature2ViewModel = feature2ViewModel
        self.feature2_1ViewModel = feature2_1ViewModel
        self.feature2_1_1ViewModel = feature2_1_1ViewModel
        self.feature2_1_1_1ViewModel = feature2_1_1_1ViewModel
        print("\(type(of: self)) \(#function)")
    }
    
    var body: some View {
        VStack {
            Text("Feature2_1")
            Text("departure \(feature2ViewModel.departure?.name ?? "")")
            Text("current station \(feature2_1ViewModel.currentStation?.name ?? "")")
            Button {
                feature2_1ViewModel.currentStation = Station(name: "Fatmawati Indomaret Grab")
            } label: {
                Text("set current station")
            }
            NavigationLink(value: Feature2_1ViewRoute.Feature2_1_1) {
                Text("go to Feature 2_1_1")
            }
        }
        .navigationDestination(for: Feature2_1ViewRoute.self) { _ in
            Feature2_1_1View(
                feature2ViewModel: feature2ViewModel,
                feature2_1ViewModel: feature2_1ViewModel,
                feature2_1_1ViewModel: feature2_1_1ViewModel,
                feature2_1_1_1ViewModel: feature2_1_1_1ViewModel
            )
//                .navigationBarBackButtonHidden(true)
        }
    }
}
