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
    
    let fileName = "SettingsViewController"
    
    /// Вызывается при загрузке ViewController
    override func viewDidLoad() {
        super.viewDidLoad()

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
    
    /// изменение шрифта
    @IBAction func sliderFontChange(sender: UISlider) {
        let senderValue = sender.value

        fontSize = CGFloat(senderValue * 100)
      //snowTxtView.font = UIFont(name: (SnowkiteViewController.snowTxtView.font.fontName), size:CGFloat(senderValue * 100))
        //aboutMeLabel.sizeToFit()
        print(fontSize)
    }
    
    // MARK: - Actions

//    @objc
//    func sliderValueDidChange(_ slider: Float) {
//        //_ slider: UISlider) {
//        print("A slider changed its value: \(slider).")
//    }
    

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

}
