//
//  Location.swift
//  DrugData
//
//  Created by Otavio Brito on 10/09/20.
//  Copyright © 2020 Otavio Brito. All rights reserved.
//

import UIKit
import CoreLocation


class Location: NSObject {
    
    func convertLocation(endereco:String, local:@escaping(_ local:CLPlacemark) -> Void) {
        let convert = CLGeocoder()
        convert.geocodeAddressString(endereco) { (listLocation, error) in
            if let location = listLocation?.first {
                local(location)
            }
        }
    }
}
