//
//  RestaurantManager.swift
//  Restos
//
//  Created by Ludovic Ollagnier on 01/12/2015.
//  Copyright © 2015 Tec-Tec. All rights reserved.
//

import UIKit

class RestaurantManager {

    private var restoArray = [Restaurant]()

    var allRestaurants: [Restaurant] {
        return restoArray
    }

    func addRestaurant(resto: Restaurant) {

        restoArray.append(resto)
    }

}
