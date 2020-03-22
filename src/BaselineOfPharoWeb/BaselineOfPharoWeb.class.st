"
WIP Notes :

""	not load compared to old PharoWeb : XMLWriter
	group: 'default' with: #('Seaside3' 'Bootstrap' 'Magritte3' 'BootstrapMagritte' 'Teapot' 'XMLParser' 'XMLWriter' 'Mustache' 'NeoJSON' 'Ston' 'ZincHTTPComponents' 'Voyage' 'Garage')	
""


		spec project: 'BootstrapMagritte' with: [
				spec
					className: #ConfigurationOfBootstrapMagritte;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/TorstenBergmann/BootstrapMagritte/main/' ];
		
			baseline: 'Teapot' with: [ 
				spec
					loads: #('Tools');
					repository: 'github://zeroflag/Teapot:master/source' ];
			
			baseline: 'XMLParser' with: [ spec repository: 'github://svenvc/XML-Support-Pharo:master' ];	
			baseline: 'Ston' with: [ spec repository: 'github://svenvc/ston:master/repository' ];
			baseline: 'NeoJSON' with: [ spec repository: 'github://svenvc/NeoJSON:master/repository' ];
			baseline: 'ZincHTTPComponents' with: [ 
				spec 
					loads: #('Core' 'Zodiac' 'WebSocket' 'REST');
					repository: 'github://svenvc/zinc:master/repository' ];
								
			baseline: 'Mustache' with: [ 
				spec 
					loads: #('Core');
					repository: 'github://noha/mustache:master/repository' ];
			
			baseline: 'Voyage' with: [ 
				spec 
					loads: #('mongo');
					repository: 'github://pharo-nosql/voyage:master/mc' ];

			baseline: 'Garage' with: [ spec repository: 'github://pharo-rdbms/garage:master' ]
					
		""spec
			baseline: 'Parasol'
			with: [ spec
				loads: 'tests';
				repository: 'github://daniapq/Parasol:master/repository' ].""

		""spec
			baseline: 'MaterialDesignLite'
			with: [ spec repository: 'github://daniapq/MaterialDesignLite:master/src' ].""
	
	]
		
	
"
Class {
	#name : #BaselineOfPharoWeb,
	#superclass : #BaselineOf,
	#category : #BaselineOfPharoWeb
}

{ #category : #baselines }
BaselineOfPharoWeb >> baseline: spec [
	<baseline>
	
	spec for: #common do: [	
		spec
			baseline: 'Seaside3' with: [ 
				spec
					loads: #('Development' 'Examples' 'JQuery' 'Zinc');
					repository: 'github://SeasideSt/Seaside:v3.4.x/repository' ].
		
		spec	baseline: 'Bootstrap4' with: [ 
			"Loads Seaside main branch but I want to stick with v3.4.x"
				spec 
					loads: #('Core' 'Examples');
					repository: 'github://astares/Seaside-Bootstrap4:master/src'
		].
		
		"self magritte3: spec.
		self bootstrapMagritte: spec.
		
		self dataFormat: spec.
		self zinc: spec.	
		self teapot: spec.
		self mustache: spec.
		self voyage: spec"	
			
	]
]

{ #category : #dependencies }
BaselineOfPharoWeb >> bootstrapMagritte: spec [
	
	spec	project: 'BootstrapMagritte' with: [
		spec
			className: #ConfigurationOfBootstrapMagritte;
			versionString: #'stable';
			repository: 'http://smalltalkhub.com/mc/TorstenBergmann/BootstrapMagritte/main/' ]
]

{ #category : #dependencies }
BaselineOfPharoWeb >> dataFormat: spec [

	spec
		baseline: 'XMLParser' with: [ spec repository: 'github://svenvc/XML-Support-Pharo:master' ];	
		baseline: 'Ston' with: [ spec repository: 'github://svenvc/ston:master/repository' ];
		baseline: 'NeoJSON' with: [ spec repository: 'github://svenvc/NeoJSON:master/repository' ]

]

{ #category : #dependencies }
BaselineOfPharoWeb >> magritte3: spec [

	spec for: #(#'pharo7.x' #'pharo8.x') do: [
		spec baseline: 'Magritte' with: [ 
			spec
				loads: #('Seaside');
				repository: 'github://magritte-metamodel/magritte:82c0c9a87f15fe2d01e233603fed0c6a396e2ad2/source' ]
	].
	spec for: #(#'pharo9.x') do: [
		spec baseline: 'Magritte' with: [ 
			spec
				loads: #('Seaside');
				repository: 'github://magritte-metamodel/magritte:master/source' ]
	].
]

{ #category : #dependencies }
BaselineOfPharoWeb >> mustache: spec [

	spec baseline: 'Mustache' with: [ 
		spec 
			loads: #('Core');
			repository: 'github://noha/mustache:master/repository' ]
]

{ #category : #dependencies }
BaselineOfPharoWeb >> teapot: spec [

	spec baseline: 'Teapot' with: [ 
		spec
			loads: #('Tools');
			repository: 'github://zeroflag/Teapot:master/source' ]
]

{ #category : #dependencies }
BaselineOfPharoWeb >> voyage: spec [	

	spec baseline: 'Voyage' with: [ 
		spec 
			loads: #('mongo');
			repository: 'github://pharo-nosql/voyage:master/mc' ]
]

{ #category : #dependencies }
BaselineOfPharoWeb >> zinc: spec [

	spec	baseline: 'ZincHTTPComponents' with: [ 
		spec 
			loads: #('Core' 'Zodiac' 'WebSocket' 'REST');
			repository: 'github://svenvc/zinc:master/repository' ]
	
]
