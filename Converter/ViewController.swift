//
//  ViewController.swift
//  Converter
//
//  Created by Дмитрий Глущенко on 29.09.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusLable: UILabel!
    @IBOutlet weak var fahrenheitLable: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
            slider.thumbTintColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
        }
    }
    
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let temperatureCelsius = Int(round(sender.value))
        celsiusLable.text = "\(temperatureCelsius)ºC"
        let temperatureFahrenheit = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLable.text = "\(temperatureFahrenheit)ºF"
    }
}

