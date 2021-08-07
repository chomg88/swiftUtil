//
//  UIView+Chainable.swift
//  StoryBear
//
//  Created by mingyun.cho on 2020/02/06.
//  Copyright © 2020 Devsisters. All rights reserved.
//

import UIKit

extension UIView: Chainable {}


extension Chain where Origin: UIView {
	@discardableResult
	func background(color: UIColor) -> Chain {
		origin.backgroundColor = color
		return self
	}
	
	@discardableResult
	func alpha(_ alpha: CGFloat) -> Chain {
		origin.alpha = alpha
		return self
	}
	
	@discardableResult
	func cornerRadius(_ r: CGFloat) -> Chain {
		origin.layer.cornerRadius = r
		origin.clipsToBounds = true
		return self
	}
	
	@discardableResult
	func borderColor(_ color: UIColor) -> Chain {
		origin.layer.borderColor = color.cgColor
		origin.clipsToBounds = true
		return self
	}
	
	@discardableResult
	func borderWidth(_ width: CGFloat) -> Chain {
		origin.layer.borderWidth = width
		origin.clipsToBounds = true
		return self
	}
	
	@discardableResult
	func shadow(color: UIColor, alpha: Float, x: CGFloat, y: CGFloat, blur: CGFloat, spread: CGFloat) -> Chain {
		origin.layer.masksToBounds = false
//		origin.layer.applyShadow(color: color, alpha: alpha, x: x, y: y, blur: blur, spread: spread)
		return self
	}
	
	func shadowColor(_ color: UIColor) -> Chain {
		origin.layer.shadowColor = color.cgColor
		origin.clipsToBounds = true
		return self
	}
	
	func shadowOpacity(_ opacity: Float) -> Chain {
		origin.layer.shadowOpacity = opacity
		origin.clipsToBounds = true
		return self
	}
	
	func shadowOffset(_ offset: CGSize) -> Chain {
		origin.layer.shadowOffset = offset
		origin.clipsToBounds = true
		return self
	}
	
	func shadowRadius(_ radius: CGFloat) -> Chain {
		origin.layer.shadowRadius = radius
		origin.clipsToBounds = true
		return self
	}
	
	func add(to parent: UIView) -> Chain {
		parent.addSubview(origin)
		return self
	}
	
	@discardableResult
	func hidden(_ isHidden: Bool) -> Chain {
		origin.isHidden = isHidden
		return self
	}
	
	@discardableResult
	func addArranged(to parent: UIStackView) -> Chain {
		parent.addArrangedSubview(origin)
		return self
	}
	
	func size(width: CGFloat, height: CGFloat) -> Chain {
		origin.translatesAutoresizingMaskIntoConstraints = true
		return self
	}
}

extension Chain where Origin: UIImageView {

	func image(_ image: UIImage?) -> Chain {
		origin.image = image
		return self
	}

}

extension Chain where Origin: UITextField {
	@discardableResult
	func textColor(_ color: UIColor) -> Chain {
		origin.textColor = color
		return self
	}
}
