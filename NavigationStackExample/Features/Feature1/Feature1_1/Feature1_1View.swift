//
//  Feature1_1View.swift
//  NavigationStackExample
//
//  Created by Jason Rich Darmawan Onggo Putra on 29/07/23.
//

import SwiftUI

struct Feature1_1View: View {
    @ObservedObject var feature1ViewModel: Feature1ViewModel
    
    @StateObject private var feature1_1ViewModel: Feature1_1ViewModel = Feature1_1ViewModel()
    
    init(feature1ViewModel: Feature1ViewModel = Feature1ViewModel()) {
        self.feature1ViewModel = feature1ViewModel
        print("\(type(of: self)) \(#function)")
    }
    
    var body: some View {
        VStack {
            Text("Feature1_1View")
            Text("departure \(feature1ViewModel.departure?.name ?? "")")
            Text("current station \(feature1_1ViewModel.currentStation?.name ?? "")")
            
            Button {
                feature1ViewModel.departure = Station(name: "Fatmawati Indomaret Grab")
            } label: {
                Text("set departure")
            }
            
            Button {
                feature1_1ViewModel.currentStation = Station(name: "Fatmawati Indomaret Grab")
            } label: {
                Text("set current station")
            }
            
            NavigationLink(value: Feature1_1ViewRoute.Feature1_1_1) {
                Text("Go to Feature1_1_1")
            }
        }
        .navigationDestination(for: Feature1_1ViewRoute.self) { route in
            Feature1_1_1View().navigationBarBackButtonHidden(true)
        }
    }
}
