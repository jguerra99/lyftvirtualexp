//
//  alertView.swift
//  RideSharer
//
//  Created by Jose Lopez on 3/9/22.
//

import Foundation
import UIKit


class alertView: UIView {
   func PrepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!){
        let dialogMessage = UIAlertController(title: "Confirm", message: "Are you sure you want to delete this?", preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
       self.presentViewController(dialogMessage, animated: true, completion: nil)
    }
    }
    
