//
//  SafariView.swift
//  RestaurantList
//
//  Created by 윤소희 on 2022/11/02.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
   
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        
        return SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
 
    
}

struct SafariView_Previews: PreviewProvider {
    static var previews: some View {
        SafariView(url: URL(string: "https://www.codelion.net/")!)
    }
}
