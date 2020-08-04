//
//  ViewController.swift
//  AppleBooks
//
//  Created by Dev on 27/06/2020.
//  Copyright © 2020 Keyrewit. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CAAnimationDelegate, UIGestureRecognizerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(GetStartedLabel)
        view.addSubview(ViewSeperatorLine)
        view.addSubview(BooksImagePhoto)
        view.addSubview(BlackWhitePhoto)
        view.addSubview(BlackWhiteText)
        view.addSubview(ContinueButton)
        
        UIContentLayout()
    }
    
    func UIContentLayout(){
        //Adding Get Started label on Screen
        GetStartedLabel.safeAreaLayoutGuide.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        GetStartedLabel.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        GetStartedLabel.heightAnchor.constraint(equalToConstant: 140).isActive = true
        
        //Adding ViewSeperatorLine
        ViewSeperatorLine.topAnchor.constraint(equalTo: GetStartedLabel.bottomAnchor).isActive = true
        ViewSeperatorLine.heightAnchor.constraint(equalToConstant: 1.2).isActive = true
        ViewSeperatorLine.widthAnchor.constraint(equalToConstant: 100).isActive = true
        ViewSeperatorLine.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        //Adding BookImagePhoto
        BooksImagePhoto.topAnchor.constraint(equalTo: ViewSeperatorLine.bottomAnchor, constant: 30).isActive = true
        BooksImagePhoto.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        BooksImagePhoto.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/3).isActive = true
        BlackWhitePhoto.topAnchor.constraint(equalTo: BooksImagePhoto.bottomAnchor, constant: 30).isActive = true
        BlackWhitePhoto.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        BlackWhitePhoto.heightAnchor.constraint(equalToConstant: 70).isActive = true

        //Adding BlackWhiteText
        BlackWhiteText.topAnchor.constraint(equalTo: BlackWhitePhoto.bottomAnchor).isActive = true
        BlackWhiteText.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        BlackWhiteText.heightAnchor.constraint(equalToConstant: 120).isActive = true
        BlackWhiteText.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        BlackWhiteText.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85).isActive = true
        
        //Adding ContinueButton
        ContinueButton.topAnchor.constraint(equalTo: BlackWhiteText.bottomAnchor).isActive = true
        ContinueButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85).isActive = true
        ContinueButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        ContinueButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
//    @objc func handleSearchController(){
//        let vc = HomeController()
//        self.present(vc, animated: true)
////        let transition:CATransition = CATransition()
////        transition.duration = 0.4
////        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
////        transition.type = CATransitionType.push
////        transition.subtype = CATransitionSubtype.fromRight
////        self.navigationController?.view.layer.add(transition, forKey: kCATransition)
////        self.navigationController?.pushViewController(HomeController(), animated: false)
//        print("clicked")
//    }
    
    @objc func handleHomeController(){
        let viewcontroller = HomeController()
        let view = UINavigationController(rootViewController: viewcontroller)
        present(view, animated: true, completion: nil)
    }
    
    let GetStartedLabel: UILabel = {
        let label = UILabel()
        label.text = "Get Started"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = NSTextAlignment.center
        label.font = UIFont(name:"BodoniSvtyTwoITCTT-Bold", size: 55)
        return label
    }()

    
    let ViewSeperatorLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    let BooksImagePhoto: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "AppleBooks")
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    
    let BlackWhitePhoto: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "BlackWhitePhoto")
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    
     let BlackWhiteText:UITextView = {
        let view = UITextView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.masksToBounds = true
        view.textAlignment = NSTextAlignment.center
        view.insertText("Apple collects books usage data, not associated with your Apple ID, to improve Apple Books. Your searches, browsing, purchases and device trust score may be used to personalise your experience, improve the store and prevent fraud. See how your data is managed...")
        view.font = UIFont.systemFont(ofSize: 13)
        return view
    }()

    lazy var ContinueButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor.black
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Continue", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        button.isUserInteractionEnabled = true
        button.addTarget(self, action:#selector(handleHomeController), for: .touchUpInside)
        button.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 18)
        return button
        
    }()
    


}

