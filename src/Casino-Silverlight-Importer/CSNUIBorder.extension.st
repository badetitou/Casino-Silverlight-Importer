Extension { #name : #CSNUIBorder }

{ #category : #'*Casino-Silverlight-Importer' }
CSNUIBorder class >> silverCanHandle: anElement [
	^ false "anElement name = 'Border'"
]

{ #category : #'*Casino-Silverlight-Importer' }
CSNUIBorder class >> silverNewInstanceFor: anElement [
	| widget |
	widget := super silverNewInstanceFor: anElement.
	widget
		addAttribute:
			(CSNUIClass new
				attributeValue: 'box box-body';
				yourself).
	^ widget
]
