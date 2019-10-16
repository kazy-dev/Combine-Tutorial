//
//  ContentView.swift
//  Combine-Tutorial
//
//  Copyright © 2019 kazy. All rights reserved.
//

import SwiftUI

struct TopView: View {
    @State var presentation: TopListData.Presentation?
    @ObservedObject var viewModel = TopViewModel()
    @State private var isPresented: Bool = false
    
    var body: some View {
        NavigationView {
            HStack {
                VStack {
                    Image("Combine_tutorial")
                        .resizable()
                        .frame(width: 120*10/4, height: 120)
                        .aspectRatio(10/4, contentMode: .fit)
                        .padding()
                    List(viewModel.list, id: \.id) { rowData in
                        NavigationLink(destination: rowData.presentType) {
                            Text(rowData.title)
                        }
                    }
                }
            }
            .navigationBarTitle("Combine-tutorial")
        }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}
