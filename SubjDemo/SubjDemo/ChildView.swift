//
//  ChildView.swift
//  SubjDemo
//
//  Created by Nikita Borisov on 15.08.2022.
//

import SwiftUI

struct ChildView: View {

    @ObservedObject
    var coordinator: ChildCoordinator

    var body: some View {
        Button {
            coordinator.input.logout.send()
        } label: {
            Text("Logout")
                .padding()
        }
    }
}
