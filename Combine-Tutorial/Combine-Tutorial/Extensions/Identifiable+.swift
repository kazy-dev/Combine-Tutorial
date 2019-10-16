//
//  Identifiable+.swift
//  SwiftUI-Layout-Practice
//
//  Copyright © 2019 kazy. All rights reserved.
//

import Foundation

extension Identifiable where Self: Hashable {
    typealias ID = Self
    var id: Self { self }
}
