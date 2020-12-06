//
//  ViewController.swift
//  Snowkiting
//
//  Created by BABICH Simon on 26.11.2020.
//

import UIKit

struct ProfileData {
    let fio: String = "Сноукайтинг"
    let foto: UIImage? = UIImage(named: "profilePic")
    let aboutMe: String = """
                            Сноукайтинг - это вид спорта и активного отдыха представляющего собой занятия с буксировочным кайтом на снежном покрытии или льду с применением лыж, сноуборда или коньков
                            """
}

class ViewController: UIViewController {
    /// имя
    @IBOutlet weak var profileName: UILabel!
    /// Фото
    @IBOutlet weak var imageView: UIImageView!
    /// Содержание
    @IBOutlet weak var snowTxtView: UILabel!
    /// размер шрифта
    @IBOutlet weak var sliderFont: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showDataButton()
        //configureSliderFont()
     
        //sliderFont.isHidden = false
    }
    
    /// отобразить данные
    func showDataButton() {
        let data = ProfileData()
        profileName.text = data.fio
        imageView.image = data.foto
        snowTxtView.text = data.aboutMe
        
        snowTxtView.font = UIFont(name: (snowTxtView.font.fontName), size:22)
//        aboutMeLabel.frame
//        aboutMeLabel.bounds
        //sliderFont.isHidden = false
    }
    
    func configureSliderFont() {
        //sliderFont.isHidden = false
        sliderFont.minimumValue = 0.1
        sliderFont.maximumValue = 0.4
        sliderFont.value = 0.18
        sliderFont.minimumTrackTintColor = UIColor.systemBlue
        sliderFont.maximumTrackTintColor = UIColor.systemPurple
        

        sliderFont.isContinuous = true

//        sliderFont.addTarget(self,
//                             action: #selector(sliderValueDidChange(_:)),
//                                //#selector(sliderValueDidChange(_:)),
//                             for: .valueChanged)
            }
    

    
    /// изменение шрифта
    @IBAction func sliderFontChange(sender: UISlider) {
        let senderValue = sender.value


        snowTxtView.font = UIFont(name: (snowTxtView.font.fontName), size:CGFloat(senderValue * 100))
        //aboutMeLabel.sizeToFit()
        print(senderValue)
    }
    
    // MARK: - Actions

//    @objc
//    func sliderValueDidChange(_ slider: Float) {
//        //_ slider: UISlider) {
//        print("A slider changed its value: \(slider).")
//    }
}

