//
//  DetalheMedicamentoTableViewCell.swift
//  DrugData
//
//  Created by Otavio Brito on 10/09/20.
//  Copyright © 2020 Otavio Brito. All rights reserved.
//

import UIKit

class DetalheMedicamentoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelProductName: UILabel!
    @IBOutlet weak var labelLaboratoryName: UILabel!
    @IBOutlet weak var labelProductType: UILabel!
    @IBOutlet weak var labelProductPrice: UILabel!
    @IBOutlet weak var labelProductControl: UILabel!
    @IBOutlet weak var imageViewProduct: UIImageView!
    
  
    
    func setup(details: Remedio) {
        labelProductName.text = details.product
        labelLaboratoryName.text = details.nameLaboratory
        labelProductType.text = details.productType
        labelProductPrice.text = details.price
        labelProductControl.text = details.controlled
        
    }
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
      
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

 }

