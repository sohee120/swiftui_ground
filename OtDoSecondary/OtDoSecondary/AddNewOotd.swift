//
//  AddNewOotd.swift
//  OtDo
//
//  Created by do hee kim on 2022/11/08.
//

import SwiftUI

struct AddNewOotd: View {
    @Binding var firstNaviLinkActive: Bool
    
    @State private var wearOuter: Bool = false
    @State private var wearTop: Bool = false
    @State private var wearBottoms: Bool = false
    
    @State private var wearCardigan: Bool = false
    @State private var wearCoat: Bool = false
    @State private var wearPadding: Bool = false
    
    @State private var wearShortSleevedShirt: Bool = false
    @State private var wearShirt: Bool = false
    @State private var wearManToMan: Bool = false
    
    @State private var wearShortPants: Bool = false
    @State private var wearSkirt: Bool = false
    @State private var wearLongPants: Bool = false
    
    var body: some View {
        
        VStack{
            Text("Add New OOTD")
                .font(.largeTitle)
                .bold()
            
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    
// ------------ Outer
                    Button {
                        wearOuter.toggle()
                    } label: {
                        Image(systemName: wearOuter ? "checkmark.square.fill" : "square")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text("Outer")
                            .font(.title2)
                    }
                    .foregroundColor(.black)
                    
                    VStack(alignment: .leading) {
                        if wearOuter {
                            Button {
                                wearCardigan.toggle()
                            } label: {
                                Image(systemName: wearCardigan ? "record.circle" : "circle")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                Text("가디건")
                                    .font(.title2)
                            }
                            .foregroundColor(.black)
                            
                            Button {
                                wearCoat.toggle()
                            } label: {
                                Image(systemName: wearCoat ? "record.circle" : "circle")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                Text("코트")
                                    .font(.title2)
                            }
                            .foregroundColor(.black)
                            
                            Button {
                                wearPadding.toggle()
                            } label: {
                                Image(systemName: wearPadding ? "record.circle" : "circle")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                Text("패딩")
                                    .font(.title2)
                            }
                            .foregroundColor(.black)
                        }
                    }
                    .padding(.leading, 30.0)
                    
                    
// ------------ Top
                    Button {
                        wearTop.toggle()
                    } label: {
                        Image(systemName: wearTop ? "checkmark.square.fill" : "square")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text("Top")
                            .font(.title2)
                    }
                    .foregroundColor(.black)
                    
                    VStack(alignment: .leading) {
                        if wearTop {
                            Button {
                                wearShortSleevedShirt.toggle()
                            } label: {
                                Image(systemName: wearShortSleevedShirt ? "record.circle" : "circle")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                Text("반팔")
                                    .font(.title2)
                            }
                            .foregroundColor(.black)
                            
                            Button {
                                wearShirt.toggle()
                            } label: {
                                Image(systemName: wearShirt ? "record.circle" : "circle")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                Text("셔츠")
                                    .font(.title2)
                            }
                            .foregroundColor(.black)
                            
                            Button {
                                wearManToMan.toggle()
                            } label: {
                                Image(systemName: wearManToMan ? "record.circle" : "circle")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                Text("맨투맨")
                                    .font(.title2)
                            }
                            .foregroundColor(.black)
                        }
                    }
                    .padding(.leading, 30.0)
                    

// ------------ Bottoms
                    Button {
                        wearBottoms.toggle()
                    } label: {
                        Image(systemName: wearBottoms ? "checkmark.square.fill" : "square")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text("Bottoms")
                            .font(.title2)
                    }
                    .foregroundColor(.black)
                    
                    VStack(alignment: .leading) {
                        if wearBottoms {
                            Button {
                                wearShortPants.toggle()
                            } label: {
                                Image(systemName: wearShortPants ? "record.circle" : "circle")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                Text("반바지")
                                    .font(.title2)
                            }
                            .foregroundColor(.black)
                            
                            Button {
                                wearSkirt.toggle()
                            } label: {
                                Image(systemName: wearSkirt ? "record.circle" : "circle")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                Text("치마")
                                    .font(.title2)
                            }
                            .foregroundColor(.black)
                            
                            Button {
                                wearLongPants.toggle()
                            } label: {
                                Image(systemName: wearLongPants ? "record.circle" : "circle")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                Text("긴바지")
                                    .font(.title2)
                            }
                            .foregroundColor(.black)
                        }
                    }
                    .padding(.leading, 30.0)
                    
                }
                
                Spacer()
            
                NavigationLink(destination: WriteOotd(firstNaviLinkActive: $firstNaviLinkActive)) {
                    Text("투표")
                        .bold()
                        .font(.title)
                        .frame(width: 330, height: 80)
                        .background(.black)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                }
                
                
            }
        }
        .padding(.bottom, 20)
    }
}

struct AddNewOotd_Previews: PreviewProvider {
    static var previews: some View {
        AddNewOotd(firstNaviLinkActive: .constant(true))
    }
}
