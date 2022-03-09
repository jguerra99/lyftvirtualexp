//
//  RequestRideView.swift
//  RideSharer
//
//  Created by Jose Lopez on 3/8/22.
//
import SwiftUI
import UIKit
import MapKit
import CoreLocation

class RequestRideViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!

 
    @IBOutlet weak var alertView: UIView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
      super.viewDidLoad()
      checkLocationServices()
    }
    
    func checkLocationServices() {
      if CLLocationManager.locationServicesEnabled() {
        checkLocationAuthorization()
      } else {
          print("Please turn on your location to use this service")

      }
    }
    

    func checkLocationAuthorization() -> CLAuthorizationStatus{
        
        switch locationManager.authorizationStatus {
        case .authorizedWhenInUse:
          mapView.showsUserLocation = true
         case .denied:
           print("Please turn on your location to use this service")
       
         break
        case .notDetermined:
          locationManager.requestWhenInUseAuthorization()
          mapView.showsUserLocation = true
        case .restricted:
            print("Please turn on your location to use this service")
 
         break
        case .authorizedAlways:
         break
      default:
          break
      }
        return locationManager.authorizationStatus
    }
    
    
   

    }
    
