//
//  BaseView.swift
//  itunesRx
//
//  Created by 김태윤 on 2023/11/08.
//

import UIKit
import RxSwift
class BaseView: UIView{
    let disposeBag = DisposeBag()
    lazy var activityView = UIActivityIndicatorView.getIndicator(center: center, color: .black)
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureLayout()
        configureConstraints()
        configureView()
        addSubview(activityView)
    }
    required init?(coder: NSCoder) {
        fatalError("Don't use storyboard")
    }
    func configureLayout(){
        fatalError("Should be override!!")
    }
    func configureConstraints(){
        fatalError("Should be override!!")
    }
    func configureView(){ }
}
