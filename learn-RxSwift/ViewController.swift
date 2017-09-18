//
//  ViewController.swift
//  learn-RxSwift
//
//  Created by iq3AddLi on 2017/09/18.
//  Copyright © 2017年 addli.co.jp. All rights reserved.
//

import UIKit

import RxSwift
import RxCocoa

class ViewController: UIViewController {

    @IBOutlet var textField:UITextField!
    
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.rx.text
            .subscribe ( onNext: { (value) in
                guard let string = value else { return }
                print("\(string)")
            })
            .addDisposableTo(disposeBag)
    }
}

