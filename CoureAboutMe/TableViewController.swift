//
//  TableViewController.swift
//  CoureAboutMe
//
//  Created by SimonBabich on 14.03.2021.
//

import UIKit

class TableViewController: UIViewController {

    let fileName = "TableViewController"
    //var tblIndex = 1
    
    @IBOutlet weak var settingsLabel: UILabel!
    /// Вызывается при загрузке ViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //title = "Таблица"
        /// принт при первой загрузке ViewController
        print(fileName, #function)
        
        if tblIndex == 2 {
            settingsLabel.text = "Мои столицы: \(myCountries.count)шт."
        } else if tblIndex == 0 {
            settingsLabel.text = "Количестов стран: \(cities1.count)"
        } else {
            settingsLabel.text = "Количестов столиц: \(cities1.count)"
        }
    }
    
    /// Вызывается каждый раз перед отображением экрана
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(fileName, #function)
    }
    
    /// Вызывается каждый раз когда экран уже отобразился
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(fileName, #function)
    }
    
    /// Вызывается каждый раз когда экран будет закрыт
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(fileName, #function)
    }
    
    /// Вызывается каждый раз когда экран уже закрыт
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(fileName, #function)
    }

}
