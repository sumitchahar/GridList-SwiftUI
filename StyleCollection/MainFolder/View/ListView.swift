//
//  ListView.swift
//  StyleCollection
//
//  Created by Sumit on 30/06/24.

 import SwiftUI

 struct ListView: View {
    
    @StateObject  var vm:StyleCollectionViewModel
    
    var body: some View
        {
            ForEach(vm.itemsDetails, id: \.item_id) { items in
                HStack {
                    ZStack {
                        Image(items.img_Name)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:167,height:210)
                        ZStack {
                            VStack {
                                HStack {
                                    Rectangle()
                                        .fill(.red)
                                        .cornerRadius(20)
                                        .frame(width:40,height:19)
                                        .padding([.leading,.top],12)
                                        .overlay(content: {
                                            HStack {
                                                Text("LIVE")
                                                    .font(.system(size: 9, weight: .semibold, design: .default))
                                                    .foregroundStyle(.white)
                                            }.padding([.top,.leading],11)
                                        })
                                    Spacer()
                                    Text(items.view)
                                        .font(.system(size: 11, weight: .medium, design: .default))
                                        .foregroundStyle(.white)
                                        .padding([.top,.trailing],12)
                                }
                                Spacer()
                            }
                            VStack {
                                Spacer()
                                Text(items.title)
                                    .foregroundStyle(.white)
                                    .font(.system(size: 18, weight: .bold, design: .default))
                                    .padding()
                            }
                        }
                    }
                }.frame(width:167,height:210)
                    .clipShape(Rectangle())
                    .background(.red)
                    .cornerRadius(25)
                    .padding([.bottom],8)
            }
        }
    }

