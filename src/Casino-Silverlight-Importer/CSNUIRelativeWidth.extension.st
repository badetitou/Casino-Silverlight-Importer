Extension { #name : #CSNUIRelativeWidth }

{ #category : #'*Casino-Silverlight-Importer' }
CSNUIRelativeWidth class >> silverCanHandle: anElement for: aWidget [
	^ #Width = anElement name and: [ anElement value endsWith: '%' ]
]
