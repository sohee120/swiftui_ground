//
//  EX_StateBinding.swift
//  SwiftUI_PlayGround
//
//  Created by 윤소희 on 2022/11/19.
//

import SwiftUI

struct EX_StateBinding: View {
    
    @State private var sharedData: String = "init value"
    
    var body: some View {
        VStack{
            Text("sharedData:\(sharedData)")
            CustomButton1(sharedData: $sharedData)
            CustomButton2(sharedData: $sharedData)
        }
    }
}

struct CustomButton1: View {
    
    @Binding var sharedData: String
    
    var body: some View{
        Button {
            sharedData = "Clicked Button1"
        } label: {
            Text("Button1")
        }

    }
}

struct CustomButton2: View {
    
    @Binding var sharedData: String
    
    var body: some View{
        Button {
            sharedData = "Clicked Button2"
        } label: {
            Text("Button2")
        }

    }
}


struct EX_StateBinding_Previews: PreviewProvider {
    static var previews: some View {
        EX_StateBinding()
    }
}
