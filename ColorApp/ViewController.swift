//
//  ViewController.swift
//  ColorApp
//
//  Created by Stacy on 27/03/2023.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateLabels()
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        updateColor(alpha: sender.value)
        updateLabels()
    }

    
    private func updateColor(alpha: Float) {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: CGFloat(alpha))
        colorView.backgroundColor = color
    }
    
    private func updateLabels() {
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
    }
}

