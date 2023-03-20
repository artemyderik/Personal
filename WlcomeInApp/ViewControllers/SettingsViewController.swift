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
        toColorTheColorisedView()
    }
    
    
    //MARK: - IB Actions
    @IBAction func setButtonPressed() {
        toColorTheSuperView()
    }
    
    @IBAction func allBlackButtonPressed() {
        redSlider.value = 0
        greenSlider.value = 0
        blueSlider.value = 0
        alphaSlider.value = 1
        toColorTheColorisedView()
    }
    
    @IBAction func allWhiteVuttonPressed() {
        redSlider.value = 1
        greenSlider.value = 1
        blueSlider.value = 1
        alphaSlider.value = 1
        toColorTheColorisedView()
    }

    @IBAction func redSpectorChanges() {
        redSliderValue.text = String(format: "%.2f", redSlider.value)
        toColorTheColorisedView()
    }
    
    @IBAction func greenSpectorChanges() {
        greenSliderValue.text = String(format: "%.2f", greenSlider.value)
        toColorTheColorisedView()
    }
    
    @IBAction func blueSpectorChanges() {
        blueSliderValue.text = String(format: "%.2f", blueSlider.value)
        toColorTheColorisedView()
    }
    
    @IBAction func alphaSpectorChanges() {
        alphaSliderValue.text = String(format: "%.2f", alphaSlider.value)
        toColorTheColorisedView()
    }
    
    
    //MARK: - Methods
    func showAlert(with title: String, and message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAlert = UIAlertAction(title: "OK", style: .default)
        
        present(alert, animated: true)
        alert.addAction(okAlert)
    }

    
    // MARK: - Private methods
    private func slidersSetup() {
        redSlider.minimumTrackTintColor = UIColor.red
        greenSlider.minimumTrackTintColor = UIColor.green
        blueSlider.minimumTrackTintColor = UIColor.blue
        alphaSlider.minimumTrackTintColor = UIColor.lightGray
    }
    
    private func toColorTheColorisedView() {
        colorisedView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: CGFloat(alphaSlider.value)
        )
    }
    
    private func toColorTheSuperView() {
        view.backgroundColor =  UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: CGFloat(alphaSlider.value)
        )
    }

}


