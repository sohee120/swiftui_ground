//
//  EX17_ViewModel.swift
//  SwiftUI_PlayGround
//
//  Created by 윤소희 on 2022/11/22.
//

import SwiftUI


// Model
struct UserModel {
    var name: String
    var age: Int
}

//ViewModel
class UserViewModel : ObservableObject {
    @Published var hong: UserModel = UserModel(name: "hong", age: 21)
}

//View

struct UserView: View {
    @ObservedObject var userViewModel = UserViewModel()
    
    var body: some View {
        VStack {
            Text("name:\(userViewModel.hong.name)")
            Text("age:\(userViewModel.hong.age)")
            Button {
                userViewModel.hong.name = "sohee"
                userViewModel.hong.age = 23
            } label: {
                Text("Change Info")
            }


        } //VS
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
