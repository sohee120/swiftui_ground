//
//  EX14_FormView.swift
//  SwiftUI_PlayGround
//
//  Created by 윤소희 on 2022/11/15.
//

import SwiftUI

struct EX14_FormView: View {
    
    @State private var username: String = ""
    @State private var notificationEnabled: Bool = false
    @State private var isPrivate: Bool = false
    @State private var previewIndex: Int = 0
    let previewOptions: Array<String> = ["Always","When Unlocked","Never"]
    
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("PROFILE")) {
                    TextField("Username", text: $username)
                    Toggle(isOn: $isPrivate) {
                        Text("isPrivate")
                    }
                } //S1
                
                Section(header: Text("NOTIFICATIONS")) {
                    Toggle(isOn: $notificationEnabled) {
                        Text("Enabled")
                    }
                    Picker(selection: $previewIndex, label: Text("Show Previews")) {
                        ForEach(0..<previewOptions.count) {idx in
                            Text("\(previewOptions[idx])")
                        }
                    }
                } //S2
                
                Section(header: Text("ABOUT")) {
                    HStack{
                        Text("Vesion")
                        Spacer()
                        Text("2.0.1")
                    }
                } //S3
                
                Section{
                    Button {
                        print("Clicked Button")
                    } label: {
                        Text("Reset All Settings")
                    }
                } //S4
            }//FR
            .navigationBarTitle(Text("Settings"))
        }//NV
    }
}

struct EX14_FormView_Previews: PreviewProvider {
    static var previews: some View {
        EX14_FormView()
    }
}
