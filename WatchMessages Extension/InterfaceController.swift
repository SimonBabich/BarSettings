//
//  InterfaceController.swift
//  firstWatchApp WatchKit Extension
//
//  Created by SimonBabich on 04.04.2021.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet weak var textLabel: WKInterfaceLabel!
    
    let array = ["Yes","No","Maybe"]
    
    @IBAction func actionButtonTapped() {
        textLabel.setText(array[Int.random(in:0...array.count - 1)])
    }
    
}

