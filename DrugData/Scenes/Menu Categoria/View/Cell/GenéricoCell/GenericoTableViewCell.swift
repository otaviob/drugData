//
//  GenericoTableViewCell.swift
//  DrugData
//
//  Created by Otavio Brito on 10/09/20.
//  Copyright © 2020 Otavio Brito. All rights reserved.
//

import UIKit

class GenericoTableViewCell: UITableViewCell {

    @IBOutlet weak var labelNameDrug: UILabel!
    @IBOutlet weak var labelGenericName: UILabel!
    @IBOutlet weak var labelLaboratoryName: UILabel!
    
    func setup(name: Categoria) -> Void {
        
        self.labelNameDrug.text = name.produto
        self.labelGenericName.text = name.tipoProduto
        self.labelLaboratoryName.text = name.laboratorio
        
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
