//
//  ViewController.swift
//  miraclepills1
//
//  Created by Dave on 5/6/17.
//  Copyright © 2017 Dave. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    // creating outlet for our UI Picker View state selector
    @IBOutlet var statePicker: UIPickerView!
    // creating outlet for our button "choose your state" so we can change its text once state is chosen
    @IBOutlet var statePickerBtn: UIButton!
   
    // create array of states for our picker view
    let states = ["New York", "Alaska", "California", "Arkansas", "Alabama", "Florida"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // telling Xcode to look for the protocol functions in this view controller class
        statePicker.dataSource = self
        statePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // creating action for our button which launches the UI Picker View.
    @IBAction func stateButtonPressed(_ sender: Any) {
  
    statePicker.isHidden = false
    
    }
    
    // design our picker
    // number of components is like columns; in this case since we're only asking a user to pick a state, we just need one.  think of running apps that let you enter hour, minute, and second - these would need 3 components.
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // number of rows in each component (column).  since we're using an array, we'll use the number of items in the array.
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    // title for each row - will be populated from our array indices.
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    // creating a function which will pass the selected row's value to our label
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.application)
    statePicker.isHidden = true
    }

}

