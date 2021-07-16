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
    
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    private var buttonPressCount = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeSignalButton.layer.cornerRadius = 15
        
    }
    
    override func viewWillLayoutSubviews() {
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
    }

    @IBAction func changeSignailButtonPressed() {
        
        if changeSignalButton.currentTitle == "START" {
        changeSignalButton.setTitle("NEXT", for: .normal)
        }
        
        switch buttonPressCount {
        case 1:
            greenLightView.alpha = lightIsOn
        case 2:
            greenLightView.alpha = lightIsOff
            yellowLightView.alpha = lightIsOn
        case 3:
            greenLightView.alpha = lightIsOff
            yellowLightView.alpha = lightIsOff
            redLightView.alpha = lightIsOn
        default:
            greenLightView.alpha = lightIsOff
            yellowLightView.alpha = lightIsOff
            redLightView.alpha = lightIsOff
            changeSignalButton.setTitle("START", for: .normal)
            buttonPressCount = 0
        }
        buttonPressCount += 1
    }
    
    
}

