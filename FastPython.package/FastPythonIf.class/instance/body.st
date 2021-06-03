accessing
body
	"Relation named: #body type: #FASTTStatement opposite: #parentIfBody"

	<generated>
	<derived>
	<FMProperty: #body type: #FASTTStatement opposite: #parentIfBody>
	^ self attributeAt: #body ifAbsentPut: [ FMMultivalueLink on: self opposite: #parentIfBody: ]