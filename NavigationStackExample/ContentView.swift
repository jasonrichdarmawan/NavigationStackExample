//
//  ContentV2View.swift
//  NavigationStackExample
//
//  Created by Jason Rich Darmawan Onggo Putra on 29/07/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var contentViewModel = ContentViewModel()
    
    init() {
        print("\(type(of: self)) \(#function)")
    }
    
    var body: some View {
        NavigationStack(path: $contentViewModel.path) {
            List {
                NavigationLink(value: ContentViewRoute.Feature1) {
                    Text("Go to Feature 1")
                }

                NavigationLink(value: ContentViewRoute.Feature2) {
                    Text("Go to Feature 2")
                }
            }
            .navigationDestination(for: ContentViewRoute.self) { route in
                switch route {
                case .Feature1:
                    Feature1View().navigationBarBackButtonHidden(true)
                case .Feature2:
                    Feature2View().navigationBarBackButtonHidden(true)
                }
            }
        }
        .environmentObject(contentViewModel)
    }
}
