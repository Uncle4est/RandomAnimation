//
//  ViewController.swift
//  RandomAnimation
//
//  Created by Nicholas Smith on 11/2/22.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController { //Если нет наследников класса, нужно указывать final

    //MARK: - IB Outlets
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var animationLabel: UILabel! {
        didSet { //вызывается когда изменется значение самого объекта
            animationLabel.text = animation.description
        }
    }
    
    //MARK: - Private properties
    private var animation = Animation.getRandomAnimation()
    
    //MARK: - IB Actions
    @IBAction func runButtonPressed(_ sender: UIButton) {
        animationLabel.text = animation.description

        springAnimationView.animation = animation.name
        springAnimationView.curve = animation.curve
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
        springAnimationView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
    }
}
