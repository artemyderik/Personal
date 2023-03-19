//
//  SettingsViewController.swift
//  WlcomeInApp
//
//  Created by Артемий Дериглазов on 19.03.2023.
//

import UIKit

class SettingsViewController: UIViewController {

    
    //MARK: IB Outlets
    @IBOutlet var colorisedView: UIView!
    
    @IBOutlet var greenSliderValue: UILabel!
    @IBOutlet var redSliderValue: UILabel!
    @IBOutlet var blueSliderValue: UILabel!
    @IBOutlet var alphaSliderValue: UILabel!

    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var alphaSlider: UISlider!
    
    private var redAgent: Float = 0
    private var greenAgent: Float = 0
    private var blueAgent: Float = 0
    private var alphaAgent: Float = 0
    
    //MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        colorisedView.layer.cornerRadius = colorisedView.frame.width / 15.5
        slidersSetup()
        toColorTheView()
        agentsSetup()
    }
    
    
    //MARK: IB Actions
    @IBAction func setButtonPressed() {
        agentsSetup()
        view.backgroundColor = UIColor(red: CGFloat(redAgent), green: CGFloat(greenAgent), blue: CGFloat(blueAgent), alpha: CGFloat(alphaAgent))
    }
    
    
    @IBAction func allBlackButtonPressed() {
    }
    
    @IBAction func allWhiteVuttonPressed() {
    }



    @IBAction func redSpectorChanges() {
        redSliderValue.text = String(format: "%.2f", redSlider.value)
        toColorTheView()
    }
    
    @IBAction func greenSpectorChanges() {
        greenSliderValue.text = String(format: "%.2f", greenSlider.value)
        toColorTheView()
    }
    
    @IBAction func blueSpectorChanges() {
        blueSliderValue.text = String(format: "%.2f", blueSlider.value)
        toColorTheView()
    }
    @IBAction func alphaSpectorChanges() {
        alphaSliderValue.text = String(format: "%.2f", alphaSlider.value)
        toColorTheView()
    }

    
    // MARK: - Private methods
    private func slidersSetup() {
        redSlider.minimumTrackTintColor = UIColor.red
        greenSlider.minimumTrackTintColor = UIColor.green
        blueSlider.minimumTrackTintColor = UIColor.blue
        alphaSlider.minimumTrackTintColor = UIColor.lightGray
    }
    
    private func toColorTheView() {
        colorisedView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: CGFloat(alphaSlider.value)
        )
    }
    
    private func agentsSetup() {
        redAgent = redSlider.value
        greenAgent = greenSlider.value
        blueAgent = blueSlider.value
        alphaAgent = alphaSlider.value
    }

}


