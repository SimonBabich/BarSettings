//
//  SkiViewController.swift
//  CoureAboutMe
//
//  Created by SimonBabich on 13.12.2020.
//

import UIKit

class SkiViewController: UIViewController {

    @IBOutlet weak var snow02: UIImageView!
    @IBOutlet weak var snow01: UIImageView!
    var isFliped = false
    let fileName = "SkiViewController"
    
    /// Вызывается при загрузке ViewController
    override func viewDidLoad() {
        super.viewDidLoad()
      
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
    

    @IBAction func flipOver(_ sender: UIButton) {
        isFliped = !isFliped
        let fromView = isFliped ? snow02 : snow01
        let toView = isFliped ? snow01 : snow02
        
        UIView.transition(from: fromView!, to: toView!, duration: 0.7, options: [
                            //.curveEaseIn,
                            .transitionFlipFromLeft
                            //.transitionFlipFromTop
                            , .showHideTransitionViews
        ])
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
