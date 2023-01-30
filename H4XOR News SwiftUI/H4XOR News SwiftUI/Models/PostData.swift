//
//  PostData.swift
//  H4XOR News SwiftUI
//
//  Created by Илья Попов on 30.01.2023.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
