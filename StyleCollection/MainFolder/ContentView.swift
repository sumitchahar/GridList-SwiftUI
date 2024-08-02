//
//  ContentView.swift
//  StyleCollection
//
//  Created by Sumit on 29/06/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var vm = StyleCollectionViewModel()
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ZStack {
            VStack(spacing:5) {
                HeaderView()
                Spacer()
                ScrollView(showsIndicators: false) {
                 LazyVGrid(columns: columns) { ListView(vm:vm) }
                }.padding([.leading,.trailing])
            }
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [.white,.indigo,.black,.white, .white,.black,.white]), startPoint: .top, endPoint: .bottom)
        )
    }
 }

#Preview {
    ContentView()
}


