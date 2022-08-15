//
//  Service.swift
//  SubjDemo
//
//  Created by Nikita Borisov on 15.08.2022.
//

import Foundation
import OpenCombine

class Service {

    static let shared = Service()
    
    public private(set) lazy var logout = AnySubscriber(logoutSubject)
    private let logoutSubject = PassthroughSubject<Void, Never>()

    private var bag = Set<AnyCancellable>()

    init() {
        logoutSubject
            .sink {
                print("Logged out")
            }
            .store(in: &bag)
    }


}
