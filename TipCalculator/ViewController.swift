//
//  ViewController.swift
//  TipCalculator
//
//  Created by Carlos andres Diaz bravo  on 2020-04-28.
//  Copyright © 2020 Carlos andres Diaz bravo . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TipLabel: UILabel!
    @IBOutlet weak var Totallabel: UILabel!
    @IBOutlet weak var BillField: UITextField!
    @IBOutlet weak var TipControll: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    @IBAction func onTap(_ sender: Any) {
        
        view.endEditing(true)
    }
    
    
    
    @IBAction func CalculateTip(_ sender: Any) {
        
        let tipPorcentajes = [0.15, 0.2, 0.25]
        let bill = Double(BillField.text!) ?? 0
        let tip = bill * tipPorcentajes[TipControll.selectedSegmentIndex]
        let total = bill + tip
        TipLabel.text = String(format: "$%.2f", tip)
        Totallabel.text = String(format: "$%.2f", total)
    }
    
    
}

