//
//  ViewController.swift
//  Day4PickerExample
//
//  Created by Neeraj Prasher on 2019-07-03.
//  Copyright © 2019 njprasher. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var txtCollegeName: UITextField!
    
    @IBOutlet weak var txtCourseName: UITextField!
    
    @IBOutlet weak var lblAllDetail: UILabel!
    @IBOutlet weak var pickerCourseName: UIPickerView!
    var courseArray = ["Android Fundamentals", "iOS Fundamentals", "Swift Programming", "Database Design", "Programming in Java", "Web Development in PHP", "Machine Learning", "Data Analytics with R", "Learn Ruby - The Hard Way", "Data Structures in C++"]
    
    var collegeArray = ["Lambton College", "Humber College", "Sheridan College", "Seneca College", "Canadore College"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.pickerCourseName.delegate = self
        self.pickerCourseName.dataSource = self
    }
    
    //added one component in picker
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    //added number of rows in picker same as number of values in array
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return self.collegeArray.count
        }else{
            return self.courseArray.count
        }
        
    }
    
    //set value for each row
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
            return "\(row + 1) - \(self.collegeArray[row])"
        }else{
            return "\(row + 1) - \(self.courseArray[row])"
        }
        
    }
    
    //fetch the selected value
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
//        if component == 0{
//            self.lblCollegeName.text = self.collegeArray[row]
//        }else{
//            self.lblCourseName.text = self.courseArray[row]
//        }
        
        let strCollegeName = self.collegeArray[pickerView.selectedRow(inComponent: 0)]
        let strCourseName = self.courseArray[pickerView.selectedRow(inComponent: 1)]
        
        self.lblAllDetail.text = "\(strCollegeName) - \(strCourseName)"
        
    }
    
    //add value on button press
    
    @IBAction func btnAddCollege(_ sender: UIButton) {
        collegeArray.append(txtCollegeName.text ?? "")
        pickerCourseName.reloadAllComponents()
    }
    
    @IBAction func btnAddCourse(_ sender: UIButton) {
        courseArray.append(txtCourseName.text ?? "")
        pickerCourseName.reloadAllComponents()

    }
    
    
}

