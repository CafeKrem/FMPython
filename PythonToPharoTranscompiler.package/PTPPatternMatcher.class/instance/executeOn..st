execute
executeOn: aModel
	^ (matchingStrategy
		lookAtPattern: from
		on: aModel
		actionBlock: product) isMatch