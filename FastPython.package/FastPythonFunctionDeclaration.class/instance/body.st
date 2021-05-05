accessing
body
	"Relation named: #body type: #FASTStatement opposite: #functionDeclaration"

	<generated>
	<derived>
	<FMProperty: #body type: #FASTStatement opposite: #functionDeclaration>
	^ self attributeAt: #body ifAbsentPut: [ FMMultivalueLink on: self opposite: #functionDeclaration: ]