//
//  HeaderView.swift
//  StyleCollection
//
//  Created by Sumit on 30/06/24.
//

import SwiftUI

struct HeaderView: View {
    
    var body: some View {
        HStack {
            Circle()
                .fill(.gray)
               .frame(width:40,height:40)
               .overlay(content: {
                   Image(systemName:"arrowshape.turn.up.left.2.circle")
                       .foregroundStyle(.white)
               })
             Spacer()
            Text("Top creators")
                .foregroundStyle(.black)
                .font(.system(size: 22, weight: .semibold, design: .default))
            Spacer()
            Circle()
                .fill(LinearGradient(gradient: Gradient(colors: [.gray]), startPoint: .top, endPoint: .bottom))
               .frame(width:40,height:40)
               .overlay(content: {
                   Image(systemName:"ellipsis")
                       .foregroundStyle(.white)
               })
        }.padding([.leading,.trailing])
    }
    
 }

#Preview {
    HeaderView()
}
