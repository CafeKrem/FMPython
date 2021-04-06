accessing
sModule: anObject

	<generated>
	self attributeAt: #sModule put: (FMMultivalueLink on: self update: #fuctionImported from: self sModule to: anObject).