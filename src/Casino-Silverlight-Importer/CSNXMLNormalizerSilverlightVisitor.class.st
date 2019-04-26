Class {
	#name : #CSNXMLNormalizerSilverlightVisitor,
	#superclass : #XMLNodeVisitor,
	#category : #'Casino-Silverlight-Importer'
}

{ #category : #visiting }
CSNXMLNormalizerSilverlightVisitor >> normalizeHeightAttributeFor: anElement [
	| numberOfHeightStar |
	anElement hasChildren
		ifFalse: [ ^ self ].
	numberOfHeightStar := 0.
	anElement nodes
		reject: #isStringNode
		thenDo: [ :child | 
			| heightValue |
			heightValue := child attributeAt: 'Height' ifAbsent: '0'.
			(heightValue endsWith: '*')
				ifTrue: [ (heightValue substrings: '*')
						ifEmpty: [ numberOfHeightStar := numberOfHeightStar + 1 ]
						ifNotEmpty: [ :heightValueNumber | 
							numberOfHeightStar := numberOfHeightStar
								+ heightValueNumber first asInteger ] ] ].
	numberOfHeightStar = 0
		ifTrue: [ ^ self ].
	anElement nodes
		reject: #isStringNode
		thenDo: [ :child | child normalizeHeight: (100 / numberOfHeightStar) asInteger  ]
]

{ #category : #visiting }
CSNXMLNormalizerSilverlightVisitor >> normalizeWidthAttributeFor: anElement [
	| numberOfWidthStar |
	anElement hasChildren
		ifFalse: [ ^ self ].
	numberOfWidthStar := 0.
	anElement nodes
		reject: #isStringNode
		thenDo: [ :child | 
			| widthValue |
			widthValue := child attributeAt: 'Width' ifAbsent: '0'.
			(widthValue endsWith: '*')
				ifTrue: [ (widthValue substrings: '*')
						ifEmpty: [ numberOfWidthStar := numberOfWidthStar + 1 ]
						ifNotEmpty: [ :widthValueNumber | 
							numberOfWidthStar := numberOfWidthStar
								+ widthValueNumber first asInteger ] ] ].
	numberOfWidthStar = 0
		ifTrue: [ ^ self ].
	anElement nodes
		reject: #isStringNode
		thenDo: [ :child | child normalizeWidth: (100 / numberOfWidthStar) asInteger ]
]

{ #category : #visiting }
CSNXMLNormalizerSilverlightVisitor >> visitElement: anElement [
	self normalizeWidthAttributeFor: anElement.
	self normalizeHeightAttributeFor: anElement.
	super visitElement: anElement
]
