//
//  RestaurantManager.swift
//  Restos
//
//  Created by Ludovic Ollagnier on 01/12/2015.
//  Copyright © 2015 Tec-Tec. All rights reserved.
//

import UIKit

class RestaurantManager {

    private var restoArray: [Restaurant]

    init() {

        restoArray = [Restaurant]()
        generateFakeRestaurants(10)
    }

    var allRestaurants: [Restaurant] {
        return restoArray
    }

    func addRestaurant(resto: Restaurant) {

        restoArray.append(resto)
    }

    func generateFakeRestaurants(numberOfRestaurant: Int) {

        for x in 0..<numberOfRestaurant
        {
            restoArray.append(Restaurant(name: "Restaurant n°\(x)", address: "\(x) Quai des Chartrons, Bordeaux", style: Restaurant.RestoStyle.Unknown))
        }}

}
