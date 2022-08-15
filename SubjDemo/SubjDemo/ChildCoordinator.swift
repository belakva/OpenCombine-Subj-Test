//
//  ChildCoordinator.swift
//  SubjDemo
//
//  Created by Nikita Borisov on 15.08.2022.
//

import SwiftUI
import OpenCombine

final class ChildCoordinator: SwiftUI.ObservableObject {

    struct Input {
        let logout = PassthroughSubject<Void, Never>()
    }

    let input = Input()

    init() {
        input.logout
            .print()
            .receive(subscriber: Service.shared.logout)
    }

}
