//
//  ContentView.swift
//  SubjDemo
//
//  Created by Nikita Borisov on 15.08.2022.
//

import SwiftUI

struct RootView: View {

    @ObservedObject
    var coordinator: RootCoordinator

    var body: some View {
        Button {
            coordinator.childCoordinator = ChildCoordinator()
        } label: {
            Text("Push")
                .padding()
                .navigation(item: $coordinator.childCoordinator) {
                    ChildView(coordinator: $0)
                }
        }
    }
}
