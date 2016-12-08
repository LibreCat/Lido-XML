package Lido::XML::LIDO_1_0::lido_v1;

use Moo;

our $VERSION = '0.06';

sub content {
	my @lines = <DATA>;
	join '' , @lines;
}

1;
__DATA__
<?xml version="1.0" encoding="UTF-8"?>
<xsd:schema xmlns:doc="http://www.mda.org.uk/spectrumXML/Documentation" xmlns:gml="http://www.opengis.net/gml" xmlns:lido="http://www.lido-schema.org" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xml="http://www.w3.org/XML/1998/namespace" targetNamespace="http://www.lido-schema.org" elementFormDefault="qualified" attributeFormDefault="qualified">
	<!--  
	xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
		xx LIDO - Lightweight Information Describing Objects
		xx - XML Schema for Contributing Content to Cultural Heritage Repositories -
		xx Version 1.0
		xx
		xx ICOM-CIDOC Working Group Data Harvesting and Interchange
		xx 
		xx ARTstor, Collections Trust, Deutscher Museumsbund - Fachgruppe Dokumentation,
		xx Deutsches Dokumentationszentrum für Kunstgeschichte - Bildarchiv Foto Marburg,
		xx digiCULT-Verbund eG, Institut für Museumsforschung (SMB-PK), J. Paul Getty Trust,
		xx Zuse-Institut Berlin.
		xx 
		xx LIDO v1.0
		xx 
		xx Copyright 2009-2010 ICOM-CIDOC for the Data Harvesting and Interchange Working Group. 
		xx 
		xx LIDO current version: 2010-11-08: http://www.lido-schema.org/schema/v1.0/lido-v1.0.xsd
		xx LIDO specification document: 2010-11-08: http://www.lido-schema.org/schema/v1.0/lido-v1.0-specification.pdf
		xx
		xx Prepared for CIDOC Working Group Data Harvesting and Interchange, CDWA Lite/museumdat Working Group, 
		xx Collections Trust and Deutscher Museumsbund - Fachgruppe Dokumentation by: 
		xx Erin Coburn - The Metropolitan Museum of Art, 
		xx Richard Light, 
		xx Gordon McKenna - Collections Trust, 
		xx Regine Stein - Deutsches Dokumentationszentrum für Kunstgeschichte Bildarchiv Foto Marburg, 
		xx Axel Vitzthum - digiCULT-Verbund eG
		xx
		xx 2010-11-08: version 1.0. This schema version provides a common, single schema for contributing content to cultural 
		xx heritage repositories. It meets the requirements articulated by CDWA Lite, museumdat and SPECTRUM.
		xx
		xx It is a substantial redesign and enhancement of the CDWA Lite and museumdat schemas based on 
		xx recommendations of the CDWA Lite/museumdat Working Group, community feedback and further CIDOC-CRM 
		xx analysis. It includes additional concepts to meet SPECTRUM requirements.
		xx
		xx The schema supersedes both the CDWA Lite v1.1 schema and the museumdat v1.0 schema and serves as the 
		xx harvesting schema for contributing museum information for resource discovery.
		xx
		xx For most recent information on LIDO please refer to: http://www.lido-schema.org
		xx 
		xx LIDO name and logo courtesy Rob Lancefield.
		xx 
		xx LIDO XML schemas that are made available on the LIDO Web site (see http://www.lidoschema.org) are licensed 
		xx under a Creative Commons Attribution-ShareAlike 3.0License. You must include the following notice in the software 
		xx and its documentation:
		xx 
		xx "Portions of this software may use a LIDO XML schema 
		xx Copyright (c) 2009-2010 ICOM-CIDOC for the Data Harvesting and Interchange Working Group. 
		xx These are licensed under the Creative Commons 3.0 Attribution-ShareAlike license."
		xx 
		xx Whenever possible you should include links to LIDO (http://www.lido-schema.org) and to the license 
		xx (http://creativecommons.org/licenses/by-sa/3.0/) as indicated in the notice above.
		xx
	xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
-->
	<xsd:import namespace="http://www.w3.org/XML/1998/namespace" schemaLocation="http://www.w3.org/2001/03/xml.xsd"/>
	<xsd:import namespace="http://www.opengis.net/gml" schemaLocation="http://schemas.opengis.net/gml/3.1.1/base/feature.xsd"/>
	<xsd:complexType name="actorComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: Contains identifying and indexing actor information.</xsd:documentation>
			<xsd:documentation>How to record: Data values of the type attribute: person, corporation, family, group. </xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="actorID" type="lido:identifierComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: A unique identifier for the actor.</xsd:documentation>
					<xsd:documentation>How to record: Preferably taken from a published authority file.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="nameActorSet" type="lido:appellationComplexType" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: A wrapper for name elements.</xsd:documentation>
					<xsd:documentation>How to record: if there exists more than one name for a single actor, repeat Name Actor Set. </xsd:documentation>
					<xsd:documentation>Notes: Indicates names, appellations, or other identifiers assigned to an individual, group of people, firm or other corporate body, or other entity.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="nationalityActor" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: National or cultural affiliation of the person or corporate body. </xsd:documentation>
					<xsd:documentation>How to record: Preferably taken from a published controlled vocabulary. </xsd:documentation>
				</xsd:annotation>
				<xsd:complexType>
					<xsd:complexContent>
						<xsd:extension base="lido:conceptComplexType">
							<xsd:attribute ref="lido:sortorder"/>
						</xsd:extension>
					</xsd:complexContent>
				</xsd:complexType>
			</xsd:element>
			<xsd:element name="vitalDatesActor" type="lido:dateComplexType" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation>Definition: The lifespan of the person or the existence of the corporate body or group. </xsd:documentation>
					<xsd:documentation>How to record: For individuals, record birth date as earliest and death date as latest date, estimated where necessary. For a corporate body or group, record the dates of founding and dissolution.Although this is not a mandatory field the use of birth date and death date is strongly recommended for unambigous identification of individuals. The type attribute of earliest and latest date may specify for indiviudals, if birth and death dates or if dates of activity are recorded. Data values for type attribute may include: birthDate, deathDate, estimatedDate. </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="genderActor" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: The sex of the individual. </xsd:documentation>
					<xsd:documentation>How to record: Data values: male, female, unknown, not applicable.Repeat this element for language variants only.</xsd:documentation>
					<xsd:documentation>Notes: Not applicable for corporate bodies. </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
		<xsd:attribute ref="lido:type">
			<xsd:annotation>
				<xsd:documentation>Definition: Indicates if the actor is an individual, a group of individuals, a family or a corporation (firm or other corporate body).</xsd:documentation>
				<xsd:documentation>How to record: Data values: person, group, family, corporation.</xsd:documentation>
			</xsd:annotation>
		</xsd:attribute>
	</xsd:complexType>
	<xsd:complexType name="actorInRoleComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: Describes an actor with role and (if necessary) attributions related to the event the actor participated in.</xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="actor" type="lido:actorComplexType">
				<xsd:annotation>
					<xsd:documentation>Definition: Contains structured identifying and indexing actor information.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="roleActor" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: Role of the Actor in the event. </xsd:documentation>
					<xsd:documentation>How to record: Preferably taken from a published controlled vocabulary. </xsd:documentation>
				</xsd:annotation>
				<xsd:complexType>
					<xsd:complexContent>
						<xsd:extension base="lido:conceptComplexType">
							<xsd:attribute ref="lido:sortorder"/>
						</xsd:extension>
					</xsd:complexContent>
				</xsd:complexType>
			</xsd:element>
			<xsd:element name="attributionQualifierActor" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: A qualifier used when the attribution is uncertain, is in dispute, when there is more than one actor, when there is a former attribution, or when the attribution otherwise requires explanation.</xsd:documentation>
					<xsd:documentation>How to record: Example values: attributed to, studio of, workshop of, atelier of, office of, assistant of, associate of, pupil of, follower of, school of, circle of, style of, after copyist of, manner of...</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="extentActor" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: Extent of the actor's participation in the event, if there are several actors.</xsd:documentation>
					<xsd:documentation>How to record: Example values: design, execution, with additions by, figures, renovation by, predella, embroidery, cast by, printed by, ...</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:complexType name="actorInRoleSetComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: Wrapper for display and index elements for an actor with role information (participating in an event). For multiple actors repeat the element.</xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="displayActorInRole" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: Display element for an actor coupled with its specific role, corresponding to the following actor element.</xsd:documentation>
					<xsd:documentation>How to record: May include name, brief biographical information, and roles (if necessary) of the named actor, presented in a syntax suitable for display to the end-user and including any necessary indications of uncertainty, ambiguity, and nuance. If there is no known actor, make a reference to the presumed culture or nationality of the unknown actor.May be concatenated from the respective Actor element. The name should be in natural order, if possible, although inverted order is acceptable. Include nationality and life dates. For unknown actors, use e.g.: "unknown," "unknown Chinese," "Chinese," or "unknown 15th century Chinese."Repeat this element only for language variants.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="actorInRole" type="lido:actorInRoleComplexType" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation>Definition: Describes an actor with role and (if necessary) attributions in a structured way, consisting of the sub-elements actor, its role, attribution and extent.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:complexType name="actorSetComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: Wrapper for display and index elements for one actor. For multiple actors repeat this element.</xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="displayActor" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: Display element for one actor, corresponding to the following actor element.</xsd:documentation>
					<xsd:documentation>How to record: May include name, brief biographical information of the named actor, presented in a syntax suitable for display to the end-user. If there is no known actor, make a reference to the presumed culture or nationality of the unknown actor.May be concatenated from the respective Actor element. The name should be in natural order, if possible, although inverted order is acceptable. Include nationality and life dates. For unknown actors, use e.g.: "unknown," "unknown Chinese," "Chinese," or "unknown 15th century Chinese."Repeat this element only for language variants.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="actor" type="lido:actorComplexType" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation>Definition: Describes and identifies an actor, i.e. a person, corporation, family or group, containing structured sub-elements for indexing and identification references. </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:attribute name="addedSearchTerm" default="no">
		<xsd:annotation>
			<xsd:documentation>How to record: Has the two values: "yes" or "no". &#8221;yes&#8221; indicates, that the term is an additional term which is derived from an underlying controlled vocabulary (eg. synonym, generic term, superordinate term) and should be used only for retrieval."no" is default.</xsd:documentation>
		</xsd:annotation>
		<xsd:simpleType>
			<xsd:restriction base="xsd:string">
				<xsd:enumeration value="yes"/>
				<xsd:enumeration value="no"/>
			</xsd:restriction>
		</xsd:simpleType>
	</xsd:attribute>
	<xsd:element name="administrativeMetadata" type="lido:administrativeMetadataComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: Holds the administrative metadata for an object / work record. </xsd:documentation>
			<xsd:documentation>How to record: The attribute xml:lang is mandatory and specifies the language of the administrative metadata.For fully multi-lingual resources, repeat this element once for each language represented.If only a few data fields (e.g. title, creditline) are provided in more than one language, the respective text elements may be repeated specifying the lang attribute on the text level.</xsd:documentation>
		</xsd:annotation>
	</xsd:element>
	<xsd:complexType name="administrativeMetadataComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: Holds the administrative metadata for an object / work record. </xsd:documentation>
			<xsd:documentation>How to record: The attribute xml:lang is mandatory and specifies the language of the administrative metadata.For fully multi-lingual resources, repeat this element once for each language represented.If only a few data fields (e.g. title, creditline) are provided in more than one language, the respective text elements may be repeated specifying the lang attribute on the text level.</xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element ref="lido:rightsWorkWrap" minOccurs="0"/>
			<xsd:element ref="lido:recordWrap"/>
			<xsd:element ref="lido:resourceWrap" minOccurs="0"/>
		</xsd:sequence>
		<xsd:attribute ref="xml:lang" use="required"/>
	</xsd:complexType>
	<xsd:complexType name="appellationComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: Wrapper for a name of an entity, and its related information.</xsd:documentation>
			<xsd:documentation>How to record: If there is more than one name, repeat the appellation element.</xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="appellationValue" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: Appellations, e.g. titles, identifying phrases, or names given to an item, but also name of a person or corporation, also place name etc. </xsd:documentation>
					<xsd:documentation>How to record: Repeat this element only for language variants.</xsd:documentation>
				</xsd:annotation>
				<xsd:complexType>
					<xsd:simpleContent>
						<xsd:extension base="xsd:string">
							<xsd:attribute ref="lido:pref"/>
							<xsd:attribute ref="xml:lang"/>
							<xsd:attribute ref="lido:encodinganalog"/>
							<xsd:attribute ref="lido:label"/>
						</xsd:extension>
					</xsd:simpleContent>
				</xsd:complexType>
			</xsd:element>
			<xsd:element name="sourceAppellation" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: The source for the appellation, generally a published source.</xsd:documentation>
				</xsd:annotation>
				<xsd:complexType>
					<xsd:simpleContent>
						<xsd:extension base="xsd:string">
							<xsd:attribute ref="xml:lang"/>
							<xsd:attribute ref="lido:encodinganalog"/>
							<xsd:attribute ref="lido:label"/>
						</xsd:extension>
					</xsd:simpleContent>
				</xsd:complexType>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:element name="classificationWrap">
		<xsd:annotation>
			<xsd:documentation>Definition: A wrapper for classification information.</xsd:documentation>
		</xsd:annotation>
		<xsd:complexType>
			<xsd:sequence>
				<xsd:element name="classification" minOccurs="0" maxOccurs="unbounded">
					<xsd:annotation>
						<xsd:documentation>Definition: Concepts used to categorize an object / work by grouping it together with others on the basis of similar characteristics.</xsd:documentation>
						<xsd:documentation>How to record: The category belongs to a systematic scheme (classification) which groups objects of similar characteristics according to uniform aspects. This grouping / classification may be done according to material, form, shape, function, region of origin, cultural context, or historical or stylistic period. In addition to this systematic grouping it may also be done according to organizational divisions within a museum (e.g., according to the collection structure of a museum). If the object / work is assigned to multiple classifications, repeat this element.Preferably taken from a published controlled vocabulary. </xsd:documentation>
					</xsd:annotation>
					<xsd:complexType>
						<xsd:complexContent>
							<xsd:extension base="lido:conceptComplexType">
								<xsd:attribute ref="lido:type"/>
								<xsd:attribute ref="lido:sortorder"/>
							</xsd:extension>
						</xsd:complexContent>
					</xsd:complexType>
				</xsd:element>
			</xsd:sequence>
		</xsd:complexType>
	</xsd:element>
	<xsd:complexType name="conceptComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: Set for identifiers and terms of a concept.</xsd:documentation>
			<xsd:documentation>How to record: A concept describes a conceptual resource. Concepts are organized in concept schemes like thesauri, classification schemes, taxonomies, subject-heading systems, or any other type of structured controlled vocabulary. See also SKOS specifications at http://www.w3.org/2004/02/skos/</xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="conceptID" type="lido:identifierComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: A unique identifier for the concept.</xsd:documentation>
					<xsd:documentation>How to record: Preferably taken from and linking to a published controlled vocabulary.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="term" type="lido:termComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: A name for the referred concept, used for indexing.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:complexType name="dateComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: A wrapper for date specification.</xsd:documentation>
			<xsd:documentation>How to record: This may be a period or a set of years in the proleptic Gregorian calendar delimiting the span of time. If it is an exact date, possibly with time, repeat the same date (and time) in earliest and latest date. For ca. and other uncertain or approximate dates, estimate the greatest possible span for indexing. Uncertainty can be indicated in the type attributes of earliest and latest date, and can be characterized more precisely in the display element.</xsd:documentation>
			<xsd:documentation>Notes: Format of the data values in sub-elements earliestDate and LatestDate is according to ISO 8601. This includes date and time specification. </xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="earliestDate" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation>Definition: A year or exact date that broadly delimits the beginning of an implied date span. </xsd:documentation>
					<xsd:documentation>How to record: General format: YYYY[-MM[-DD]]Format is according to ISO 8601. This may include date and time specification. </xsd:documentation>
				</xsd:annotation>
				<xsd:complexType>
					<xsd:simpleContent>
						<xsd:extension base="xsd:string">
							<xsd:attribute ref="lido:type">
								<xsd:annotation>
									<xsd:documentation>Definition: Specification of the date, e.g. if it is an exact or an estimated earliest date.</xsd:documentation>
									<xsd:documentation>How to record: Data values may be: exactDate, estimatedDate. </xsd:documentation>
								</xsd:annotation>
							</xsd:attribute>
							<xsd:attribute ref="lido:source"/>
							<xsd:attribute ref="lido:encodinganalog"/>
							<xsd:attribute ref="lido:label"/>
						</xsd:extension>
					</xsd:simpleContent>
				</xsd:complexType>
			</xsd:element>
			<xsd:element name="latestDate" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation>Definition: A year or exact date that broadly delimits the end of an implied date span.</xsd:documentation>
					<xsd:documentation>How to record: General format: YYYY[-MM[-DD]]Format is according to ISO 8601. This may include date and time specification. </xsd:documentation>
				</xsd:annotation>
				<xsd:complexType>
					<xsd:simpleContent>
						<xsd:extension base="xsd:string">
							<xsd:attribute ref="lido:type">
								<xsd:annotation>
									<xsd:documentation>Definition: Specification of the date, e.g. if it is an exact or an estimated latest date.</xsd:documentation>
									<xsd:documentation>How to record: Data values may be: exactDate, estimatedDate. </xsd:documentation>
								</xsd:annotation>
							</xsd:attribute>
							<xsd:attribute ref="lido:source"/>
							<xsd:attribute ref="lido:encodinganalog"/>
							<xsd:attribute ref="lido:label"/>
						</xsd:extension>
					</xsd:simpleContent>
				</xsd:complexType>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:complexType name="dateSetComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: Wrapper for display and index elements for date information.</xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="displayDate" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: Display element for a date specification, corresponding to the following date element.</xsd:documentation>
					<xsd:documentation>How to record: It is a concise description of the date, presented in a syntax suitable for display to the end-user and including any necessary indications of uncertainty, ambiguity, and nuance.Repeat this element only for language variants.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="date" type="lido:dateComplexType" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation>Definition: Contains a date specification by providing a set of years as earliest and latest date delimiting the respective span of time.This may be a period or a set of years in the proleptic Gregorian calendar delimiting the span of time. If it is an exact date, possibly with time, repeat the same date (and time) in earliest and latest date. </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:element name="descriptiveMetadata" type="lido:descriptiveMetadataComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: Holds the descriptive metadata of an object record. </xsd:documentation>
			<xsd:documentation>How to record: The attribute xml:lang is mandatory and specifies the language of the descriptive metadata.For fully multi-lingual resources, repeat this element once for each language represented.If only a few data fields (e.g. title) are provided in more than one language, the respective text elements may be repeated specifying the lang attribute on the text level.</xsd:documentation>
		</xsd:annotation>
	</xsd:element>
	<xsd:complexType name="descriptiveMetadataComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: Holds the descriptive metadata of an object record. </xsd:documentation>
			<xsd:documentation>How to record: The attribute xml:lang is mandatory and specifies the language of the descriptive metadata.For fully multi-lingual resources, repeat this element once for each language represented.If only a few data fields (e.g. title) are provided in more than one language, the respective text elements may be repeated specifying the lang attribute on the text level.</xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element ref="lido:objectClassificationWrap">
				<xsd:annotation>
					<xsd:documentation>Definition: Wrapper for all classifying information about an object / work including the object's / work type and other classifications. </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element ref="lido:objectIdentificationWrap"/>
			<xsd:element ref="lido:eventWrap" minOccurs="0"/>
			<xsd:element ref="lido:objectRelationWrap" minOccurs="0"/>
		</xsd:sequence>
		<xsd:attribute ref="xml:lang" use="required"/>
	</xsd:complexType>
	<xsd:complexType name="descriptiveNoteComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: Wrapper for a description, including description identifer, descriptive note and sources.</xsd:documentation>
			<xsd:documentation>How to record: If there is more than one descriptive note, repeat this set.</xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="descriptiveNoteID" type="lido:identifierComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: Identifier for an external resource describing the entity. </xsd:documentation>
					<xsd:documentation>Notes: The referenced resource may be any kind of document, preferably web-accessible.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="descriptiveNoteValue" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: Usually a relatively brief essay-like text that describes the entity.</xsd:documentation>
					<xsd:documentation>How to record: Repeat this element only for language variants.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="sourceDescriptiveNote" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: The source for the descriptive note, generally a published source.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
		<xsd:attribute ref="lido:type"/>
		<xsd:attribute ref="lido:sortorder"/>
	</xsd:complexType>
	<xsd:element name="displayStateEditionWrap">
		<xsd:annotation>
			<xsd:documentation>Definition: A wrapper for the state and edition of the object / work. </xsd:documentation>
		</xsd:annotation>
		<xsd:complexType>
			<xsd:sequence>
				<xsd:element name="displayState" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded">
					<xsd:annotation>
						<xsd:documentation>Definition: A description of the state of the object / work. Used primarily for prints and other multiples</xsd:documentation>
						<xsd:documentation>How to record: Formulated according to rules. For State, include state identification and known states, as appropriate.Repeat this element only for language variants.</xsd:documentation>
					</xsd:annotation>
				</xsd:element>
				<xsd:element name="displayEdition" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded">
					<xsd:annotation>
						<xsd:documentation>Definition: A description of the edition of the object / work. Used primarily for prints and other multiples.</xsd:documentation>
						<xsd:documentation>How to record: Formulated according to rules. For Edition, include impression number, edition size, and edition number, or edition name, as appropriate.Repeat this element only for language variants.</xsd:documentation>
					</xsd:annotation>
				</xsd:element>
				<xsd:element name="sourceStateEdition" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded">
					<xsd:annotation>
						<xsd:documentation>Definition: The published source of the state or edition information.</xsd:documentation>
					</xsd:annotation>
				</xsd:element>
			</xsd:sequence>
		</xsd:complexType>
	</xsd:element>
	<xsd:attribute name="encodinganalog" type="xsd:string">
		<xsd:annotation>
			<xsd:documentation>How to record: Elements with data values are accompanied by the attributes encodinganalog and label to indicate the format of the data source from which the data were migrated. The attribute encodinganalog refers to the internal field label of the source database. The source format is indicated in the attribute relatedencoding of the lidoWrap </xsd:documentation>
		</xsd:annotation>
	</xsd:attribute>
	<xsd:complexType name="eventComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: Complex type for one event associated with the object / work and its related information.</xsd:documentation>
			<xsd:documentation>How to record: If there is more than one event repeat the Event Set element. </xsd:documentation>
			<xsd:documentation>Notes: [none] </xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="eventID" type="lido:identifierComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: A unique identifier for the event.</xsd:documentation>
					<xsd:documentation>How to record: Preferably taken from and linking to a published resource describing the event.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="eventType" type="lido:conceptComplexType">
				<xsd:annotation>
					<xsd:documentation>Definition: The nature of the event associated with an object / work.</xsd:documentation>
					<xsd:documentation>How to record: Controlled. Recommended: Defined list of subclasses of CRM entity E5 Event.Basic event types as recorded in sub-element term include: Acquisition, Collecting, Commisioning, Creation, Designing, Destruction, Event (non-specified), Excavation, Exhibition, Finding, Loss, Modification, Move, Part addition, Part removal, Performance, Planning, Production, Provenance, Publication, Restoration, Transformation, Type assignment, Type creation, Use.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="roleInEvent" type="lido:conceptComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: The role played within this event by the described entity. </xsd:documentation>
					<xsd:documentation>How to record: Preferably taken from a published controlled vocabulary. </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="eventName" type="lido:appellationComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: An appellation for the event, e.g. a title, identifying phrase, or name given to it.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="eventActor" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: Wrapper for display and index elements for an actor with role information (participating or being present in the event).</xsd:documentation>
					<xsd:documentation>How to record: For multiple actors repeat the element.</xsd:documentation>
				</xsd:annotation>
				<xsd:complexType>
					<xsd:complexContent>
						<xsd:extension base="lido:actorInRoleSetComplexType">
							<xsd:attribute ref="lido:sortorder"/>
						</xsd:extension>
					</xsd:complexContent>
				</xsd:complexType>
			</xsd:element>
			<xsd:element name="culture" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: Name of a culture, cultural context, people, or also a nationality. </xsd:documentation>
					<xsd:documentation>How to record: Preferably using a controlled vocabuarly. </xsd:documentation>
				</xsd:annotation>
				<xsd:complexType>
					<xsd:complexContent>
						<xsd:extension base="lido:conceptComplexType">
							<xsd:attribute ref="lido:sortorder"/>
						</xsd:extension>
					</xsd:complexContent>
				</xsd:complexType>
			</xsd:element>
			<xsd:element name="eventDate" type="lido:dateSetComplexType" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation>Definition: Date specification of the event.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="periodName" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: A period in which the event happened. </xsd:documentation>
					<xsd:documentation>How to record: Preferably taken from a published controlled vocabulary. Repeat this element only for indicating an earliest and latest period delimiting the event. </xsd:documentation>
					<xsd:documentation>Notes: Period concepts have delimiting character in time and space. </xsd:documentation>
				</xsd:annotation>
				<xsd:complexType>
					<xsd:complexContent>
						<xsd:extension base="lido:conceptComplexType">
							<xsd:attribute ref="lido:type">
								<xsd:annotation>
									<xsd:documentation>How to record: Data values may be: earliestPeriod, latestPeriod.</xsd:documentation>
								</xsd:annotation>
							</xsd:attribute>
							<xsd:attribute ref="lido:sortorder"/>
						</xsd:extension>
					</xsd:complexContent>
				</xsd:complexType>
			</xsd:element>
			<xsd:element name="eventPlace" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: Place specification of the event.</xsd:documentation>
				</xsd:annotation>
				<xsd:complexType>
					<xsd:complexContent>
						<xsd:extension base="lido:placeSetComplexType">
							<xsd:attribute ref="lido:type">
								<xsd:annotation>
									<xsd:documentation>How to record: Data values may be: moveFrom, moveTo, alternative.</xsd:documentation>
								</xsd:annotation>
							</xsd:attribute>
							<xsd:attribute ref="lido:sortorder"/>
						</xsd:extension>
					</xsd:complexContent>
				</xsd:complexType>
			</xsd:element>
			<xsd:element name="eventMethod" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: The method by which the event is carried out. </xsd:documentation>
					<xsd:documentation>How to record: Preferably taken from a published controlled vocabulary.</xsd:documentation>
					<xsd:documentation>Notes: Used e.g. for SPECTRUM Units of Information "field collection method", "acquisition method".</xsd:documentation>
				</xsd:annotation>
				<xsd:complexType>
					<xsd:complexContent>
						<xsd:extension base="lido:conceptComplexType">
							<xsd:attribute ref="lido:sortorder"/>
						</xsd:extension>
					</xsd:complexContent>
				</xsd:complexType>
			</xsd:element>
			<xsd:element name="eventMaterialsTech" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: Indicates the substances or materials used within the event (e.g. the creation of an object / work), as well as any implements, production or manufacturing techniques, processes, or methods incorporated.</xsd:documentation>
					<xsd:documentation>How to record: Will be used most often within a production event, but also others such as excavation, restoration, etc. </xsd:documentation>
				</xsd:annotation>
				<xsd:complexType>
					<xsd:complexContent>
						<xsd:extension base="lido:materialsTechSetComplexType">
							<xsd:attribute ref="lido:sortorder"/>
						</xsd:extension>
					</xsd:complexContent>
				</xsd:complexType>
			</xsd:element>
			<xsd:element name="thingPresent" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: References another object that was present at this same event.</xsd:documentation>
				</xsd:annotation>
				<xsd:complexType>
					<xsd:complexContent>
						<xsd:extension base="lido:objectSetComplexType">
							<xsd:attribute ref="lido:sortorder"/>
						</xsd:extension>
					</xsd:complexContent>
				</xsd:complexType>
			</xsd:element>
			<xsd:element name="relatedEventSet" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: References an event which is linked in some way to this event, e.g. a field trip within which this object was collected. </xsd:documentation>
				</xsd:annotation>
				<xsd:complexType>
					<xsd:complexContent>
						<xsd:extension base="lido:relatedEventSetComplexType">
							<xsd:attribute ref="lido:sortorder"/>
						</xsd:extension>
					</xsd:complexContent>
				</xsd:complexType>
			</xsd:element>
			<xsd:element name="eventDescriptionSet" type="lido:descriptiveNoteComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: Wrapper for a description of the event, including description identifer, descriptive note of the event and its sources. </xsd:documentation>
					<xsd:documentation>How to record: If there is more than one descriptive note, repeat this element.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:complexType name="eventSetComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: Wrapper for display and index elements for events (e.g. creation, find, use etc.), in which the described object participated. </xsd:documentation>
			<xsd:documentation>How to record: For multiple events repeat the element.</xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="displayEvent" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: Display element for an event, corresponding to the following event element.</xsd:documentation>
					<xsd:documentation>How to record: Repeat this element only for language variants.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="event" type="lido:eventComplexType" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation>Definition: Identifying, descriptive and indexing information for the events in which the object participated or was present at, e.g. creation, excavation, collection, and use.</xsd:documentation>
					<xsd:documentation>Notes: All information related to the creation of an object: creator, cutlural context, creation date, creation place, the material and techniques used are recorded here, qualified by the event type &#8220;creation&#8221;.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:element name="eventWrap">
		<xsd:annotation>
			<xsd:documentation>Definition: Wrapper for event sets.</xsd:documentation>
		</xsd:annotation>
		<xsd:complexType>
			<xsd:sequence>
				<xsd:element name="eventSet" minOccurs="0" maxOccurs="unbounded">
					<xsd:annotation>
						<xsd:documentation>Definition: Wrapper for the display and index elements for events (e.g. creation, find, and use), in which the object participated. </xsd:documentation>
						<xsd:documentation>How to record: For multiple events repeat the element.</xsd:documentation>
					</xsd:annotation>
					<xsd:complexType>
						<xsd:complexContent>
							<xsd:extension base="lido:eventSetComplexType">
								<xsd:attribute ref="lido:sortorder"/>
							</xsd:extension>
						</xsd:complexContent>
					</xsd:complexType>
				</xsd:element>
			</xsd:sequence>
		</xsd:complexType>
	</xsd:element>
	<xsd:attribute name="geographicalEntity" type="xsd:string">
		<xsd:annotation>
			<xsd:documentation>Definition: Qualifies the type of the given place entity according to geographical structures. </xsd:documentation>
			<xsd:documentation>How to record: Data values can include: natural environment, landscape.</xsd:documentation>
		</xsd:annotation>
	</xsd:attribute>
	<xsd:complexType name="gmlComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: Specifies the GML instantiation for georeferences.</xsd:documentation>
			<xsd:documentation>Notes: For documentation on GML refer to http://www.opengis.net/gml/. </xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element ref="gml:Point" minOccurs="0" maxOccurs="unbounded"/>
			<xsd:element ref="gml:LineString" minOccurs="0" maxOccurs="unbounded"/>
			<xsd:element ref="gml:Polygon" minOccurs="0" maxOccurs="unbounded"/>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:complexType name="identifierComplexType">
		<xsd:annotation>
			<xsd:documentation>How to record: There is no controlled list of identifier types. Suggested values include, but are not limited to the following: doi (Digital Objects Identifier)guid (Globally unique identifier)hdl (Handle)isbn (International Standard Book Number)ismn (International Standard Music Number)isrc (International Standard Recording Code)issn (International Standard Serials Number)localpermalinkpurl (Persistent Uniform Resource Locator)url (Uniform Resource Locator)urn (Uniform Resource Name)</xsd:documentation>
		</xsd:annotation>
		<xsd:simpleContent>
			<xsd:extension base="xsd:string">
				<xsd:attribute ref="lido:pref"/>
				<xsd:attribute ref="lido:type" use="required"/>
				<xsd:attribute ref="lido:source"/>
				<xsd:attribute ref="lido:encodinganalog"/>
				<xsd:attribute ref="lido:label"/>
			</xsd:extension>
		</xsd:simpleContent>
	</xsd:complexType>
	<xsd:element name="inscriptionsWrap">
		<xsd:annotation>
			<xsd:documentation>Definition: A wrapper for information about inscriptions and other marks.</xsd:documentation>
		</xsd:annotation>
		<xsd:complexType>
			<xsd:sequence>
				<xsd:element name="inscriptions" minOccurs="0" maxOccurs="unbounded">
					<xsd:annotation>
						<xsd:documentation>  Definition: A transcription or description of any distinguishing or identifying physical lettering, annotations, texts, markings, or labels that are affixed, applied, stamped, written, inscribed, or attached to the object / work, excluding any mark or text inherent in the materials of which it is made.</xsd:documentation>
						<xsd:documentation>  Notes: Record watermarks in Display Materials/Techniques.</xsd:documentation>
					</xsd:annotation>
					<xsd:complexType>
						<xsd:sequence>
							<xsd:element name="inscriptionTranscription" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded">
								<xsd:annotation>
									<xsd:documentation>Definition: Transcription of the inscription.</xsd:documentation>
									<xsd:documentation>How to record: Repeat this element only for language variants.</xsd:documentation>
								</xsd:annotation>
							</xsd:element>
							<xsd:element name="inscriptionDescription" type="lido:descriptiveNoteComplexType" minOccurs="0" maxOccurs="unbounded">
								<xsd:annotation>
									<xsd:documentation>Definition: Wrapper for a description of the inscription, including description identifer, descriptive note of the inscription and sources. </xsd:documentation>
								</xsd:annotation>
							</xsd:element>
						</xsd:sequence>
						<xsd:attribute ref="lido:type"/>
						<xsd:attribute ref="lido:sortorder"/>
					</xsd:complexType>
				</xsd:element>
			</xsd:sequence>
		</xsd:complexType>
	</xsd:element>
	<xsd:attribute name="label" type="xsd:string">
		<xsd:annotation>
			<xsd:documentation>How to record: Elements with data values are accompanied by the attributes encodinganalog and label, to indicate the format of the data source from which the data were migrated. The attribute label refers to the external label of a data field at the visible user interface. The source format is indicated in the attribute </xsd:documentation>
		</xsd:annotation>
	</xsd:attribute>
	<xsd:complexType name="legalBodyRefComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: Reference information to a legal body.</xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="legalBodyID" type="lido:identifierComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: Unambiguous identification of the institution or person referred to as legal body.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="legalBodyName" type="lido:appellationComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: Appellation of the institution or person.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="legalBodyWeblink" type="lido:webResourceComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: Weblink of the institution or person referred to as legal body. </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:element name="lido" type="lido:lidoComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: Holds the metadata of an object / work.</xsd:documentation>
			<xsd:documentation>How to record: Record attribute relatedencoding for this element only if it is the root element. If the document holds more than one LIDO record, assign the attribute to the lidoWrap element. </xsd:documentation>
			<xsd:documentation>Notes: Use this element as root for the delivery of content through OAI-PMH. </xsd:documentation>
		</xsd:annotation>
	</xsd:element>
	<xsd:complexType name="lidoComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: Holds the metadata of an object / work.</xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="lidoRecID" type="lido:identifierComplexType" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: A unique lido record identification preferably composed of an identifier for the contributor and a record identification in the contributor's (local) system.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="objectPublishedID" type="lido:identifierComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: A unique, published identification of the described object / work. </xsd:documentation>
					<xsd:documentation>How to record: May link to authority files maintained outside of the contributor's documentation system or may be an identifier for the object published by its repository, e.g. composed of an identifier for the repository and an inventory number of the object.Preferably a dereferenceable URL. </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="category" type="lido:conceptComplexType" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation>Definition: Indicates the category of which this item is an instance, preferably referring to CIDOC-CRM concept definitions. </xsd:documentation>
					<xsd:documentation>How to record: CIDOC-CRM concept definitions are  given at http://www.cidoc-crm.org/crm-concepts/Data values in the sub-element term may often be: Man-Made Object (with conceptID "http://www.cidoc-crm.org/crm-concepts/E22"), Man-Made Feature (http://www.cidoc-crm.org/crm-concepts/E25), Collection (http://www.cidoc-crm.org/crm-concepts/E78). </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="descriptiveMetadata" type="lido:descriptiveMetadataComplexType" maxOccurs="unbounded"/>
			<xsd:element name="administrativeMetadata" type="lido:administrativeMetadataComplexType" maxOccurs="unbounded"/>
		</xsd:sequence>
		<xsd:attribute ref="lido:relatedencoding"/>
	</xsd:complexType>
	<xsd:element name="lidoWrap">
		<xsd:annotation>
			<xsd:documentation>Definition: Holds one or multiple object records.</xsd:documentation>
		</xsd:annotation>
		<xsd:complexType>
			<xsd:sequence>
				<xsd:element name="lido" maxOccurs="unbounded">
					<xsd:complexType>
						<xsd:complexContent>
							<xsd:extension base="lido:lidoComplexType">
								<xsd:attribute ref="lido:sortorder"/>
							</xsd:extension>
						</xsd:complexContent>
					</xsd:complexType>
				</xsd:element>
			</xsd:sequence>
			<xsd:attribute ref="lido:relatedencoding"/>
		</xsd:complexType>
	</xsd:element>
	<xsd:complexType name="materialsTechComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: Materials and techniques for retrieval.</xsd:documentation>
			<xsd:documentation>How to record: If multiple parts of the object / work require separate materials and techniques, or if media and support are being recorded separately, repeat the materialsTechSet element qualifying the extent sub-element.</xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="termMaterialsTech" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: A concept to index materials and/or technique.</xsd:documentation>
					<xsd:documentation>How to record: Preferably taken from a published controlled vocabulary.</xsd:documentation>
				</xsd:annotation>
				<xsd:complexType>
					<xsd:complexContent>
						<xsd:extension base="lido:conceptComplexType">
							<xsd:attribute ref="lido:type">
								<xsd:annotation>
									<xsd:documentation>How to record: Example values: technique, material, implement, mark (e.g., watermark or other mark inherent in the material)</xsd:documentation>
								</xsd:annotation>
							</xsd:attribute>
							<xsd:attribute ref="lido:sortorder"/>
						</xsd:extension>
					</xsd:complexContent>
				</xsd:complexType>
			</xsd:element>
			<xsd:element name="extentMaterialsTech" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: An explanation of the part of the object / work to which the corresponding materials or technique are applicable; included when necessary for clarity.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="sourceMaterialsTech" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: The source of the information about materials and technique, often used when citing a published source of watermarks.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:complexType name="materialsTechSetComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: Wrapper for display and index elements for materials and technique information.</xsd:documentation>
			<xsd:documentation>Notes: Indicates the substances or materials used, as well as any implements, production or manufacturing techniques, processes, or methods incorporated.</xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="displayMaterialsTech" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: Display element for materials/technique, corresponding to the following materialsTech element.</xsd:documentation>
					<xsd:documentation>How to record: It is presented in a syntax suitable for display to the end-user and including any necessary indications of uncertainty, ambiguity, and nuance.Repeat this element only for language variants.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="materialsTech" type="lido:materialsTechComplexType" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation>Definition: Materials and techniques data used for indexing.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:complexType name="measurementsSetComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: The dimensions or other measurements for one aspect of the item. </xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="measurementType" type="lido:textComplexType" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: Indicates what kind of measurement is taken. </xsd:documentation>
					<xsd:documentation>How to record: Data values for type: height, width, depth, length, diameter, circumference, stories, count, area, volume, running time, size.Repeat this element only for language variants.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="measurementUnit" type="lido:textComplexType" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: The unit of the measurement.</xsd:documentation>
					<xsd:documentation>How to record: E.g. cm, mm, m, g, kg, kb, Mb or Gb.Repeat this element only for language variants.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="measurementValue" type="lido:textComplexType">
				<xsd:annotation>
					<xsd:documentation>Definition: The value of the measurement.</xsd:documentation>
					<xsd:documentation>How to record: Whole numbers or decimal fractions.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:element name="objectClassificationWrap">
		<xsd:annotation>
			<xsd:documentation>Definition: Wrapper for data classifying the object / work.Includes all classifying information about an object / work, such as: object / work type, style, genre, form, age, sex, and phase, or by how holding organization structures its collection (e.g. fine art, decorative art, prints and drawings, natural science, numismatics, or local history).</xsd:documentation>
		</xsd:annotation>
		<xsd:complexType>
			<xsd:sequence>
				<xsd:element ref="lido:objectWorkTypeWrap">
					<xsd:annotation>
						<xsd:documentation>Definition: A wrapper for Object/Work Types.</xsd:documentation>
					</xsd:annotation>
				</xsd:element>
				<xsd:element ref="lido:classificationWrap" minOccurs="0">
					<xsd:annotation>
						<xsd:documentation>Definition: A wrapper for any classification used to categorize an object / work by grouping it together with others on the basis of similar characteristics.</xsd:documentation>
					</xsd:annotation>
				</xsd:element>
			</xsd:sequence>
		</xsd:complexType>
	</xsd:element>
	<xsd:complexType name="objectComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: Reference to an object / work.</xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="objectWebResource" type="lido:webResourceComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: A URL-Reference to a description of the object / work in the worldwide web environment.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="objectID" type="lido:identifierComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: Unique identifier of the referenced object / work.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="objectNote" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: A descriptive identification of the object / work that will be meaningful to end-users, including some or all of the following information, as necessary for clarity and if known: title, object/work type, important actor, date and/or place information, potentially location of the object / work.</xsd:documentation>
					<xsd:documentation>How to record: The information should ideally be generated from fields/elements in the related record.</xsd:documentation>
				</xsd:annotation>
				<xsd:complexType>
					<xsd:simpleContent>
						<xsd:extension base="lido:textComplexType">
							<xsd:attribute ref="lido:type"/>
						</xsd:extension>
					</xsd:simpleContent>
				</xsd:complexType>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:element name="objectDescriptionWrap">
		<xsd:annotation>
			<xsd:documentation>Definition: A wrapper for Description/Descriptive Note information.</xsd:documentation>
		</xsd:annotation>
		<xsd:complexType>
			<xsd:sequence>
				<xsd:element name="objectDescriptionSet" type="lido:descriptiveNoteComplexType" minOccurs="0" maxOccurs="unbounded">
					<xsd:annotation>
						<xsd:documentation>Definition: Wrapper for a description of the object, including description identifer, descriptive note and sources.</xsd:documentation>
						<xsd:documentation>How to record: Includes usually a relatively brief essay-like text that describes the content and context of the object / work, including comments and an interpretation that may supplement, qualify, or explain the physical characteristics, subject, circumstances of creation or discovery, or other information about it.If there is more than one descriptive note, repeat this element.</xsd:documentation>
						<xsd:documentation>Notes: A reference to a text resource holding the description may be given in description identifier. </xsd:documentation>
					</xsd:annotation>
				</xsd:element>
			</xsd:sequence>
		</xsd:complexType>
	</xsd:element>
	<xsd:element name="objectIdentificationWrap">
		<xsd:annotation>
			<xsd:documentation>Definition: A Wrapper for information that identifies the object.</xsd:documentation>
		</xsd:annotation>
		<xsd:complexType>
			<xsd:sequence>
				<xsd:element ref="lido:titleWrap"/>
				<xsd:element ref="lido:inscriptionsWrap" minOccurs="0"/>
				<xsd:element ref="lido:repositoryWrap" minOccurs="0"/>
				<xsd:element ref="lido:displayStateEditionWrap" minOccurs="0"/>
				<xsd:element ref="lido:objectDescriptionWrap" minOccurs="0"/>
				<xsd:element ref="lido:objectMeasurementsWrap" minOccurs="0"/>
			</xsd:sequence>
		</xsd:complexType>
	</xsd:element>
	<xsd:complexType name="objectMeasurementsComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: The dimensions, size, shape, scale, format, or storage configuration of the object / work, including volume, weight, area or running time.</xsd:documentation>
			<xsd:documentation>How to record: Measurements are formatted to allow retrieval; preferably in metric units where applicable.</xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="measurementsSet" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: The dimensions or other measurements for one aspect of an object / work (e.g., width).</xsd:documentation>
					<xsd:documentation>How to record: May be combined with extent, qualifier, and other sub-elements as necessary.The subelements "measurementUnit", "measurementValue" and
"measurementType" are mandatory.</xsd:documentation>
				</xsd:annotation>
				<xsd:complexType>
					<xsd:complexContent>
						<xsd:extension base="lido:measurementsSetComplexType">
							<xsd:attribute ref="lido:sortorder"/>
						</xsd:extension>
					</xsd:complexContent>
				</xsd:complexType>
			</xsd:element>
			<xsd:element name="extentMeasurements" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: An explanation of the part of the object / work being measured included, when necessary, for clarity.</xsd:documentation>
					<xsd:documentation>How to record: Example values: overall, components, sheet, plate mark, chain lines, pattern repeat, lid, base, laid lines, folios, leaves, columns per page, lines per page, tessera, footprint, panel, interior, mat, window of mat, secondary support, frame, and mount</xsd:documentation>
				</xsd:annotation>
				<xsd:complexType>
					<xsd:simpleContent>
						<xsd:extension base="lido:textComplexType">
							<xsd:attribute ref="lido:sortorder"/>
						</xsd:extension>
					</xsd:simpleContent>
				</xsd:complexType>
			</xsd:element>
			<xsd:element name="qualifierMeasurements" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: A word or phrase that elaborates on the nature of the measurements of the object / work when necessary, e.g. when the measurements are approximate.</xsd:documentation>
					<xsd:documentation>How to record: Example values: approximate, sight, maximum, larges, smallest, average, variable, assembled, before restoration, before restoration, at corners, rounded, framed, and with base.</xsd:documentation>
				</xsd:annotation>
				<xsd:complexType>
					<xsd:simpleContent>
						<xsd:extension base="lido:textComplexType">
							<xsd:attribute ref="lido:sortorder"/>
						</xsd:extension>
					</xsd:simpleContent>
				</xsd:complexType>
			</xsd:element>
			<xsd:element name="formatMeasurements" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: The configuration of an object / work, including technical formats. Used as necessary.</xsd:documentation>
					<xsd:documentation>How to record: Example values: Vignette, VHS, IMAX, and DOS</xsd:documentation>
				</xsd:annotation>
				<xsd:complexType>
					<xsd:simpleContent>
						<xsd:extension base="lido:textComplexType">
							<xsd:attribute ref="lido:sortorder"/>
						</xsd:extension>
					</xsd:simpleContent>
				</xsd:complexType>
			</xsd:element>
			<xsd:element name="shapeMeasurements" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: The shape of an object / work. Used for unusual shapes (e.g., an oval painting).</xsd:documentation>
					<xsd:documentation>How to record: Example values: oval, round, square, rectangular, and irregular.</xsd:documentation>
				</xsd:annotation>
				<xsd:complexType>
					<xsd:simpleContent>
						<xsd:extension base="lido:textComplexType">
							<xsd:attribute ref="lido:sortorder"/>
						</xsd:extension>
					</xsd:simpleContent>
				</xsd:complexType>
			</xsd:element>
			<xsd:element name="scaleMeasurements" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: An expression of the ratio between the size of the representation of something and that thing (e.g., the size of the drawn structure and the actual built work). </xsd:documentation>
					<xsd:documentation>How to record: Example values for scale: numeric (e.g., 1 inch = 1 foot), full-size, life-size, half size,monumental. and others as recommended in CCO and CDWA. Combine this tag with Measurement Sets for numeric scales. For measurementsSet type for Scale, use "base" for the left side of the equation, and "target" for the right side of the equation).</xsd:documentation>
					<xsd:documentation>Notes: Used for studies, record drawings, models, and other representations drawn or constructed to scale.</xsd:documentation>
				</xsd:annotation>
				<xsd:complexType>
					<xsd:simpleContent>
						<xsd:extension base="lido:textComplexType">
							<xsd:attribute ref="lido:sortorder"/>
						</xsd:extension>
					</xsd:simpleContent>
				</xsd:complexType>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:complexType name="objectMeasurementsSetComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: Wrapper for display and index elements for object measurements. If multiple parts of the object / work are measured, repeat the element</xsd:documentation>
			<xsd:documentation>How to record: Holds information about the dimensions, size, or scale of the object / work. It may also include the number of parts in a complex object / work, series, or collection.</xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="displayObjectMeasurements" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: Display element for one object measurement, corresponding to the following objectMeasurement element.</xsd:documentation>
					<xsd:documentation>How to record: Repeat this element only for language variants.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="objectMeasurements" type="lido:objectMeasurementsComplexType" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation>Definition: Structured measurement information about the dimensions, size, or scale of the object / work. </xsd:documentation>
					<xsd:documentation>Notes: It may also include the parts of a complex object / work, series, or collection.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:element name="objectMeasurementsWrap">
		<xsd:annotation>
			<xsd:documentation>Definition: A wrapper for the Measurements.</xsd:documentation>
		</xsd:annotation>
		<xsd:complexType>
			<xsd:sequence>
				<xsd:element name="objectMeasurementsSet" minOccurs="0" maxOccurs="unbounded">
					<xsd:annotation>
						<xsd:documentation>Definition: Wrapper for display and index elements for object / work measurements.</xsd:documentation>
						<xsd:documentation>How to record: If multiple parts of the object / work are measured repeat this element. </xsd:documentation>
					</xsd:annotation>
					<xsd:complexType>
						<xsd:complexContent>
							<xsd:extension base="lido:objectMeasurementsSetComplexType">
								<xsd:attribute ref="lido:sortorder"/>
							</xsd:extension>
						</xsd:complexContent>
					</xsd:complexType>
				</xsd:element>
			</xsd:sequence>
		</xsd:complexType>
	</xsd:element>
	<xsd:element name="objectRelationWrap">
		<xsd:annotation>
			<xsd:documentation>Definition: Wrapper for infomation about related topics and works, collections, etc.</xsd:documentation>
			<xsd:documentation>Notes: This includes visual contents and all associated entities the object is about. </xsd:documentation>
		</xsd:annotation>
		<xsd:complexType>
			<xsd:sequence>
				<xsd:element ref="lido:subjectWrap" minOccurs="0"/>
				<xsd:element ref="lido:relatedWorksWrap" minOccurs="0"/>
			</xsd:sequence>
		</xsd:complexType>
	</xsd:element>
	<xsd:complexType name="objectSetComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: Wrapper for display and reference elements for an other object.</xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="displayObject" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: A free-text description of the object, corresponding to the following object element</xsd:documentation>
					<xsd:documentation>How to record: Repeat this element only for language variants.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="object" type="lido:objectComplexType" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation>Definition: Contains identifying information and links to another object.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:element name="objectWorkTypeWrap">
		<xsd:annotation>
			<xsd:documentation>Definition: A wrapper for Object/Work Types.</xsd:documentation>
		</xsd:annotation>
		<xsd:complexType>
			<xsd:sequence>
				<xsd:element name="objectWorkType" maxOccurs="unbounded">
					<xsd:annotation>
						<xsd:documentation>Definition: The specific kind of object / work being described. </xsd:documentation>
						<xsd:documentation>How to record: Preferably taken from a published controlled vocabulary. For a collection, include repeating instances for identifying all of or the most important items in the collection.</xsd:documentation>
					</xsd:annotation>
					<xsd:complexType>
						<xsd:complexContent>
							<xsd:extension base="lido:conceptComplexType">
								<xsd:attribute ref="lido:type"/>
								<xsd:attribute ref="lido:sortorder"/>
							</xsd:extension>
						</xsd:complexContent>
					</xsd:complexType>
				</xsd:element>
			</xsd:sequence>
		</xsd:complexType>
	</xsd:element>
	<xsd:complexType name="placeComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: Structured element for place information</xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="placeID" type="lido:identifierComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: A unique identifier for the place.</xsd:documentation>
					<xsd:documentation>How to record: Preferably taken from a published authority file.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="namePlaceSet" type="lido:appellationComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: The name of the geographic place. </xsd:documentation>
					<xsd:documentation>How to record: If there are different names of the same place, e.g. today's and historical names, repeat this element. </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="gml" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: Georeferences of the place using the GML specification.</xsd:documentation>
					<xsd:documentation>How to record: Repeat this element only for language variants.</xsd:documentation>
					<xsd:documentation>Notes: For further documentation on GML refer to http://www.opengis.net/gml/. </xsd:documentation>
				</xsd:annotation>
				<xsd:complexType>
					<xsd:complexContent>
						<xsd:extension base="lido:gmlComplexType">
							<xsd:attribute ref="xml:lang"/>
						</xsd:extension>
					</xsd:complexContent>
				</xsd:complexType>
			</xsd:element>
			<xsd:element name="partOfPlace" type="lido:placeComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: Allows for indexing larger geographical entities. </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="placeClassification" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: A classification of the place, e.g. by geological complex, stratigraphic unit or habitat type.</xsd:documentation>
				</xsd:annotation>
				<xsd:complexType>
					<xsd:complexContent>
						<xsd:extension base="lido:conceptComplexType">
							<xsd:attribute ref="lido:type"/>
						</xsd:extension>
					</xsd:complexContent>
				</xsd:complexType>
			</xsd:element>
		</xsd:sequence>
		<xsd:attribute ref="lido:politicalEntity">
			<xsd:annotation>
				<xsd:documentation>Definition: Data values can include: Gemeinde, Kreis, Bundesland, Staat, Herzogtum, city, county, country, civil parish</xsd:documentation>
			</xsd:annotation>
		</xsd:attribute>
		<xsd:attribute ref="lido:geographicalEntity">
			<xsd:annotation>
				<xsd:documentation>Definition: Data values can include: Naturraum, Landschaft, natural environment, landscape</xsd:documentation>
			</xsd:annotation>
		</xsd:attribute>
	</xsd:complexType>
	<xsd:complexType name="placeSetComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: Wrapper for display and index elements for place information.</xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="displayPlace" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: Display element for a place specification, corresponding to the following place element.</xsd:documentation>
					<xsd:documentation>How to record: Repeat this element only for language variants.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="place" type="lido:placeComplexType" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation>Definition: Contains structured identifying and indexing information for a geographical entity.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:attribute name="politicalEntity" type="xsd:string">
		<xsd:annotation>
			<xsd:documentation>Definition: Qualifies the type of the given place entity according to political structures. </xsd:documentation>
			<xsd:documentation>How to record: Data values can include: city, county, country, civil parish.</xsd:documentation>
		</xsd:annotation>
	</xsd:attribute>
	<xsd:attribute name="pref" type="xsd:string">
		<xsd:annotation>
			<xsd:documentation>Definition: Qualifies the value as a preferred or alternative variant. </xsd:documentation>
			<xsd:documentation>How to record: Data values: preferred, alternate</xsd:documentation>
		</xsd:annotation>
	</xsd:attribute>
	<xsd:complexType name="recordInfoSetComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: Wrapper for metadata information about this record.</xsd:documentation>
			<xsd:documentation>Notes: The metadata information contains the reference to the "lido"-metadata set but may also be constituted by reference to an "object data sheet" in an online database.</xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="recordInfoID" type="lido:identifierComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: Unique ID of the metadata. </xsd:documentation>
					<xsd:documentation>How to record: Record Info ID has the same definition as Record ID but out of the context of original local system, such as a persistent identifier or an oai identifier (e.g., oai1:getty.edu:paintings/00001234 attribute type= oai).</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="recordInfoLink" type="lido:webResourceComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: Link of the metadata, e.g., to the object data sheet (not the same as link of the object).</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="recordMetadataDate" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: Creation date or date modified of the metadata record. Format will vary depending upon implementation.</xsd:documentation>
				</xsd:annotation>
				<xsd:complexType>
					<xsd:simpleContent>
						<xsd:extension base="lido:textComplexType">
							<xsd:attribute ref="lido:type"/>
							<xsd:attribute ref="lido:source"/>
						</xsd:extension>
					</xsd:simpleContent>
				</xsd:complexType>
			</xsd:element>
		</xsd:sequence>
		<xsd:attribute ref="lido:type"/>
	</xsd:complexType>
	<xsd:element name="recordWrap">
		<xsd:annotation>
			<xsd:documentation>Definition: A wrapper for information about the record that contains the cataloguing information.</xsd:documentation>
			<xsd:documentation>Notes: Note that this section does not refer to any object or resource information, but only to the source record. </xsd:documentation>
		</xsd:annotation>
		<xsd:complexType>
			<xsd:sequence>
				<xsd:element name="recordID" type="lido:identifierComplexType" maxOccurs="unbounded">
					<xsd:annotation>
						<xsd:documentation>Definition: A unique record identification in the contributor's (local) system.</xsd:documentation>
					</xsd:annotation>
				</xsd:element>
				<xsd:element name="recordType" type="lido:conceptComplexType">
					<xsd:annotation>
						<xsd:documentation>Definition: Term establishing whether the record represents an individual item or a collection, series, or group of works.</xsd:documentation>
						<xsd:documentation>How to record: Mandatory. Example values: item, collection, series, group, volume, fonds.Preferably taken from a published controlled value list. </xsd:documentation>
					</xsd:annotation>
				</xsd:element>
				<xsd:element name="recordSource" maxOccurs="unbounded">
					<xsd:annotation>
						<xsd:documentation>Definition: The source of information in this record, generally the repository or other institution.</xsd:documentation>
					</xsd:annotation>
					<xsd:complexType>
						<xsd:complexContent>
							<xsd:extension base="lido:legalBodyRefComplexType">
								<xsd:attribute ref="lido:type"/>
								<xsd:attribute ref="lido:sortorder"/>
							</xsd:extension>
						</xsd:complexContent>
					</xsd:complexType>
				</xsd:element>
				<xsd:element name="recordRights" minOccurs="0" maxOccurs="unbounded">
					<xsd:annotation>
						<xsd:documentation>Definition: Information about rights regarding the content provided in this LIDO record.</xsd:documentation>
					</xsd:annotation>
					<xsd:complexType>
						<xsd:complexContent>
							<xsd:extension base="lido:rightsComplexType">
								<xsd:attribute ref="lido:sortorder"/>
							</xsd:extension>
						</xsd:complexContent>
					</xsd:complexType>
				</xsd:element>
				<xsd:element name="recordInfoSet" type="lido:recordInfoSetComplexType" minOccurs="0" maxOccurs="unbounded">
					<xsd:annotation>
						<xsd:documentation>Definition: Wrapper for metadata information about this record.</xsd:documentation>
					</xsd:annotation>
				</xsd:element>
			</xsd:sequence>
		</xsd:complexType>
	</xsd:element>
	<xsd:attribute name="relatedencoding" type="xsd:string">
		<xsd:annotation>
			<xsd:documentation>Definition: Indicates the format of the data source from which the data were migrated. For each sub-element with data values then the related source data fields can be referenced through the attributes encodinganalog and label.</xsd:documentation>
		</xsd:annotation>
	</xsd:attribute>
	<xsd:complexType name="relatedEventSetComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: A wrapper for one event related to the described event. </xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="relatedEvent" type="lido:eventSetComplexType" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation>Definition: Display and index elements for the event related to the event being recorded.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="relatedEventRelType" type="lido:conceptComplexType" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation>Definition: A term describing the nature of the relationship between the described event and the related event.</xsd:documentation>
					<xsd:documentation>How to record: Example values: part of, influence of, related to.Indicate a term characterizing the relationship from the perspective of the currently described event towards the related event. Preferably taken from a published controlled vocabulary.</xsd:documentation>
					<xsd:documentation>Notes: For implementation of the data, note that relationships are conceptually reciprocal, but the Relationship Type is often different on either side of the relationship.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:complexType name="relatedWorkSetComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: A wrapper for one object / work, group, collection, or series that is directly related to the object / work at hand, including direct relationships between the two, between an object / work and its components, and between an item and the larger group, collection, or series.</xsd:documentation>
			<xsd:documentation>How to record: If there is more than one object / work referred to then the set should be repeated.Preferably taken from a published controlled vocabulary.</xsd:documentation>
			<xsd:documentation>Notes: Objects referred to may be corresponding object / works or those created to be shown together with the object / work in question, but also e.g., literature (bibliographic objects) in which the object / work is documented or mentioned forms a "relatedWorkSet". </xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="relatedWork" type="lido:objectSetComplexType" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation>Definition: Wrapper for the display and reference elements of a related object / work.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="relatedWorkRelType" type="lido:conceptComplexType" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation>Definition: A term describing the nature of the relationship between the object / work at hand and the related entity.</xsd:documentation>
					<xsd:documentation>How to record: Example values: part of, larger context for, model of, model for, study of, study forrendering of, copy of, related to.Indicate a term characterizing the relationship from the perspective of the currently described object / work towards the related object / work.</xsd:documentation>
					<xsd:documentation>Notes: For implementation of the data, note that relationships are conceptually reciprocal, but the Relationship Type is often different on either side of the relationship (e.g., one work is part of a second work, but from the point of view of the second record, the first work is the larger context for the second work). Whether or not relationships are physically reciprocal as implemented in systems is a local decision.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:element name="relatedWorksWrap">
		<xsd:annotation>
			<xsd:documentation>Definition: A wrapper for Related Works information.</xsd:documentation>
		</xsd:annotation>
		<xsd:complexType>
			<xsd:sequence>
				<xsd:element name="relatedWorkSet" minOccurs="0" maxOccurs="unbounded">
					<xsd:annotation>
						<xsd:documentation>Definition: A wrapper for a object / work, group, collection, or series that is directly related to the object / work being recorded.</xsd:documentation>
					</xsd:annotation>
					<xsd:complexType>
						<xsd:complexContent>
							<xsd:extension base="lido:relatedWorkSetComplexType">
								<xsd:attribute ref="lido:sortorder"/>
							</xsd:extension>
						</xsd:complexContent>
					</xsd:complexType>
				</xsd:element>
			</xsd:sequence>
		</xsd:complexType>
	</xsd:element>
	<xsd:complexType name="repositorySetComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: Wrapper for designation and identification of the institution of custody and, possibly, indication of the exact location of the object. </xsd:documentation>
			<xsd:documentation>How to record: If there are several designations known, e.g., a current one and  former ones (see: type attribute), repeat the element.Data values of the type attribute: current, former.</xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="repositoryName" type="lido:legalBodyRefComplexType" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation>Definition: Unambiguous identification, designation and weblink of the institution of custody.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="workID" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: An unambiguous numeric or alphanumeric identification number, assigned to the object by the institution of custody.</xsd:documentation>
				</xsd:annotation>
				<xsd:complexType>
					<xsd:simpleContent>
						<xsd:extension base="xsd:string">
							<xsd:attribute ref="lido:type"/>
							<xsd:attribute ref="lido:sortorder"/>
							<xsd:attribute ref="lido:encodinganalog"/>
							<xsd:attribute ref="lido:label"/>
						</xsd:extension>
					</xsd:simpleContent>
				</xsd:complexType>
			</xsd:element>
			<xsd:element name="repositoryLocation" type="lido:placeComplexType" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation>Definition: Location of the object, especially relevant for architecture and archaeological sites. </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
		<xsd:attribute ref="lido:type">
			<xsd:annotation>
				<xsd:documentation>Definition: Qualifies the repository as a former or the current repository. </xsd:documentation>
				<xsd:documentation>How to record: Data values: current, former</xsd:documentation>
			</xsd:annotation>
		</xsd:attribute>
		<xsd:attribute ref="lido:sortorder"/>
	</xsd:complexType>
	<xsd:element name="repositoryWrap">
		<xsd:annotation>
			<xsd:documentation>Definition: Wrapper for Repository/ Location information.</xsd:documentation>
		</xsd:annotation>
		<xsd:complexType>
			<xsd:sequence>
				<xsd:element name="repositorySet" type="lido:repositorySetComplexType" minOccurs="0" maxOccurs="unbounded">
					<xsd:annotation>
						<xsd:documentation>Definition: Wrapper for designation and identification of the institution of custody, and possibly an indication of the exact location of the object.</xsd:documentation>
					</xsd:annotation>
				</xsd:element>
			</xsd:sequence>
		</xsd:complexType>
	</xsd:element>
	<xsd:complexType name="resourceSetComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: A wrapper for sets of resource information. </xsd:documentation>
			<xsd:documentation>How to record: If there are multiple, distinct resources associated with the object / work, repeat the Resource Set element. For variants representing the same resource repeat the Resource Representation sub-element. </xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="resourceID" type="lido:identifierComplexType" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation>Definition: The unique numeric or alphanumeric identification of the original (digital or analogue) resource.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="resourceRepresentation" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: A digital representation of a resource for online presentation. </xsd:documentation>
					<xsd:documentation>How to record: Repeat this element set for variants representing the same resource, e.g. different sizes of the same image, or a thumbnail representing an audio or video file and the digital audio or video file itself. </xsd:documentation>
				</xsd:annotation>
				<xsd:complexType>
					<xsd:sequence>
						<xsd:element name="linkResource">
							<xsd:annotation>
								<xsd:documentation>Definition: A url reference in the worldwide web environment.</xsd:documentation>
							</xsd:annotation>
							<xsd:complexType>
								<xsd:simpleContent>
									<xsd:extension base="lido:webResourceComplexType">
										<xsd:attribute name="codecResource" type="xsd:string">
											<xsd:annotation>
												<xsd:documentation>Definition: Codec information about the digital resource.</xsd:documentation>
											</xsd:annotation>
										</xsd:attribute>
									</xsd:extension>
								</xsd:simpleContent>
							</xsd:complexType>
						</xsd:element>
						<xsd:element name="resourceMeasurementsSet" type="lido:measurementsSetComplexType" minOccurs="0" maxOccurs="unbounded">
							<xsd:annotation>
								<xsd:documentation>Definition: Any technical measurement information needed for online presentation of the resource. </xsd:documentation>
								<xsd:documentation>How to record: For images provide width and height of the digital image, for audio or video resources provide duration, bit rate, frame size, and if necessary TC-IN, TC-OUT.</xsd:documentation>
							</xsd:annotation>
						</xsd:element>
					</xsd:sequence>
					<xsd:attribute ref="lido:type"/>
				</xsd:complexType>
			</xsd:element>
			<xsd:element name="resourceType" type="lido:conceptComplexType" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation>Definition: The generic identification of the medium of the image or other resource.</xsd:documentation>
					<xsd:documentation>How to record: Preferably using a controlled published value list. Example values: digital image, photograph, slide, videotape, X-ray photograph, negative.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="resourceRelType" type="lido:conceptComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: The relationship of the resource to the object / work being described.</xsd:documentation>
					<xsd:documentation>How to record: Example values: conservation image, documentary image, contextual image, historical image, reconstruction, and installation image</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="resourcePerspective" type="lido:conceptComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: The specific vantage point or perspective of the view.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="resourceDescription" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: A description of the spatial, chronological, or contextual aspects of the object / work as captured in this particular resource.</xsd:documentation>
				</xsd:annotation>
				<xsd:complexType>
					<xsd:simpleContent>
						<xsd:extension base="lido:textComplexType">
							<xsd:attribute ref="lido:type"/>
							<xsd:attribute ref="lido:sortorder"/>
						</xsd:extension>
					</xsd:simpleContent>
				</xsd:complexType>
			</xsd:element>
			<xsd:element name="resourceDateTaken" type="lido:dateSetComplexType" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation>Definition: A date or range of dates associated with the creation or production of the original resource, e.g. the image or recording. </xsd:documentation>
					<xsd:documentation>Notes: This is not necessarily the same as the date of production of the digital resource (e.g. a digitization of a negative is usually made years after the image was captured on film). Format will vary depending upon implementation.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="resourceSource" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: Identification of the agency, individual, or repository from which the image or other resource was obtained. </xsd:documentation>
					<xsd:documentation>How to record: Include this sub-element when the source of the image/resource differs from the source named in Record Source.</xsd:documentation>
				</xsd:annotation>
				<xsd:complexType>
					<xsd:complexContent>
						<xsd:extension base="lido:legalBodyRefComplexType">
							<xsd:attribute ref="lido:type"/>
							<xsd:attribute ref="lido:sortorder"/>
						</xsd:extension>
					</xsd:complexContent>
				</xsd:complexType>
			</xsd:element>
			<xsd:element name="rightsResource" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: Information about rights regarding the image or other resource. </xsd:documentation>
					<xsd:documentation>How to record: Use this sub-element if the holder of the reproduction rights for the image/resource differs from the holder of rights for the work. See also Rights Work above. (E.g., the work rights are " National Museum of African Art, Smithsonian Instituition (Washing DC), " but the image rights are "Photo Frank Khoury.")</xsd:documentation>
				</xsd:annotation>
				<xsd:complexType>
					<xsd:complexContent>
						<xsd:extension base="lido:rightsComplexType">
							<xsd:attribute ref="lido:sortorder"/>
						</xsd:extension>
					</xsd:complexContent>
				</xsd:complexType>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:element name="resourceWrap">
		<xsd:annotation>
			<xsd:documentation>Definition: A wrapper for resources that are surrogates for an object / work, including digital images, videos or audio files that represent it in an online service.</xsd:documentation>
		</xsd:annotation>
		<xsd:complexType>
			<xsd:sequence>
				<xsd:element name="resourceSet" minOccurs="0" maxOccurs="unbounded">
					<xsd:annotation>
						<xsd:documentation>Definition: Contains sub-elements for a structured resource description.</xsd:documentation>
						<xsd:documentation>Notes: Provides identification of a surrogate of the object / work including digital images, slides, transparencies, photographs, audio, video and moving images, but excluding items that are considered object / works in their own right. For such as drawings, prints, paintings, or photographs considered art, and other works that themselves contain representations of other works, use Related Works and/or Subjects. </xsd:documentation>
					</xsd:annotation>
					<xsd:complexType>
						<xsd:complexContent>
							<xsd:extension base="lido:resourceSetComplexType">
								<xsd:attribute ref="lido:sortorder"/>
							</xsd:extension>
						</xsd:complexContent>
					</xsd:complexType>
				</xsd:element>
			</xsd:sequence>
		</xsd:complexType>
	</xsd:element>
	<xsd:complexType name="rightsComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: Information about rights management; may include copyright and other intellectual property statements.</xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="rightsType" type="lido:conceptComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: The specific type of right being recorded. </xsd:documentation>
					<xsd:documentation>How to record: For example: copyright, publication right, data protection right, trademark.Preferably taken from a published controlled value list. </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="rightsDate" type="lido:dateComplexType" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation>Definition: The date on which a right is or was current.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="rightsHolder" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: The holder of the right.</xsd:documentation>
				</xsd:annotation>
				<xsd:complexType>
					<xsd:complexContent>
						<xsd:extension base="lido:legalBodyRefComplexType">
							<xsd:attribute ref="lido:sortorder"/>
						</xsd:extension>
					</xsd:complexContent>
				</xsd:complexType>
			</xsd:element>
			<xsd:element name="creditLine" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: Acknowledgement of the rights associated with the physical and/or digital object as requested.</xsd:documentation>
					<xsd:documentation>How to record: Repeat this element only for language variants.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:element name="rightsWorkWrap">
		<xsd:annotation>
			<xsd:documentation>Definition: Wrapper for rights information about the object / work described.</xsd:documentation>
			<xsd:documentation>Notes: Rights information for the record and for resources is recorded in the respective rights elements recordRights and rightsResource. </xsd:documentation>
		</xsd:annotation>
		<xsd:complexType>
			<xsd:sequence>
				<xsd:element name="rightsWorkSet" minOccurs="0" maxOccurs="unbounded">
					<xsd:annotation>
						<xsd:documentation>Definition: Information about rights management; may include copyright and other intellectual property statements about the object / work.</xsd:documentation>
					</xsd:annotation>
					<xsd:complexType>
						<xsd:complexContent>
							<xsd:extension base="lido:rightsComplexType">
								<xsd:attribute ref="lido:sortorder"/>
							</xsd:extension>
						</xsd:complexContent>
					</xsd:complexType>
				</xsd:element>
			</xsd:sequence>
		</xsd:complexType>
	</xsd:element>
	<xsd:attribute name="sortorder" type="xsd:integer">
		<xsd:annotation>
			<xsd:documentation>Definition: Assigns a priority order for online presentation of the element. </xsd:documentation>
			<xsd:documentation>How to record: Has to be a positive integer, with descending priority from 1 to x. </xsd:documentation>
		</xsd:annotation>
	</xsd:attribute>
	<xsd:attribute name="source" type="xsd:string">
		<xsd:annotation>
			<xsd:documentation>Definition: Source of the information given in the holding element.</xsd:documentation>
		</xsd:annotation>
	</xsd:attribute>
	<xsd:complexType name="subjectComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: A wrapper for one set of Subject Indexing information. </xsd:documentation>
			<xsd:documentation>How to record: If an object / work has multiple parts or otherwise has separate, multiple subjects, repeat the superordinate Subject Set element and use Extent Subject. The superordinate Subject Set element may also be repeated to distinguish between subjects that reflect what an object / work is *of* (description and identification) from what it is *about* (interpretation).</xsd:documentation>
			<xsd:documentation>Notes: While not required, it is highly recommended to include subject information, even for non-objective art, for which the function or purpose of the object / work may be included as subject.</xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="extentSubject" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: When there are multiple subjects, a term indicating the part of the object / work to which these subject terms apply.</xsd:documentation>
					<xsd:documentation>How to record: Example values: recto, verso, side A, side B, main panel, and predella.Repeat this element only for language variants.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="subjectConcept" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: Provides references to concepts related to the subject of the described object / work. </xsd:documentation>
					<xsd:documentation>How to record: May include iconography, themes from literature, or generic terms describing the material world, or topics (e.g., concepts, themes, or issues). However, references to people, dates, events, places, objects are indicated in the the respective sub-elements Subject Actor Set, Subject Date Set, Subject Event Set, Subject Place Set, and Subject Object Set.Preferably taken from a published controlled vocabulary. </xsd:documentation>
				</xsd:annotation>
				<xsd:complexType>
					<xsd:complexContent>
						<xsd:extension base="lido:conceptComplexType">
							<xsd:attribute ref="lido:sortorder"/>
						</xsd:extension>
					</xsd:complexContent>
				</xsd:complexType>
			</xsd:element>
			<xsd:element name="subjectActor" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: A person, group, or institution depicted in or by an object / work, or what it is about, provided as display and index elements. </xsd:documentation>
				</xsd:annotation>
				<xsd:complexType>
					<xsd:complexContent>
						<xsd:extension base="lido:actorSetComplexType">
							<xsd:attribute ref="lido:sortorder"/>
						</xsd:extension>
					</xsd:complexContent>
				</xsd:complexType>
			</xsd:element>
			<xsd:element name="subjectDate" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: A time specification depicted in or by an object / work, or what it is about, provided as display and index elements. </xsd:documentation>
				</xsd:annotation>
				<xsd:complexType>
					<xsd:complexContent>
						<xsd:extension base="lido:dateSetComplexType">
							<xsd:attribute ref="lido:sortorder"/>
						</xsd:extension>
					</xsd:complexContent>
				</xsd:complexType>
			</xsd:element>
			<xsd:element name="subjectEvent" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: An event depicted in or by an object / work, or what it is about, provided as display and index elements. </xsd:documentation>
				</xsd:annotation>
				<xsd:complexType>
					<xsd:complexContent>
						<xsd:extension base="lido:eventSetComplexType">
							<xsd:attribute ref="lido:sortorder"/>
						</xsd:extension>
					</xsd:complexContent>
				</xsd:complexType>
			</xsd:element>
			<xsd:element name="subjectPlace" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: A place depicted in or by an object / work, or what it is about, provided as display and index elements. </xsd:documentation>
				</xsd:annotation>
				<xsd:complexType>
					<xsd:complexContent>
						<xsd:extension base="lido:placeSetComplexType">
							<xsd:attribute ref="lido:sortorder"/>
						</xsd:extension>
					</xsd:complexContent>
				</xsd:complexType>
			</xsd:element>
			<xsd:element name="subjectObject" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: An object - e.g. a building or a work of art depicted in or by an object / work, or what it is about, provided as display and index elements. </xsd:documentation>
				</xsd:annotation>
				<xsd:complexType>
					<xsd:complexContent>
						<xsd:extension base="lido:objectSetComplexType">
							<xsd:attribute ref="lido:sortorder"/>
						</xsd:extension>
					</xsd:complexContent>
				</xsd:complexType>
			</xsd:element>
		</xsd:sequence>
		<xsd:attribute ref="lido:type"/>
	</xsd:complexType>
	<xsd:complexType name="subjectSetComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: Wrapper for display and index elements for one set of subject information.</xsd:documentation>
			<xsd:documentation>How to record: If an object / work has multiple parts or otherwise has separate, multiple subjects, repeat this element and use Extent Subject in the Subject element. This element may also be repeated to distinguish between subjects that reflect what an object / work is *of* (description and identification) from what it is *about* (interpretation).</xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="displaySubject" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation>Definition: A free-text description of the subject matter represented by/in the object / work, corresponding to the following subject element</xsd:documentation>
					<xsd:documentation>How to record: Repeat this element only for language variants.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="subject" type="lido:subjectComplexType" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation>Definition: Contains sub-elements for a structured subject description. These identify, describe, and/or interpret what is depicted in and by an object / work or what it is about.</xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:element name="subjectWrap">
		<xsd:annotation>
			<xsd:documentation>Definition: A wrapper for Subject information. This may be the visual content (e.g. the iconography of a painting) or what the object is about.</xsd:documentation>
		</xsd:annotation>
		<xsd:complexType>
			<xsd:sequence>
				<xsd:element name="subjectSet" minOccurs="0" maxOccurs="unbounded">
					<xsd:annotation>
						<xsd:documentation>Definition: Wrapper for display and index elements for one set of subject information.</xsd:documentation>
						<xsd:documentation>How to record: If an object / work has multiple parts or otherwise has separate, multiple subjects, repeat this element and use Extent Subject in the Subject element. This element may also be repeated to distinguish between subjects that reflect what an object / work is *of* (description and identification) from what it is *about* (interpretation).</xsd:documentation>
					</xsd:annotation>
					<xsd:complexType>
						<xsd:complexContent>
							<xsd:extension base="lido:subjectSetComplexType">
								<xsd:attribute ref="lido:sortorder"/>
							</xsd:extension>
						</xsd:complexContent>
					</xsd:complexType>
				</xsd:element>
			</xsd:sequence>
		</xsd:complexType>
	</xsd:element>
	<xsd:complexType name="termComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: A name for a concept / term, usually from a controlled vocabulary.</xsd:documentation>
		</xsd:annotation>
		<xsd:simpleContent>
			<xsd:extension base="xsd:string">
				<xsd:attribute ref="lido:pref"/>
				<xsd:attribute ref="lido:addedSearchTerm"/>
				<xsd:attribute ref="xml:lang"/>
				<xsd:attribute ref="lido:encodinganalog"/>
				<xsd:attribute ref="lido:label"/>
			</xsd:extension>
		</xsd:simpleContent>
	</xsd:complexType>
	<xsd:complexType name="textComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: Simple text element with encodinganalog and label attribute</xsd:documentation>
		</xsd:annotation>
		<xsd:simpleContent>
			<xsd:extension base="xsd:string">
				<xsd:attribute ref="xml:lang"/>
				<xsd:attribute ref="lido:encodinganalog"/>
				<xsd:attribute ref="lido:label"/>
			</xsd:extension>
		</xsd:simpleContent>
	</xsd:complexType>
	<xsd:element name="titleWrap">
		<xsd:annotation>
			<xsd:documentation>Definition: Wrapper for Object name / Title information. </xsd:documentation>
		</xsd:annotation>
		<xsd:complexType>
			<xsd:sequence>
				<xsd:element name="titleSet" maxOccurs="unbounded">
					<xsd:annotation>
						<xsd:documentation>Definition: Wrapper for one title or object name and its source information.</xsd:documentation>
						<xsd:documentation>How to record: Mandatory. If there is no specific title, provide an object name in the appellation value. If there is more than one title, repeat the Title Set element.</xsd:documentation>
						<xsd:documentation>Notes: For objects from natural, technical, cultural history e.g. the object name given here and the object type, recorded in the object / work type element are often identical. </xsd:documentation>
					</xsd:annotation>
					<xsd:complexType>
						<xsd:complexContent>
							<xsd:extension base="lido:appellationComplexType">
								<xsd:attribute ref="lido:type"/>
								<xsd:attribute ref="lido:sortorder"/>
							</xsd:extension>
						</xsd:complexContent>
					</xsd:complexType>
				</xsd:element>
			</xsd:sequence>
		</xsd:complexType>
	</xsd:element>
	<xsd:attribute name="type" type="xsd:string">
		<xsd:annotation>
			<xsd:documentation>Definition: Qualifies the type of information given in the holding element. </xsd:documentation>
			<xsd:documentation>How to record: Will generally have to be populated with a given value list. </xsd:documentation>
		</xsd:annotation>
	</xsd:attribute>
	<xsd:complexType name="webResourceComplexType">
		<xsd:annotation>
			<xsd:documentation>Definition: A uri/url reference to a web resource that describes / represents the item, e.g. a metadata record. </xsd:documentation>
			<xsd:documentation>Notes: It differs from an identifier for the item itself. </xsd:documentation>
		</xsd:annotation>
		<xsd:simpleContent>
			<xsd:extension base="xsd:string">
				<xsd:attribute ref="lido:pref"/>
				<xsd:attribute name="formatResource" type="xsd:string">
					<xsd:annotation>
						<xsd:documentation>Definition: Indicates the internet media type, e.g. the file format of the given web resource. </xsd:documentation>
						<xsd:documentation>How to record: Data values should be taken from the official IANA list (see http://www.iana.org/assignments/media-types/). Includes: text/html, text/xml, image/jpeg, audio/mpeg, video/mpeg, application/pdf.</xsd:documentation>
					</xsd:annotation>
				</xsd:attribute>
				<xsd:attribute ref="xml:lang"/>
				<xsd:attribute ref="lido:encodinganalog"/>
				<xsd:attribute ref="lido:label"/>
			</xsd:extension>
		</xsd:simpleContent>
	</xsd:complexType>
</xsd:schema>

