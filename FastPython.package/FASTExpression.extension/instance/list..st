*FastPython-accessing
list: anObject

	<generated>
	self attributeAt: #list put: (FMMultivalueLink on: self update: #contents from: self list to: anObject).