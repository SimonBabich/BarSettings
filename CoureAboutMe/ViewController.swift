//
//  ViewController.swift
//  CoureAboutMe
//
//  Created by BABICH Simon on 26.11.2020.
//

import UIKit

struct ProfileData {
    let fio: String = "Семён Бабич"
    let foto: UIImage? = UIImage(named: "profilePic")
    let aboutMe: String = """
                            я рабаотаю начальником отдела развития и поддержики финансовых систем в РТ Лабс с 2015 года. Если есть вопросы по TS или RM2, обращайтесь.
                            В свободное время люблю заниматься кайтбординогом.
                            В этом упражнении пытался от значения слайдера изменить шрифт, но не получилось. Хотелось бы понять, что не так.
                            При повернутом телефоне не весь тектс умещается: прокуртку нужно настраивать отдельно?
                            Так же интересно как работают таблицы, но надеюсь мы это рассмотрим в следущих уроках.
                            """
}

class ViewController: UIViewController {
    /// имя
    @IBOutlet weak var profileName: UILabel!
    /// Фото
    @IBOutlet weak var imageView: UIImageView!
    /// Содержание
    @IBOutlet weak var aboutMeLabel: UILabel!
    /// Кнопка показать данные
    @IBOutlet weak var showDataBtn: UIButton!
    /// Кнопка очистить
    @IBOutlet weak var clearBtn: UIButton!
    /// размер шрифта
    @IBOutlet weak var sliderFont: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        clearBtn.isHidden = true
        //sliderFont.isHidden = true
    }
    
    /// отобразить данные
    @IBAction func showDataButton() {
        let data = ProfileData()
        profileName.text = data.fio
        imageView.image = data.foto
        aboutMeLabel.text = data.aboutMe
        clearBtn.isHidden = false
        showDataBtn.isHidden = true
        //sliderFont.value = 18
        
        //sliderFont.isHidden = false
    }
    
    /// Очистить данные
    @IBAction func clearDataBtn() {
        profileName.text = nil
        imageView.image = nil
        aboutMeLabel.text = nil
        showDataBtn.isHidden = false
        clearBtn.isHidden = true
        //sliderFont.isHidden = true
    }
    
    /// изменение шрифта
    @IBAction func slidwrFontCgange(sender: UISlider) {
        let senderValue = CGFloat(sender.value)
            
            
        //aboutMeLabel.font = UIFont(name: (aboutMeLabel.font.fontName), size:senderValue * 1)
        //aboutMeLabel.sizeToFit()
        print(senderValue)
    }
}

