//
//  Feature1View.swift
//  NavigationStackExample
//
//  Created by Jason Rich Darmawan Onggo Putra on 29/07/23.
//

import SwiftUI

struct Feature1View: View {
    @StateObject private var feature1ViewModel: Feature1ViewModel
    
    init(feature1ViewModel: Feature1ViewModel = Feature1ViewModel()) {
        self._feature1ViewModel = StateObject(wrappedValue: feature1ViewModel)
        print("\(type(of: self)) \(#function)")
    }
    
    var body: some View {
        VStack {
            Text("Feature1")
            Text("departure \(feature1ViewModel.departure?.name ?? "")")
            Button {
                feature1ViewModel.departure = Station(name: "Lebak Bulus Grab")
            } label: {
                Text("set departure")
            }
            NavigationLink(value: Feature1ViewRoute.Feature1_1) {
                Text("Go to Feature1_1")
            }
        }
        .navigationDestination(for: Feature1ViewRoute.self) { route in
            switch route {
            case .Feature1_1:
                Feature1_1View(feature1ViewModel: feature1ViewModel).navigationBarBackButtonHidden(true)
            }
        }
    }
}
