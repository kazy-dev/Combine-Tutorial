//
//  TopViewModel.swift
//  Combine-Tutorial
//
//  Copyright © 2019 kazy. All rights reserved.
//

import Foundation
import SwiftUI

struct TopListData: Identifiable {
    
    enum Presentation: View, Hashable, Identifiable {
        case combine1
        case combine2
        
        var body: some View {
            switch self {
            case .combine1: return AnyView(Combine1View())
            case .combine2: return AnyView(Combine2View())
            }
        }
    }
    
    let id = UUID()
    let title: String
    let presentType: Presentation?
}

class TopViewModel: ObservableObject {
    @Published var list: [TopListData] = [TopListData(title: "Combine1", presentType: .combine1),
                                          TopListData(title: "Combine2", presentType: .combine2)]
}
