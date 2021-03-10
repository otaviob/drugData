//
//  Laboratorio.swift
//  DrugData
//
//  Created by Otavio Brito on 10/09/20.
//  Copyright © 2020 Otavio Brito. All rights reserved.
//

import Foundation
import SwiftyJSON

protocol SearchBarProtocol {
    func getTeam() -> String
}

class Categoria {
    
    var produto:String
    var laboratorio: String
    var tipoProduto: String
    var tipoControlados: String
    var classeTerapeutica: String
       
     init(json: JSON) {
        
        self.produto = json["PRODUTO"].stringValue
        self.laboratorio = json["LABORATORIO"].stringValue
        self.tipoProduto = json["TIPO DE PRODUTO"].stringValue
        self.tipoControlados = json["TARJA"].stringValue
        self.classeTerapeutica = json["CLASSE TERAPEUTICA"].stringValue
            
        }
}

extension Categoria: SearchBarProtocol {
    func getTeam() -> String {
        return "\(produto)".lowercased()
    }
    func getTeamLab() -> String {
        return "\(laboratorio)".lowercased()
    }
}
