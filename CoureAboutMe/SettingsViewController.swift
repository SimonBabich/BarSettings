//
//  SettingsViewController.swift
//  CoureAboutMe
//
//  Created by SimonBabich on 12.12.2020.
//

import UIKit
import AVFoundation


class SettingsViewController: UIViewController {
    /// фонарик
    @IBOutlet weak var flashLight: UIButton!
    /// размер шрифта
    @IBOutlet weak var sliderFont: UISlider!
    /// код таблиы
    @IBOutlet weak var tableIDs: UISegmentedControl!
    
    let fileName = "SettingsViewController"
    var tblName = "Столицы"
    //public var tblIndex = 1
    //var countrie = [String; String]
    
    /// Вызывается при загрузке ViewController
    override func viewDidLoad() {
        super.viewDidLoad()

        print("4")
        
        //tabBarItem.badgeValue = "4"
        //DispatchQueue.main.asyncAfter(deadline: .now() + 16) {
        //    self.tabBarItem.badgeValue = nil
        //    //self.tabBarController?.selectedIndex = 0
        //}
        
        title = "Настройки"
        //countrie = cities.sorted(by: { Self.1; Self.0})
        
        // Do any additional setup after loading the view.
        flashLight.layer.cornerRadius = 20
        configureSliderFont()
     
        
        /// принт при первой загрузке ViewController
        print(fileName, #function)
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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
     
    func configureSliderFont() {
        //sliderFont.isHidden = false
        sliderFont.minimumValue = 0.1
        sliderFont.maximumValue = 0.4
        sliderFont.value = 0.18
        sliderFont.minimumTrackTintColor = UIColor.systemBlue
        sliderFont.maximumTrackTintColor = UIColor.systemPurple
        sliderFont.minimumValueImage = UIImage(systemName: "minus")
        sliderFont.maximumValueImage = UIImage(systemName: "plus")
        sliderFont.thumbTintColor = .red
        sliderFont.isContinuous = true
     
//             sliderFont.addTarget(self,
//                                  action: #selector(sliderValueDidChange(_:)),
//                                     //#selector(sliderValueDidChange(_:)),
//                                  for: .valueChanged)
    }

    // MARK: - Actions
    
    /// изменение шрифта
    @IBAction func sliderFontChange(sender: UISlider) {
        let senderValue = sender.value

        fontSize = CGFloat(senderValue * 100)
      //snowTxtView.font = UIFont(name: (SnowkiteViewController.snowTxtView.font.fontName), size:CGFloat(senderValue * 100))
        //aboutMeLabel.sizeToFit()
        print("Изменение слайдера: Шрифт = ", fontSize)
    }
    
//    @objc
//    func sliderValueDidChange(_ slider: Float) {
//        //_ slider: UISlider) {
//        print("A slider changed its value: \(slider).")
//    }
    

    // нажатие на кнопку Перейти к таблице
    @IBAction func pressedGoToTable(_ sender: Any) {
        print("5 нажатие на кнопку Перейти к таблице")
        print(fileName, #function)
        //print(tableIDs.select(Any?.self))
    }
    
    
    @IBAction func flashLightPress(sender: UIButton) {
        print("Button was pressed")
        
        changeValue ()
        intractWithLight()
    }
    
    
    /// меняем значение
    func changeValue () {
        /// меняем значение isOn
        //isOn = isOn ?  false : true
        //isOn.toggle()
        isOn = !isOn
        changeBackground()
    }
    
    
    /// взаимодействие со вспышкой
        func intractWithLight() {
            if let device = AVCaptureDevice.default(for: .video), device.hasTorch {
                do {
                    try device.lockForConfiguration()
                    device.torchMode = isOn ? .on : .off
                    device.unlockForConfiguration()
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
    
    /// change button based on isOn
        func changeBackground () {
            flashLight.backgroundColor = isOn ? .white : .black
            flashLight.tintColor = !isOn ? .white : .black
        }

    // Изменение таблицы
    @IBAction func tableChange(_ sender: UISegmentedControl) {
        // print("Выбрана таблица",sender.selectedSegmentIndex + 1)
        tblName =  sender.titleForSegment(at: sender.selectedSegmentIndex) ?? "Таблица \(sender.selectedSegmentIndex + 1)"
        print(tblName)
        tblIndex = sender.selectedSegmentIndex
        //var coutries2[]
        //countries2 = cities.sort.1
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        let newVC = segue.destination
        // Если перешли обратно с экрана Таблиц
        if let tableVC = newVC as? TableViewController {
            print("4.5")
            tableVC.title = tblName + " (настройка)"
            print(fileName, #function)
            print(5.0, tblIndex)
            
        }

        if let tableVC = newVC as? UI_TableViewController {
            print("4.7 UI_TableViewController")
            tableVC.title = tblName
            print(fileName, #function)
        }

    }
    
}
