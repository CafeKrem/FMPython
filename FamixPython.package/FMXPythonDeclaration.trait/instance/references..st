accessing
references: anObject

	<generated>
	self attributeAt: #references put: (FMMultivalueLink on: self update: #definition from: self references to: anObject).