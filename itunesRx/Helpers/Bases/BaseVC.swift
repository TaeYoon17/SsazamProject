//
//  BaseVC.swift
//  itunesRx
//
//  Created by 김태윤 on 2023/11/08.
//

import UIKit
import RxSwift
class BaseVC: UIViewController{
    let disposeBag = DisposeBag()
    lazy var activityView = UIActivityIndicatorView.getIndicator(center: view.center, color: .black)
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLayout()
        configureConstraints()
        configureNavigation()
        configureView()
        view.addSubview(activityView)
    }
    func configureLayout(){
        fatalError("Should be override!!")
    }
    func configureNavigation(){ }
    func configureConstraints(){
        fatalError("Should be override!!")
    }
    func configureView(){ }
}
