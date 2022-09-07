//
//  ViewController.swift
//  DistanceConverter
//
//  Created by Jing Ru Ang on 04/09/2022.
//

import UIKit

class ViewController: UIViewController {
    var distance = Distance(miles: 1000)
    
    @IBOutlet weak var milesTextField: UITextField!
    
    @IBOutlet weak var kmTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        milesTextField.text = "\(distance.miles)"
        kmTextField.text = "\(distance.km)"
        
        view.backgroundColor = UIColor(red: 0.146, green: 0.180, blue: 0.236, alpha: 1.0)
    }

    @IBAction func convertToKm(_ sender: Any) {
        if let miles = Double(milesTextField.text!){
            distance.miles = miles
            kmTextField.text = "\(Double(distance.km))"
        }
    }
    
    @IBAction func convertToMiles(_ sender: Any) {
        if let km = Double(kmTextField.text!){
            distance.km = km
            //make it return double instead of int to avoid inaccurate truncation
            milesTextField.text = "\(Double(distance.miles))"
        }
    }

    
}

