//
//  SnowkiteViewController.swift
//  Snowkiting
//
//  Created by BABICH Simon on 26.11.2020.
//  commited on 14.03.2021

import UIKit

var fontSize: CGFloat = 18
var isOn: Bool = false

struct ProfileData {
    let fio: String = "Сноукайтинг"
    let foto: UIImage? = UIImage(named: "ice")
    let aboutMe: String = """
                            Сноукайтинг - это вид спорта и активного отдыха представляющего собой занятия с буксировочным кайтом на снежном покрытии или льду с применением лыж, сноуборда или коньков
                            """
}
    let fileName = "SnowkiteViewController"

class SnowkiteViewController: UIViewController {
    /// имя
    @IBOutlet weak var profileName: UILabel!
    /// Фото
    @IBOutlet weak var imageView: UIImageView!
    /// Содержание
    @IBOutlet weak var snowTxtView: UILabel!
    
    /// Вызывается при загрузке ViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        showDataRun()
        //configureSliderFont()
        //sliderFont.isHidden = false
        //title = "test"
        
        print("1")
        
        tabBarItem.badgeValue = "1"
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.tabBarItem.badgeValue = nil
            self.tabBarController?.selectedIndex = 1
        }
        
        
        /// принт при первой загрузке ViewController
        print(fileName, #function)
    }
    
    /// Вызывается каждый раз перед отображением экрана
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(fileName, #function)
        
        // Bзменяем размеп шрифта если поменяли в настройках
        snowTxtView.font = UIFont(name: (snowTxtView.font.fontName), size: fontSize)
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
    
    /// вызывается перед началом подсчета Layout
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print(fileName, #function)
    }
    
    /// вызывается когда подсчитан Layout
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print(fileName, #function)
    }
    
    /// отобразить данные
    func showDataRun() {
        let data = ProfileData()
        profileName.text = data.fio
        imageView.image = data.foto
        snowTxtView.text = data.aboutMe
        
        //snowTxtView.font = UIFont(name: (snowTxtView.font.fontName), size: fontSize)
    }
    
    @IBOutlet var viewOutletCollection: [UIImageView]!
    
    
    
}

