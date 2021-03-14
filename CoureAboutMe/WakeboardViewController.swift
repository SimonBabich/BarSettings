//
//  WakeboardViewController.swift
//  CoureAboutMe
//
//  Created by SimonBabich on 20.12.2020.
//

import UIKit

class WakeboardViewController: UIViewController {
    var imageScrollView: ImageScrollView!
    let fileName = "WakeboardViewController"
    
    /// Вызывается при загрузке ViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageScrollView = ImageScrollView(frame: view.bounds)
        view.addSubview(imageScrollView)
        setupImageScrollView()
        
        let imagePath = Bundle.main.path(forResource: "waikboard", ofType: "JPG")!
        let image = UIImage(contentsOfFile: imagePath)!
        
        self.imageScrollView.set(image: image)
        
        print("2")
        
        tabBarItem.badgeValue = "2"
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.tabBarItem.badgeValue = nil
            //self.tabBarController?.selectedIndex = 2
        }
        
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
    
    func setupImageScrollView() {
        imageScrollView.translatesAutoresizingMaskIntoConstraints = false
        imageScrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        imageScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        imageScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        imageScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
    }
}
