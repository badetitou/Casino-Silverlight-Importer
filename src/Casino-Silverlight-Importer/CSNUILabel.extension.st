Extension { #name : #CSNUILabel }

{ #category : #'*Casino-Silverlight-Importer' }
CSNUILabel class >> silverCanHandle: anElement for: aWidget [
	^ #('Title') includes: anElement name
]
