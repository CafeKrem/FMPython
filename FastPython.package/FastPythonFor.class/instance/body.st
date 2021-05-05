accessing
body
	"Relation named: #body type: #FASTStatement opposite: #parentForBody"

	<generated>
	<derived>
	<FMProperty: #body type: #FASTStatement opposite: #parentForBody>
	^ self attributeAt: #body ifAbsentPut: [ FMMultivalueLink on: self opposite: #parentForBody: ]