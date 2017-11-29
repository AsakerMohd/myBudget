//
//  NewProfileViewController.swift
//  myBudget
//
//  Created by Mohamad Asaker on 2017-03-07.
//  Copyright © 2017 AsakerMohd. All rights reserved.
//

import UIKit
import CoreData

class NewProfileViewController: UITableViewController, UIPickerViewDelegate, UIPickerViewDataSource {

        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "New Profile"
        picker.delegate = self
        picker.dataSource = self
        
        createPicker()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var balanceTextField: UITextField!
    @IBOutlet var monthTextField: UITextField!
    
    let picker = UIPickerView()
    
    var months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    
    //Functions to set the Picker for the month text field
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return months.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return months[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        monthTextField.text = months[row]
    }
    
    //Function to load the picker.
    func createPicker(){
        
        //Toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        //bar button item
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([doneButton], animated: true)
        
        monthTextField.inputAccessoryView = toolbar
        
        monthTextField.inputView = picker
    }
    //Function to make the picker disappear
    func donePressed(){
        self.view.endEditing(true)
    }

    
    @IBAction func saveButton(sender: UIButton){
        if nameTextField.text == "" || balanceTextField.text == "" || monthTextField.text == ""{
            let validator = UIAlertController(title: "Opps....", message: "One or more fields are empty!", preferredStyle: UIAlertControllerStyle.alert)
            validator.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default, handler: nil))
            self.present(validator, animated: true, completion: nil)
        }
        dismiss(animated: true, completion: nil)
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
