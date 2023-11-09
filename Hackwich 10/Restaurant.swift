//
//  Restaurant.swift
//  Hackwich 10
//
//  Created by Cassie Kauhane on 11/9/23.
//

import UIKit
import MapKit
//part 4
class Restaurant: NSObject, MKAnnotation {
    let restaurantTitle: String?
    let restaurantType: String?
    var coordinate: CLLocationCoordinate2D
    init(title: String?, type: String?, coordinate: CLLocationCoordinate2D) 
    {
        self.restaurantTitle = title
        self.restaurantType = type
        self.coordinate = coordinate
        super.init()
        
    }
    //part 5
    var subtitle: String?
    {
        //Problem Set #3 Code Switch
        return restaurantType
    }
}
