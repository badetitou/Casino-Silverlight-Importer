Class {
	#name : #BaselineOfCasinoSilverlightImporter,
	#superclass : #BaselineOf,
	#category : #BaselineOfCasinoSilverlightImporter
}

{ #category : #baselines }
BaselineOfCasinoSilverlightImporter >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ self defineDependencies: spec.
			self definePackages: spec.
			self defineGroups: spec ]
]

{ #category : #baselines }
BaselineOfCasinoSilverlightImporter >> defineDependencies: spec [
	spec
		baseline: 'BLToolkit'
		with: [ spec
				loads: 'core-extented';
				repository: 'github://badetitou/BL-Toolkit:master/src' ].
	spec
		package: 'PetitXml'
		with:
			[ spec repository: 'http://smalltalkhub.com/mc/Moose/PetitParser/main' ]
]

{ #category : #baselines }
BaselineOfCasinoSilverlightImporter >> defineGroups: spec [
	spec group: 'default' with: #('Casino-Silverlight-Importer')
]

{ #category : #baselines }
BaselineOfCasinoSilverlightImporter >> definePackages: spec [
	spec
		repository: 'https://github.com/badetitou/Casino-Silverlight-Importer';
		package: 'BaselineOfCasinoSilverlightImporter';
		package: 'Casino-Silverlight-Importer'
			with: [ spec requires: #('BLToolkit' 'PetitXml') ]
]
