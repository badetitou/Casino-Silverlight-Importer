Extension { #name : #CSNUIRelativeHeight }

{ #category : #'*Casino-Silverlight-Importer' }
CSNUIRelativeHeight class >> silverCanHandle: anElement for: aWidget [
	^ #Height = anElement name
		and: [ (anElement value endsWith: '%') ]
]
