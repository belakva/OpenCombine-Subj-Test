//
//  AppCoordinator.swift
//  SubjDemo
//
//  Created by Nikita Borisov on 15.08.2022.
//

import SwiftUI


final class RootCoordinator: ObservableObject {

    @Published
    var childCoordinator: ChildCoordinator? = nil

    init() {

    }

}
