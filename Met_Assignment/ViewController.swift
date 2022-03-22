//
//  ViewController.swift
//  Met_Assignment
//
//  Created by Apple on 22/03/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate , UITableViewDataSource {
   
    
    @IBOutlet weak var tblView_ExcerciseList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return ExcerciseModel.data[0].data[0].workouts.stages[0].exerciseList.count
        return ExcerciseDataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ExcrciseTableViewCell
        cell.lbl_ID.text = String(ExcerciseDataArray[indexPath.row].exerciseId)
        cell.lblname.text = ExcerciseDataArray[indexPath.row].name
        cell.lbl_Reps.text = ExcerciseDataArray[indexPath.row].setReps
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }

}

