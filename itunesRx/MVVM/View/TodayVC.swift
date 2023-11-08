//
//  TodayVC.swift
//  itunesRx
//
//  Created by 김태윤 on 2023/11/08.
//
import UIKit
import SnapKit
import RxSwift
import RxCocoa
import RxDataSources
final class TodayVC: BaseVC{
    lazy var collectionView = UICollectionView(frame: .zero,collectionViewLayout: layout)
    var vm = TodayVM()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func configureLayout() {
        [collectionView].forEach { view.addSubview($0) }
    }
    override func configureConstraints() {
        collectionView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    override func configureNavigation() {
        
    }
    override func configureView() {
        view.backgroundColor = .systemBackground
        
    }
    var layout: UICollectionViewLayout{
        var listConfig = UICollectionLayoutListConfiguration(appearance: .insetGrouped)
        let layout = UICollectionViewCompositionalLayout.list(using: listConfig)
        return layout
    }
}
