//
//  Combine1.swift
//  Combine-Tutorial
//
//  Copyright © 2019 kazy. All rights reserved.
//

import SwiftUI
import Combine

struct Combine1View: View {
    @State private var dampStr = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("let publisher = Just(\"Combine Swift\")\nlet _ = publisher.sink { value in\n    self.dampStr = value\n}")
                .padding()
                .border(Color.black, width: 1)
            Button(action: {
                self.test1()
            }) {
                Text("Click here")
            }
            .padding()
            Text(dampStr)
            .padding()
        }
    }
    
    func test1() {
        let publisher = Just("Combine Swift")
        let _ = publisher.sink { value in
            self.dampStr = value
        }
    }
}

struct Combine1_Previews: PreviewProvider {
    static var previews: some View {
        Combine1View()
    }
}
