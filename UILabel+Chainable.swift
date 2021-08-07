//
//  UILabel+Chainable.swift
//  StoryBear
//
//  Created by mingyun.cho on 2020/02/06.
//  Copyright © 2020 Devsisters. All rights reserved.
//

import UIKit

//extension UILabel: Chainable {}

extension Chain where Origin: UILabel {
	@discardableResult
	func text(_ text: String) -> Chain {
		origin.text = text
		return self
	}
	
	@discardableResult
	func attributedText(_ text: NSAttributedString) -> Chain {
		origin.attributedText = text
		return self
	}
	
	@discardableResult
	func lineHeight(_ height: CGFloat) -> Chain {
		if let originStr = origin.attributedText {
			let attributedString = NSMutableAttributedString(attributedString: originStr)
				
			let paragraphStyle = NSMutableParagraphStyle()
			paragraphStyle.lineSpacing = height - origin.font.pointSize - (origin.font.lineHeight - origin.font.pointSize)
			attributedString.addAttribute(.paragraphStyle, value: paragraphStyle, range: NSMakeRange(0, attributedString.length))
			
			origin.attributedText = attributedString
		}else {
			fatalError("origin attributedText nil")
		}

		return self
	}
	
	func numberOfLines(_ lines: Int ) -> Chain {
		origin.numberOfLines = lines
		return self
	}
	
	func lineBreakMode(_ mode: NSLineBreakMode) -> Chain {
		origin.lineBreakMode = mode
		return self
	}
	
	@discardableResult
	func font(_ font: UIFont) -> Chain {
		origin.font = font
		return self
	}
	
	func font(size: CGFloat, weight: UIFont.Weight) -> Chain {
		return font(UIFont.systemFont(ofSize: size, weight: weight))
	}
	
	@discardableResult
	func textColor(_ color: UIColor) -> Chain {
		origin.textColor = color
		return self
	}
	
	func align(_ alignment: NSTextAlignment) -> Chain {
		origin.textAlignment = alignment
		return self
	}
}
