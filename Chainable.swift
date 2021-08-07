//
//  Chainable.swift
//  StoryBear
//
//  Created by mingyun.cho on 2020/02/06.
//  Copyright © 2020 Devsisters. All rights reserved.
//

import Foundation

class Chain<Origin> {
	var origin: Origin
	
	init(origin: Origin) {
		self.origin = origin
	}
}

protocol Chainable {}

extension Chainable {
	var chain: Chain<Self> {
		return Chain(origin: self)
	}
}
