//
//  ViewController.swift
//  TipCalculator
//
//  Created by Carlos andres Diaz bravo  on 2020-04-28.
//  Copyright © 2020 Carlos andres Diaz bravo . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Tip: UILabel!
    @IBOutlet weak var Total: UILabel!
    @IBOutlet weak var Bill: UITextField!
    @IBOutlet weak var TipControll: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    @IBAction func onTap(_ sender: Any) {
          
          view.endEditing(true)
      }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


  @IBAction func CalculateTip(_ sender: Any) {
        
        let tipPorcentajes = [0.15, 0.2, 0.25]
        let bill = Double(Bill.text!) ?? 0
        let tip = bill * tipPorcentajes[TipControll.selectedSegmentIndex]
        let total = bill + tip
        Tip.text = String(format: "$%.2f", tip)
        Total.text = String(format: "$%.2f", total)
    }
    
    
}

