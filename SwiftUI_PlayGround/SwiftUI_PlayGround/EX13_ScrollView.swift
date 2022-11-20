//  EX13_ScrollView.swift
//  SwiftUI_PlayGround


import SwiftUI

struct EX13_ScrollView: View {
    var body: some View {
        VStack{
            ScrollView {
                VStack {
                    ForEach(1..<31) {idx in
                        Text("Content\(idx)")
                            .font(.largeTitle)
                    }
                }//VS
                .frame(maxWidth: .infinity)
            }
            .frame(height: 200)
            .background(.gray)
            
            Divider()
            
            ScrollView(.horizontal) {
                HStack{
                    ForEach(1..<31) {idx in
                        Text("Content\(idx)")
                            .font(.largeTitle)
                    }
                }
            }
            .frame(height: 200)
            .background(.yellow)
        }
    }
}

struct EX13_ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        EX13_ScrollView()
    }
}
