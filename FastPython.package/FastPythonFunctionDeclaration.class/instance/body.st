accessing
body
	"Relation named: #body type: #FASTTStatement opposite: #functionDeclaration"

	<generated>
	<derived>
	<FMProperty: #body type: #FASTTStatement opposite: #functionDeclaration>
	^ self attributeAt: #body ifAbsentPut: [ FMMultivalueLink on: self opposite: #functionDeclaration: ]