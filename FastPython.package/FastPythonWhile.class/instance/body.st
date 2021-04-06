accessing
body
	"Relation named: #body type: #FASTStatement opposite: #while"

	<generated>
	<derived>
	<FMProperty: #body type: #FASTStatement opposite: #while>
	^ self attributeAt: #body ifAbsentPut: [ FMMultivalueLink on: self opposite: #while: ]