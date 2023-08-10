//
//  ViewController.swift
//  HWKurylenka_11
//
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet private weak var uiSlider: UISlider!
    
    @IBOutlet private weak var uiTextField: UITextField!
    
    @IBOutlet private weak var uiProgressView: UIProgressView!
    
    @IBOutlet private weak var uiDatePicker: UIDatePicker!
    
    @IBOutlet private weak var btnSetThisTime: UIButton!
    
    @IBOutlet private weak var labelTime: UILabel!
    
    @IBOutlet private weak var uiSwitch: UISwitch!
    
    @IBOutlet private weak var uiButtonClear: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    @IBAction func sliderValueChaged(_ sender: UISlider) {
        uiProgressView.progress = sender.value
        uiTextField.text = String(format: "%.1f", sender.value)
    }

    @IBAction func textFieldValueChanged(_ sender: UITextField) {
        if let text = sender.text, let value = Float(text) {
            uiSlider.value = value
            uiProgressView.progress = value
        }
    }
    
    @IBAction func btnSetTime(_ sender: UIButton) {
        let selectedTime = uiDatePicker.date
        let formatDateTime = DateFormatter()
        formatDateTime.dateFormat = "hh:mm"
        let formatTime = formatDateTime.string(from: selectedTime)
        labelTime.text = formatTime
    }
    
    
    @IBAction func switchAlarm(_ sender: UISwitch) {
        if sender.isOn {
            labelTime.backgroundColor = .systemGreen
        } else {
            labelTime.backgroundColor = .systemBlue
        }
        
    }
    
    
    @IBAction func clearButton(_ sender: UIButton) {
        labelTime.text = ""
        labelTime.backgroundColor = .systemBlue
        uiSwitch.isOn = false
    }
    
}

