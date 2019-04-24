Extension { #name : #CSNUIPanel }

{ #category : #'*Casino-Silverlight-Importer' }
CSNUIPanel class >> silverCanHandle: anElement [
	^ anElement name endsWith: 'Panel'
]

{ #category : #'*Casino-Silverlight-Importer' }
CSNUIPanel class >> silverNewInstanceFor: anElement [
	| widget |
	widget := super silverNewInstanceFor: anElement.
	widget
		addAttribute:
			(CSNUIClass new
				attributeValue: 'stackpanel';
				yourself).
	^ widget
]
