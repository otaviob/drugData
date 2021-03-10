//
//  ControladosGeralTableViewCell.swift
//  DrugData
//
//  Created by Otavio Brito on 10/09/20.
//  Copyright © 2020 Otavio Brito. All rights reserved.
//

import UIKit

class ControladosGeralTableViewCell: UITableViewCell {

    @IBOutlet weak var labelMedice: UILabel!
    
    func setup(filter: String){
        labelMedice.text = filter
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
