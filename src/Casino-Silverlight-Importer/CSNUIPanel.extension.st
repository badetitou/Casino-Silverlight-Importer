Extension { #name : #CSNUIPanel }

{ #category : #'*Casino-Silverlight-Importer' }
CSNUIPanel >> checkAttributes [
self attributes detect: [:attribute | attribute name = 'HorizontalAlignment' ]
ifNone: [ self addAttribute: (CSNUIClass new attributeValue: 'fit'; name: 'HorizontalAlignment'; yourself) ]
	
]

{ #category : #'*Casino-Silverlight-Importer' }
CSNUIPanel class >> silverCanHandle: anElement [
		
	^ #('Panel' 'DataField')
		anySatisfy: [ :each | anElement name endsWith: each ]
]

{ #category : #'*Casino-Silverlight-Importer' }
CSNUIPanel class >> silverNewInstanceFor: anElement [
	| widget |
	widget := super silverNewInstanceFor: anElement.
	'toolkit:DataField' = anElement name
		ifTrue: [ widget addWidget: CSNUIParagraph new ].
	widget
		addAttribute:
			(CSNUIClass new
				attributeValue: 'stackpanel';
				yourself).
	^ widget
]
