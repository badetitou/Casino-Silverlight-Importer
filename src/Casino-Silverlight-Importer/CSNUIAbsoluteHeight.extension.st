Extension { #name : #CSNUIAbsoluteHeight }

{ #category : #'*Casino-Silverlight-Importer' }
CSNUIAbsoluteHeight class >> silverCanHandle: anElement for: aWidget [
	^ #Height = anElement name
		and: [ (anElement value endsWith: '%') not ]
]
