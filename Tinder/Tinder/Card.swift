//
//  Card.swift
//  Tinder
//
//  Created by Herry on 2023/03/21.
//

import UIKit

struct Card
: Identifiable {
    let id = UUID()
    let name : String
    let imageName : String
    let age : Int
    let bio : String
    
    var x: CGFloat = 0.0
    var y: CGFloat = 0.0
    var degree: Double = 0.0
    
    static var data: [Card] {
        [
            Card(name: "Rosie", imageName: "p0", age: 21, bio: "I love you"),
            Card(name: "Rosie", imageName: "p1", age: 21, bio: "I love you"),
            Card(name: "Rosie", imageName: "p2", age: 21, bio: "I love you"),
            Card(name: "Rosie", imageName: "p3", age: 21, bio: "I love you"),
            Card(name: "Rosie", imageName: "p4", age: 21, bio: "I love you"),
            Card(name: "Rosie", imageName: "p5", age: 21, bio: "I love you"),
        ]
    }
}
