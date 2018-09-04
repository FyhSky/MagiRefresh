//
//  MagiNativeFooter.swift
//  MagiRefresh
//
//  Created by anran on 2018/9/4.
//  Copyright © 2018年 anran. All rights reserved.
//

import UIKit

class MagiNativeFooter: MagiRefreshFooterConrol {
    
    lazy var indicator: UIActivityIndicatorView = {
        let indicator = UIActivityIndicatorView(
            activityIndicatorStyle: .gray)
        indicator.hidesWhenStopped = false
        
        return indicator
    }()
    
    override func setupProperties() {
        super.setupProperties()
        
        addSubview(indicator)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        indicator.center = CGPoint(x: magi_width/2.0,
                                   y: magi_height/2.0);
    }
    
    override func magiDidScrollWithProgress(progress: CGFloat, max: CGFloat) {
        
    }
    
    override func magiRefreshStateDidChange(_ status: MagiRefreshStatus) {
        super.magiRefreshStateDidChange(status)
        switch status {
        case .none:
            break
        case .scrolling:
            break
        case .ready:
            break
        case .refreshing:
            indicator.startAnimating()
        case .willEndRefresh:
            indicator.stopAnimating()
        }
    }
    
}


