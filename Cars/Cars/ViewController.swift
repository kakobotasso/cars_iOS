//
//  ViewController.swift
//  Cars
//
//  Created by Usuário Convidado on 27/03/17.
//  Copyright © 2017 Kako Botasso. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tfBrand: UITextField!
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfPrice: UITextField!
    @IBOutlet weak var scGasType: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func saveCar(_ sender: UIButton) {
        let car = Car(brand: tfBrand.text!,
                      name: tfName.text!,
                      price: Double(tfPrice.text!)!,
                      gasType: GasType(rawValue: scGasType.selectedSegmentIndex)!
        )
        
        REST.saveCar(car: car) { (success: Bool) in
            DispatchQueue.main.async {
                self.navigationController!.popViewController(animated: true)
            }
        }
    }

}

