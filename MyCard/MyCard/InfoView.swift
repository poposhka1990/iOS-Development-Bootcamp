//
//  InfoView.swift
//  MyCard
//
//  Created by Илья Попов on 28.01.2023.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName).foregroundColor(.green)
                Text(text)
                    .font(.headline)
                    .foregroundColor(Color(.black))
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "+7 953 541 94 27", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
