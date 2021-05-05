accessing
body
	"Relation named: #body type: #FASTStatement opposite: #parentIfBody"

	<generated>
	<derived>
	<FMProperty: #body type: #FASTStatement opposite: #parentIfBody>
	^ self attributeAt: #body ifAbsentPut: [ FMMultivalueLink on: self opposite: #parentIfBody: ]