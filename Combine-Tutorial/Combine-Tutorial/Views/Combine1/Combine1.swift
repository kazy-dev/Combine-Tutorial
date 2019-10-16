//
//  Combine1.swift
//  Combine-Tutorial
//
//  Copyright © 2019 kazy. All rights reserved.
//

import SwiftUI
import Combine

struct Combine1: View {
    var body: some View {
        VStack {
            Button(action: {
                
            }) {
                Text("Click")
            }
        }
    }
    
    func test1() {
        _ = Publishers.Sequence(sequence: [1,2,2,3,3,4,7])
            .map { $0 * 2 }
            .flatMap { Just($0) }
            .filter { $0.isMultiple(of: 2) }
            .dropFirst(3)
            .removeDuplicates()
            .sink(receiveValue: { value in
                print(value)
            })
    }
}

struct Combine1_Previews: PreviewProvider {
    static var previews: some View {
        Combine1()
    }
}
