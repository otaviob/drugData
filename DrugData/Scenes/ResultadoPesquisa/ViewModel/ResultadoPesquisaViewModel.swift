//
//  ResultadoPesquisaViewModel.swift
//  DrugData
//
//  Created by Otavio Brito on 10/09/20.
//  Copyright © 2020 Otavio Brito. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON


class ResultadoPesquisaViewModel {
    
    var textSearch : String = ""
    var arrayRemedios = [Remedio] ();
    var filteredRemedios = [Remedio] ()
    
    
    // MARK: Métodos
    func loadBrandAPI(completion: @escaping (_ result: Bool, _ error: Error?) -> Void) {
                   AF.request("https://raw.githubusercontent.com/paolapagotto/csvtojson/master/medicamentos.json").responseJSON { response in
                       if let arrayDictionary = response.value as? [[String: String]] {
                        
                        
                           for item in arrayDictionary {
                            
                            let brand = Remedio(json: JSON(item))
                            self.arrayRemedios.append(brand)
                           }
                        let sortedArray = self.arrayRemedios.sorted{
                            return $0.product < $1.product
                            
                        }
                        self.arrayRemedios = sortedArray
                           completion(true, nil)
                       } else {
                           completion(false, response.error)
                       }
                       
                   }
                   
               }
    
    func numberOfRows() -> Int {
            return arrayRemedios.count
        }
    
    func numberOfRowsSearchByName() -> Int {
            return filteredRemedios.count
        }
    
    func getMedicine() {
       
    }
    
    
}
