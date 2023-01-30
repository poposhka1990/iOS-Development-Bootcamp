//
//  DetailView.swift
//  H4XOR News SwiftUI
//
//  Created by Илья Попов on 30.01.2023.
//

import SwiftUI


struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
