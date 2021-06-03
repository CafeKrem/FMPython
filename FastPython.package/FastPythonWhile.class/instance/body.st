accessing
body
	"Relation named: #body type: #FASTTStatement opposite: #while"

	<generated>
	<derived>
	<FMProperty: #body type: #FASTTStatement opposite: #while>
	^ self attributeAt: #body ifAbsentPut: [ FMMultivalueLink on: self opposite: #while: ]