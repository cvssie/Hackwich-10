//
//  ViewController.swift
//  Hackwich 10
//
//  Created by Cassie Kauhane on 11/9/23.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    //part 3
    let initialLocation = CLLocation(latitude: 21.361888, longitude: -158.056022)
    
    let regionRadius = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        centerMapOnLocation(location: initialLocation)
        let restaurantOne = Restaurant(title: "American", type: "Kalapawai",
                       coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude:
                       -158.080098))
     
                mapView.addAnnotation(restaurantOne)
        let restaurantTwo = Restaurant(title: "Local", type: "Zippys",
                       coordinate: CLLocationCoordinate2D(latitude:  21.334481669272346, longitude:
                        -158.0820375254561))
                
                mapView.addAnnotation(restaurantTwo)    }
//part 3
    func centerMapOnLocation(location:CLLocation)
           {
               let coordinateRegion = MKCoordinateRegion(center: location.coordinate,

               latitudinalMeters: CLLocationDistance(regionRadius),
               longitudinalMeters: CLLocationDistance(regionRadius))
               mapView.setRegion(coordinateRegion, animated: true)

           }
   
}

