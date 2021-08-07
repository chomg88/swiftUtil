//
//  UIButton+Chainable.swift
//  StoryBear
//
//  Created by mingyun.cho on 2020/03/24.
//  Copyright © 2020 Devsisters. All rights reserved.
//

import UIKit

extension Chain where Origin: UIButton {
	
	@discardableResult
	func title(_ text: String, for state: UIControl.State, color: UIColor? = nil, font: UIFont? = nil)  -> Chain {
		origin.setTitle(text, for: state)
		if let color = color {
			origin.setTitleColor(color, for: state)
		}
		if let font = font {
			origin.titleLabel?.font = font
		}
		return self
	}
	
	@discardableResult
	func image(_ image: UIImage?, for state: UIControl.State) -> Chain {
		origin.setImage(image, for: state)
		return self
	}
	
	@discardableResult
	func background(color: UIColor, for state: UIControl.State) -> Chain {
//		origin.setBackgroundImage(color.imageValue, for: state)
		return self
	}
	
	@discardableResult
	func leftImage(_ image: UIImage?, for state: UIControl.State) -> Chain {
		if let _image = image {
			origin.leftImage(image: _image, renderMode: .alwaysOriginal)
		}
		return self
	}
	
}

extension UIButton {
	func leftImage(image: UIImage, renderMode: UIImage.RenderingMode) {
		self.setImage(image.withRenderingMode(renderMode), for: .normal)
		self.imageEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: image.size.width / 2)
		self.contentHorizontalAlignment = .left
		self.imageView?.contentMode = .scaleAspectFit
	}
	
	func rightImage(image: UIImage, renderMode: UIImage.RenderingMode){
		self.setImage(image.withRenderingMode(renderMode), for: .normal)
		self.imageEdgeInsets = UIEdgeInsets(top: 0, left:image.size.width / 2, bottom: 0, right: 0)
		self.contentHorizontalAlignment = .right
		self.imageView?.contentMode = .scaleAspectFit
	}
}

