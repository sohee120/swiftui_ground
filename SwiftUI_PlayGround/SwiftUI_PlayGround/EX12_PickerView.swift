//
//  EX12_PickerView.swift
//  SwiftUI_PlayGround
//
//  Created by 윤소희 on 2022/11/11.
//

import SwiftUI


struct EX12_PickerView: View {
    
    @State private var pickerName = "Tom"
    var names: Array<String> = ["Tom","John","Hans","Jun","Jully"]
    
    var body: some View {
        
        VStack{
            Picker("Choose Name", selection: $pickerName) {
                ForEach(names, id:\.self) {
                    Text($0)
                }
            }
            .pickerStyle(.menu)
            
            Picker(selection: $pickerName, label:Text("Names")) {
                ForEach(0..<names.count) {
                    Text(names[$0])
                }
            }
        }
        
    }
}

struct EX12_PickerView_Previews: PreviewProvider {
    static var previews: some View {
        EX12_PickerView()
    }
}
