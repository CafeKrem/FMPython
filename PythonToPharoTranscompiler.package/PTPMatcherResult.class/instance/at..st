accessing
at: aKey
	^ [ context at: aKey ]
		on: Error
		do: [ nil ]