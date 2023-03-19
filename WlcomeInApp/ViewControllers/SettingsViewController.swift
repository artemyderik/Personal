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

    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    

    //MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        colorisedView.layer.cornerRadius = colorisedView.frame.width / 15.5
        slidersSetup()
        toColorTheView()
    }
    
    
    //MARK: IB Actions
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
    
    
    //MARK: Unwind
    @IBAction func unwind(for segue: UIStoryboardSegue, sender: Any?) {
       guard let tabBarController = segue.source as? TabBarController else { return }
    }

    
    // MARK: - Private methods
    private func slidersSetup() {
        redSlider.minimumTrackTintColor = UIColor.red
        greenSlider.minimumTrackTintColor = UIColor.green
        blueSlider.minimumTrackTintColor = UIColor.blue
    }
    
    private func toColorTheView() {
        colorisedView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }

}

