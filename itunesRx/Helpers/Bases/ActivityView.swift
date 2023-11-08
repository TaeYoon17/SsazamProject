//
//  ActivityView.swift
//  itunesRx
//
//  Created by 김태윤 on 2023/11/08.
//


import UIKit
extension UIActivityIndicatorView{
    static func getIndicator(center: CGPoint,color: UIColor) -> UIActivityIndicatorView{
        let activityIndicator = UIActivityIndicatorView()
        activityIndicator.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        activityIndicator.center = center
        activityIndicator.color = color
        activityIndicator.hidesWhenStopped = true
        activityIndicator.style = UIActivityIndicatorView.Style.medium
        activityIndicator.stopAnimating()
        return activityIndicator
    }
}
