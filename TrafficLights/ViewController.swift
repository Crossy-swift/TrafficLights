//
//  ViewController.swift
//  TrafficLights
//
//  Created by Артем Репин on 23.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    
    @IBOutlet var yellowLightView: UIView!
    
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var changeSignalButton: UIButton!
    
    private var buttonPressCount = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greenLightView.layer.cornerRadius = 60
        yellowLightView.layer.cornerRadius = 60
        redLightView.layer.cornerRadius = 60
        changeSignalButton.layer.cornerRadius = 15
        
        
    }

    @IBAction func changeSignailButtonPressed() {
        
        switch buttonPressCount {
        case 1:
            greenLightView.alpha = 1
        case 2:
            greenLightView.alpha = 0.3
            yellowLightView.alpha = 1
        case 3:
            greenLightView.alpha = 0.3
            yellowLightView.alpha = 0.3
            redLightView.alpha = 1
        default:
            greenLightView.alpha = 0.3
            yellowLightView.alpha = 0.3
            redLightView.alpha = 0.3
            buttonPressCount = 0
        }
        buttonPressCount += 1
    }
    
    
}

