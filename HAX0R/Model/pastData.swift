//
//  pastData.swift
//  HAX0R
//
//  Created by Виталий Усольцев on 06.05.2022.
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
