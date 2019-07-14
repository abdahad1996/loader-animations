//
//  ViewController.swift
//  animations
//
//  Created by prog on 7/14/19.
//  Copyright © 2019 prog. All rights reserved.
//

import UIKit


class ViewController: UIViewController,NVActivityIndicatorViewable{
    private let presentingIndicatorTypes = {
        return NVActivityIndicatorType.allCases.filter { $0 != .blank }
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .white
//       let activityIndicatorView =  NVActivityIndicatorView(frame: .init(x: 0, y: 200, width: 200, height: 200), type: .ballClipRotateMultiple, color: .white, padding:0)
//        self.view.addSubview(activityIndicatorView)
//        activityIndicatorView.startAnimating()
        
        let size = CGSize(width: 50, height: 50)
//        let indicatorType = presentingIndicatorTypes[7]
        
        let activitydatsa = ActivityData(size: size, message: "loading ...", messageFont: .boldSystemFont(ofSize: 15), messageSpacing: 5, type: .ballClipRotate, color: .gray, padding: 5, displayTimeThreshold: 3, minimumDisplayTime: 2, backgroundColor: .white, textColor: .black)
        
        NVActivityIndicatorPresenter.sharedInstance.startAnimating(activitydatsa)
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
            NVActivityIndicatorPresenter.sharedInstance.stopAnimating(nil)
            
            let activityIndicatorView =  NVActivityIndicatorView(frame: .init(x: 0, y: 200, width: 200, height: 200), type: .ballClipRotateMultiple, color: .black, padding:0)
            self.view.addSubview(activityIndicatorView)
            activityIndicatorView.startAnimating()

                    }

//        startAnimating(size, message: "Loading...", type: indicatorType, fadeInAnimation: nil)
//
//        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
//            NVActivityIndicatorPresenter.sharedInstance.setMessage("Authenticating...")
//        }
//
//        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
//            self.stopAnimating(nil)
//        }
        
    }


}

