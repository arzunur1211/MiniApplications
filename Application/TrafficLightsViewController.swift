//
//  TrafficLightsViewController.swift
//  Application
//
//  Created by Aita Macbook on 9/5/24.
//

import UIKit
enum CurrentLight {
    case red, yellow, green
}


class TrafficLightsViewController: UIViewController {
    
    @IBOutlet weak var redLight: UIView!
    
    @IBOutlet weak var yellowLight: UIView!
    
    @IBOutlet weak var greenLight: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private let lightIsON: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        startButton.layer.cornerRadius = 10
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
        
    }
    
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = redLight.frame.width / 2
        greenLight.layer.cornerRadius = redLight.frame.width / 2
    }
 
    @IBAction func startButtonPressed(_ sender: Any) {
        startButton.setTitle("Next", for: .normal)
        switch currentLight {
        case .red:
            greenLight.alpha = lightIsOff
            redLight.alpha = lightIsON
            currentLight = .yellow
        case .yellow:
            redLight.alpha = lightIsOff
            yellowLight.alpha = lightIsON
            currentLight = .green
        case .green:
            greenLight.alpha = lightIsON
            yellowLight.alpha = lightIsOff
            currentLight = .red
       
        }
    }
    

}
