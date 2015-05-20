//
//  PostTitleTableViewCell.swift
//  edX
//
//  Created by Tang, Jeff on 5/13/15.
//  Copyright (c) 2015 edX. All rights reserved.
//

import UIKit

class PostTitleTableViewCell: UITableViewCell {
    
    var typeImageView = UIImageView()
    var titleLabel = UILabel()
    var countButton = UIButton()
 
    var titleTextStyle : OEXTextStyle {
        let style = OEXMutableTextStyle(font: .ThemeSans, size: 14.0)
        style.color = OEXStyles.sharedStyles().neutralDark()
        return style
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(typeImageView)
        typeImageView.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(self.contentView).offset(7)
            make.centerY.equalTo(self.contentView).offset(0)
            make.width.equalTo(25)
            make.height.equalTo(25)
        }
        
        titleTextStyle.applyToLabel(titleLabel)
        contentView.addSubview(titleLabel)
        titleLabel.snp_makeConstraints { (make) -> Void in
            make.leading.equalTo(typeImageView.snp_right).offset(8)
            make.centerY.equalTo(contentView).offset(0)
            make.height.equalTo(20)
            make.width.equalTo(200)
        }
        
        contentView.addSubview(countButton)
        countButton.setTitleColor(OEXStyles.sharedStyles().primaryBaseColor(), forState: .Normal)
        countButton.snp_makeConstraints { (make) -> Void in
            make.trailing.equalTo(contentView).offset(-9)
            make.centerY.equalTo(contentView).offset(0)
            make.width.equalTo(30)
            make.height.equalTo(30)
        }
    }
    
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}