//
//  SubjDemoApp.swift
//  SubjDemo
//
//  Created by Nikita Borisov on 15.08.2022.
//

import SwiftUI

@main
struct SubjDemoApp: App {

    let rootCoordinator = RootCoordinator()

    var body: some Scene {
        WindowGroup {
            NavigationView {
                RootView(coordinator: rootCoordinator)
            }
        }
    }
}

extension View {

    public func navigation<Item, Destination: View>(
        item: Binding<Item?>,
        @ViewBuilder destination: (Item) -> Destination
    ) -> some View {
        let isActive = Binding(
            get: { item.wrappedValue != nil },
            set: { value in
                if !value {
                    item.wrappedValue = nil
                }
            }
        )
        return navigation(isActive: isActive) {
            item.wrappedValue.map(destination)
        }
    }

    func navigation<Destination: View>(
        isActive: Binding<Bool>,
        @ViewBuilder destination: () -> Destination
    ) -> some View {
        overlay(
            NavigationLink(
                destination: isActive.wrappedValue ? destination() : nil,
                isActive: isActive,
                label: { EmptyView() }
            )
        )
    }

}
