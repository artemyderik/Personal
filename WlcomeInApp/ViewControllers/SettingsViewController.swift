//
//  SettingsViewController.swift
//  WlcomeInApp
//
//  Created by Артемий Дериглазов on 19.03.2023.
//

import UIKit

class SettingsViewController: UIViewController {

    
    //MARK: - IB Outlets
    @IBOutlet var colorisedView: UIView!
    
    @IBOutlet var greenSliderValue: UILabel!
    @IBOutlet var redSliderValue: UILabel!
    @IBOutlet var blueSliderValue: UILabel!
    @IBOutlet var alphaSliderValue: UILabel!

    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var alphaSlider: UISlider!
    
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        colorisedView.layer.cornerRadius = colorisedView.frame.width / 15.5
        slidersSetup()
        toColorTheBackground(of: colorisedView)
        showAlert()
    }
    
    
    //MARK: - IB Actions
    @IBAction func setButtonPressed() {
        toColorTheBackground(of: view)
    }
    
    @IBAction func questionButtonPressed() {
        showAlert()
    }
    
    @IBAction func allBlackButtonPressed() {
        setupAllSlidersColorValue(to: 0)
    }
    
    @IBAction func allWhiteButtonPressed() {
        setupAllSlidersColorValue(to: 1)
    }

    @IBAction func redSpectorChanges() {
        redSliderValue.text = String(format: "%.2f", redSlider.value)
        toColorTheBackground(of: colorisedView)
    }
    
    @IBAction func greenSpectorChanges() {
        greenSliderValue.text = String(format: "%.2f", greenSlider.value)
        toColorTheBackground(of: colorisedView)
    }
    
    @IBAction func blueSpectorChanges() {
        blueSliderValue.text = String(format: "%.2f", blueSlider.value)
        toColorTheBackground(of: colorisedView)
    }
    
    @IBAction func alphaSpectorChanges() {
        alphaSliderValue.text = String(format: "%.2f", alphaSlider.value)
        toColorTheBackground(of: colorisedView)
    }
    
    
    // MARK: - Private methods
    private func slidersSetup() {
        redSlider.minimumTrackTintColor = UIColor.red
        greenSlider.minimumTrackTintColor = UIColor.green
        blueSlider.minimumTrackTintColor = UIColor.blue
        alphaSlider.minimumTrackTintColor = UIColor.lightGray
    }
    
    private func toColorTheBackground(of view: UIView) {
        view.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: CGFloat(alphaSlider.value)
        )
    }
    
    private func setupAllSlidersColorValue(to value: Float) {
        redSlider.value = value
        greenSlider.value = value
        blueSlider.value = value
        alphaSlider.value = 1
        toColorTheBackground(of: colorisedView)
    }

}


//MARK: Alert method
extension SettingsViewController {
    func showAlert(with title: String = "Hi!", and message: String = "Set the view in any color you want and press the Set button to paint the background", textField: UITextField? = nil) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAlert = UIAlertAction(title: "OK", style: .default)
        
        present(alert, animated: true)
        alert.addAction(okAlert)
    }
}
