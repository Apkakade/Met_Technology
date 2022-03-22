//
//  ExcrciseTableViewCell.swift
//  Met_Assignment
//
//  Created by Apple on 22/03/22.
//

import UIKit

class ExcrciseTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lbl_ID: UILabel!
    @IBOutlet weak var lbl_Reps: UILabel!
    @IBOutlet weak var lblname: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
