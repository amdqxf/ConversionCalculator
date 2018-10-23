//
//  ConversionViewController.swift
//  ConversionCalculator
//
//  Created by Allison Dolan on 10/23/18.
//  Copyright © 2018 Allison Dolan. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController {

    
    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    
    struct Converter {
        var label: String
        var inputUnit: String
        var outputUnit: String
    }
    
    let converters: [Converter] = [Converter(label: "fahrenheit to celcius", inputUnit: "°F", outputUnit: "°C"), Converter(label: "celcius to fahrenheit", inputUnit: "°C", outputUnit: "°F"), Converter(label: "miles to kilometers", inputUnit: "mi", outputUnit: "km"), Converter(label: "kilometers to miles", inputUnit: "km", outputUnit: "mi")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputDisplay.text = converters[0].inputUnit
        outputDisplay.text = converters[0].outputUnit

        // Do any additional setup after loading the view.
    }
    
    @IBAction func convertValues(_ sender: Any) {
        let alert = UIAlertController(title: "Converter", message: "Choose Converter", preferredStyle: UIAlertController.Style.actionSheet)
        
        alert.addAction(UIAlertAction(title: converters[0].label, style: UIAlertAction.Style.default, handler: {
            (alertAction)-> Void in
            
            self.inputDisplay.text = self.converters[0].inputUnit
            self.outputDisplay.text = self.converters[0].outputUnit
            
        }))
        
        alert.addAction(UIAlertAction(title: converters[1].label, style: UIAlertAction.Style.default, handler: {
            (alertAction)-> Void in
            
            self.inputDisplay.text = self.converters[1].inputUnit
            self.outputDisplay.text = self.converters[1].outputUnit
            
        }))
        
        alert.addAction(UIAlertAction(title: converters[2].label, style: UIAlertAction.Style.default, handler: {
            (alertAction)-> Void in
            
            self.inputDisplay.text = self.converters[2].inputUnit
            self.outputDisplay.text = self.converters[2].outputUnit
            
        }))
        
        alert.addAction(UIAlertAction(title: converters[3].label, style: UIAlertAction.Style.default, handler: {
            (alertAction)-> Void in
            
            self.inputDisplay.text = self.converters[3].inputUnit
            self.outputDisplay.text = self.converters[3].outputUnit
            
        }))
        
        self.present(alert, animated: true, completion: nil)
        }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
