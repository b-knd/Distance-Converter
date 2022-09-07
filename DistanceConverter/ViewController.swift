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
    
    @IBOutlet weak var yardTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        milesTextField.text = "\(distance.miles)"
        kmTextField.text = "\(distance.km)"
        yardTextField.text = "\(distance.yard)"
        
        view.backgroundColor = UIColor(red: 0.146, green: 0.180, blue: 0.236, alpha: 1.0)
        
        milesTextField.addTarget(self, action: #selector(milesConversion), for: .editingChanged)
        kmTextField.addTarget(self, action: #selector(kmConversion), for: .editingChanged)
        yardTextField.addTarget(self, action: #selector(yardConversion), for: .editingChanged)
    }
    
    @objc func milesConversion(_ sender: Any) {
        if let miles = Double(milesTextField.text!){
            distance.miles = miles
            yardTextField.text = "\(Double(round(distance.yard*100)/100))"
            kmTextField.text = "\(Double(round(distance.km*100)/100))"
        }
    }
    
    @objc func kmConversion(_ sender: Any) {
        if let km = Double(kmTextField.text!){
            distance.km = km
            yardTextField.text = "\(Double(round(distance.yard*100)/100))"
            milesTextField.text = "\(Double(round(distance.miles*100)/100))"
        }
    }
    
    @objc func yardConversion(_ sender: Any) {
        if let yard = Double(yardTextField.text!){
            distance.yard = yard
            milesTextField.text = "\(Double(round(distance.miles*100)/100))"
            kmTextField.text = "\(Double(round(distance.km*100)/100))"
        }
    }
    
}

