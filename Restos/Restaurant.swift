//
//  Restaurant.swift
//  Restos
//
//  Created by Ludovic Ollagnier on 01/12/2015.
//  Copyright © 2015 Tec-Tec. All rights reserved.
//

import UIKit

struct Restaurant {

    enum RestoStyle: String {
        case Unknown
        case Chinese
        case Japanese
        case Indian
        case French
    }

    let name: String
    var address: String
    let style: RestoStyle
    var alreadyVisited: Bool
    var grade: Int?

    init(name: String, address: String, style: RestoStyle, alreadyVisited: Bool = false, grade: Int? = nil) {

        if alreadyVisited == false && grade != nil {
            fatalError("We should not grade without visiting")
        }
        
        self.name = name
        self.address = address
        self.style = style
        self.alreadyVisited = alreadyVisited
        self.grade = grade
    }

}
