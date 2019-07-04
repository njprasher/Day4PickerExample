//
//  TableViewController.swift
//  Day4PickerExample
//
//  Created by Neeraj Prasher on 2019-07-03.
//  Copyright © 2019 njprasher. All rights reserved.
//

import UIKit

class TableViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tblCourseList: UITableView!
    
    
        var courseArray = ["Android Fundamentals", "iOS Fundamentals", "Swift Programming", "Database Design", "Programming in Java", "Web Development in PHP", "Machine Learning", "Data Analytics with R", "Learn Ruby - The Hard Way", "Data Structures in C++"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tblCourseList.delegate = self
        self.tblCourseList.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.courseArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cellCourse")
        
        cell.textLabel?.text = self.courseArray[indexPath.row]
        
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
