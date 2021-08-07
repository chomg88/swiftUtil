//
//  SnapKit+Chainable.swift
//  StoryBear
//
//  Created by mingyun.cho on 2020/02/06.
//  Copyright © 2020 Devsisters. All rights reserved.
//

import UIKit
import SnapKit

extension Chain where Origin: UIView {
	@discardableResult
	func constraint(_ maker: (ConstraintMaker) -> Void) -> Chain {
		origin.snp.makeConstraints(maker)
		return self
	}
	
	func updateConstraint(_ maker: (ConstraintMaker) -> Void) -> Chain {
		origin.snp.updateConstraints(maker)
		return self
	}

}
