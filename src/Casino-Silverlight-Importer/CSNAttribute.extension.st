Extension { #name : #CSNAttribute }

{ #category : #'*Casino-Silverlight-Importer' }
CSNAttribute class >> silverCanHandle: anElement for: aWidget [
	^ false
]

{ #category : #'*Casino-Silverlight-Importer' }
CSNAttribute class >> silverCreateAttributeFor: aWidget from: anElement [
	^ (self allSubclasses
		detect: [ :first | first silverCanHandle: anElement for: aWidget ]
		ifNone: [ ^ CSNAttribute silverNewInstanceFor: aWidget from: anElement ])
		silverNewInstanceFor: aWidget from: anElement
]

{ #category : #'*Casino-Silverlight-Importer' }
CSNAttribute class >> silverNewInstanceFor: aWidget from: anElement [
	^ self new
		name: anElement name;
		attributeValue: anElement value asLowercase;
		widget: aWidget;
		yourself
]
