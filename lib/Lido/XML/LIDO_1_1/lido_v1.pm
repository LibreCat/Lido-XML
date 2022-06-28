package Lido::XML::LIDO_1_1::lido_v1;

use Moo;

our $VERSION = '0.08';

sub content {
	my @lines = <DATA>;
	join '' , @lines;
}

1;
__DATA__
<?xml version="1.0"?>
<xs:schema xmlns:doc="http://www.mda.org.uk/spectrumXML/Documentation" xmlns:gml="http://www.opengis.net/gml" xmlns:lido="http://www.lido-schema.org" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:sch="http://purl.oclc.org/dsdl/schematron" xmlns:owl="http://www.w3.org/2002/07/owl#" xmlns:skos="http://www.w3.org/2004/02/skos/core#" targetNamespace="http://www.lido-schema.org" elementFormDefault="qualified" attributeFormDefault="qualified">

	<xs:annotation>
		<xs:documentation>
			<tei:teiHeader>
				<tei:fileDesc>
					<tei:titleStmt lang="en">
						<tei:title>LIDO - Lightweight Information Describing Objects Version 1.1</tei:title>
						<tei:author>ICOM-CIDOC LIDO Working Group</tei:author>
					</tei:titleStmt>
					<tei:publicationStmt lang="en">
						<tei:publisher>ICOM-CIDOC LIDO Working Group</tei:publisher>
						<tei:date type="publicationDate">2021-12-20</tei:date>
						<tei:authority>ARTstor, Collections Trust, Deutscher Museumsbund - Fachgruppe Dokumentation, Deutsches Dokumentationszentrum für Kunstgeschichte - Bildarchiv Foto Marburg, digiCULT-Verbund eG, Institut für Museumsforschung (SMB-PK), J. Paul
							Getty Trust, Göttingen State and University Library, Zuse-Institut Berlin.</tei:authority>
						<tei:availability>
							<tei:p>LIDO is an XML schema intended for delivering metadata, for use in a variety of online services, from an organization’s collections database to portals of aggregated resources, as well as exposing, sharing and connecting data on the web. Its strength lies in its ability to support the typical range of descriptive information about objects of material culture. It can be used for all kinds of object, e.g., art, cultural, technology and natural science and supports multilingual portal environments.</tei:p>

							<tei:p>The LIDO schema is the result of a substantial redesign and enhancement of the CDWA Lite and museumdat schemas based on recommendations of the CDWA Lite/museumdat Working Group, community feedback and further CIDOC-CRM analysis. It mainly builds on CDWA and includes additional concepts to meet SPECTRUM requirements.</tei:p>

							<tei:p>For more information on LIDO please refer to: <tei:ref target="http://www.lido-schema.org">www.lido-schema.org</tei:ref></tei:p>

							<tei:p>Prepared for CIDOC LIDO Working Group by LIDO-DE Working Group.</tei:p>

							<tei:p>The schema is developed at <tei:ref target="https://gitlab.gwdg.de/lido/development">gitlab.gwdg.de/lido/development</tei:ref>. LIDO v1.1 is backwards compatible with LIDO v1.0. For a summary of changes please refer to the repository’s README. The full history of LIDO can be found in <tei:ref target="http://www.lido-schema.org/schema/v1.0/lido-v1.0-specification.pdf">lido-v1.0-specification.pdf</tei:ref>, 2.3 History of the schema.</tei:p>

							<tei:p>Editors: Erin Coburn, Richard Light, Jutta Lindenthal, Gordon McKenna (Collections Trust), Regine Stein (Göttingen State and University Library), Axel Vitzthum (digiCULT Verbund e.G.), Michelle Weidling (Göttingen State and University Library).
							</tei:p>
							<tei:p>Contributors: Detlev Balzer, Regine Heuchert (Technoseum), Angela Kailus (Deutsches Dokumentationszentrum für Kunstgeschichte - Bildarchiv Foto Marburg), Herdis Kley (Freie Universität Berlin), Marco Klindt (Zuse Institute Berlin), Markus Matoni (Göttingen State and University Library), Hanna-Lena Meiners (Göttingen State and University Library), Timo Schleier (Göttingen State and University Library and Head Office of the GBV Common Library Network), Francesca Schulze (German National Library), Martin Stricker (Hermann von Helmholtz-Zentrum für Kulturtechnik).
							</tei:p>
							<tei:p>LIDO name and logo courtesy Rob Lancefield.</tei:p>
							<tei:p>Copyright 2009-2021 ICOM-CIDOC for the LIDO Working Group.</tei:p>
							<tei:p><tei:ref target="http://lido-schema.org/schema/v1.1/lido-v1.1.html">LIDO - Lightweight Information Describing Objects Version 1.1</tei:ref> by <tei:ref target="https://cidoc.mini.icom.museum/working-groups/lido/">CIDOC LIDO Working Group</tei:ref> is licensed under <tei:ref targt="https://creativecommons.org/licenses/by/4.0/">CC BY 4.0.</tei:ref></tei:p>
							<tei:licence target="https://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International (CC BY 4.0)</tei:licence>
						</tei:availability>
					</tei:publicationStmt>
				</tei:fileDesc>
			</tei:teiHeader>
		</xs:documentation>
	</xs:annotation>

	<xs:import namespace="http://www.w3.org/XML/1998/namespace" schemaLocation="http://www.w3.org/2001/03/xml.xsd"/>
	<xs:import namespace="http://www.opengis.net/gml" schemaLocation="http://schemas.opengis.net/gml/3.1.1/base/gml.xsd"/>

	<xs:annotation>
		<xs:appinfo>
			<sch:ns uri="http://www.lido-schema.org" prefix="lido"/>
			<sch:ns uri="http://www.w3.org/2002/07/owl#" prefix="owl"/>
			<sch:ns uri="http://www.w3.org/2004/02/skos/core#" prefix="skos"/>
			
			<sch:title>Schematron constraints for LIDO Version 1.1</sch:title>
			<sch:pattern>
				<sch:title>Either free text or index element</sch:title>
				<sch:p>In LIDO v1.1 some text elements are extended to <tei:ref target="#conceptComplexType">conceptComplexType</tei:ref>
					in order to foster controlled indexing in the future. To enable backwards 
					compatibility either elements of <tei:ref target="#textComplexType">textComplexType</tei:ref> or elements of 
					<tei:ref target="#conceptComplexType">conceptComplexType</tei:ref>  
					are allowed. Note that the elements are defined to be mutually exclusive.</sch:p>
				<sch:rule abstract="true" id="sch_MixedContent">
					<sch:assert role="fatal" test="        (skos:Concept or lido:conceptID or lido:term) and not(text()[not(normalize-space(.) = '')] or @xml:lang or @lido:encodinganalog or @lido:label)        or        (text()[normalize-space(.) != ''] and not(skos:Concept or lido:conceptID or lido:term))        or        (not(*) and (not(text()) or normalize-space(.) = ''))        "> Asserts that either an element based on <tei:ref target="#textComplexType">textComplexType</tei:ref> or an element 
						based on <tei:ref target="#conceptComplexType">conceptComplexType</tei:ref> is used for <sch:name/>, but not both at the same time.
						</sch:assert>
				</sch:rule>
			</sch:pattern>

			<sch:pattern>
				<sch:title>conceptComplexType allows only skos:Concept from SKOS namespace</sch:title>
				<sch:p>Asserts that only skos:Concept and not any other class from the SKOS namespace is used for 
					statements about a LIDO element based on <tei:ref target="#conceptComplexType">conceptComplexType</tei:ref>.</sch:p>

				<sch:rule abstract="true" id="sch_SKOS">
					<sch:assert role="fatal" test="not(skos:*[not(self::skos:Concept)])">
						Only skos:Concept should be used as embedded class in <sch:name/> from the SKOS namespace.
					</sch:assert>
				</sch:rule>
			</sch:pattern>

			<sch:pattern>
				<sch:title>skos:Concept allows only SKOS properties</sch:title>
				<sch:p>Asserts that only properties in the domain or range of the skos:Concept 
					Class are used for statements about a LIDO sub-element of <tei:ref target="#conceptComplexType">conceptComplexType</tei:ref>.</sch:p>

				<sch:rule context="skos:Concept" id="sch_SKOS_properties">
					<sch:report role="fatal" test="child::*[namespace-uri() != 'http://www.w3.org/2004/02/skos/core#']">
						Only SKOS properties in the domain or range of the skos:Concept Class are allowed.
					</sch:report>
				</sch:rule>
			</sch:pattern>

			<sch:pattern>
				<sch:title>ComplexType allows only owl:sameAs from OWL namespace</sch:title>
				<sch:p>Asserts that only owl:sameAs and not any other property or class from the 
					OWL namespace is used to state identity equivalence in instances of LIDO elements contained in
					<tei:ref target="#actorComplexType">actorComplexType</tei:ref>,
					<tei:ref target="#eventComplexType">eventComplexType</tei:ref>, 
					<tei:ref target="#legalBodyRefComplexType">legalBodyRefComplexType</tei:ref>, 
					<tei:ref target="#objectComplexType">objectComplexType</tei:ref>,
					<tei:ref target="#placeComplexType">placeComplexType</tei:ref>,
					<tei:ref target="#rightsHolderComplexType">rightsHolderComplexType</tei:ref>.
	              </sch:p>

				<sch:rule abstract="true" id="sch_OWL">
					<sch:assert role="fatal" test="not(owl:*[not(self::owl:sameAs)])"> Only owl:sameAs should be 
						used as embedded property of <sch:name/> from the OWL namespace. </sch:assert>
				</sch:rule>
			</sch:pattern>

			<sch:pattern>
				<sch:title>Values for rightsType@type</sch:title>
				<sch:p>A LIDO <tei:ref target="#rightsType">rightsType</tei:ref> element can either hold the type attribute 'generic' or 'specific', respectively. 
					Since a generic rights type and a specific rights or license statement fall into different logical 
					categories, these types are mutually exclucive.</sch:p>

				<sch:rule abstract="true" id="sch_rightsType">
					<sch:let name="type" value="@lido:type"/>
					<sch:let name="sibling_type" value="following-sibling::lido:rightsType[@lido:type]"/>
					<sch:assert role="fatal" test="       @lido:type = 'http://terminology.lido-schema.org/lido00920'       and not(preceding-sibling::lido:rightsType[@lido:type = 'http://terminology.lido-schema.org/lido00921'])       or       @lido:type = 'http://terminology.lido-schema.org/lido00921'       and not(preceding-sibling::lido:rightsType[@lido:type = 'http://terminology.lido-schema.org/lido00920'])       or count(parent::*/lido:rightsType) = 1 and not(@lido:type)       ">
						<sch:value-of select="name(parent::*)"/> can either hold a specific or a generic lido:rightsType@lido:type (mutually exclusive). If lido:rightsType@lido:type is used in <sch:value-of select="name(parent::*)"/>, it must be used in all <sch:value-of select="name(parent::*)"/>.
					</sch:assert>
				</sch:rule>
			</sch:pattern>

			<sch:pattern>
				<sch:title>Possible values for lido:rightsType@lido:type</sch:title>
				<sch:p>In LIDO v1.1 a type attribute is introduced for the LIDO <tei:ref target="#rightsType">rightsType</tei:ref> element 
					in order to discern generic rights and specific ones.
					This rule asserts that only the URIs for these two types of rights are used when the type attribte is set.</sch:p>

				<sch:rule abstract="true" id="sch_rightsType_type">
					<sch:assert role="warn" test="(@lido:type = 'http://terminology.lido-schema.org/lido00920' or @lido:type = 'http://terminology.lido-schema.org/lido00921')       or not(@lido:type)">
						@lido:type can either be omitted or must hold one of the following URIs: http://terminology.lido-schema.org/lido00920, http://terminology.lido-schema.org/lido00921.
					</sch:assert>
				</sch:rule>
			</sch:pattern>

			<sch:pattern>
				<sch:title>lido:collection must contain lido:objectName</sch:title>
				<sch:p>Asserts that lido:collection contains at least lido:object/lido:objectName.</sch:p>
				<sch:rule abstract="true" id="sch_collection">
					<sch:assert role="fatal" test="lido:object/lido:objectName">
						lido:collection must contain lido:object/lido:objectName.
					</sch:assert>
				</sch:rule>
			</sch:pattern>

		</xs:appinfo>
	</xs:annotation>

	<xs:complexType name="actorComplexType" id="actorComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Defines identifying and indexing information about an actor.</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:sequence>
			<xs:element name="actorID" type="lido:identifierComplexType" minOccurs="0" maxOccurs="unbounded" id="actorID">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An identifier for the actor.<br/>
							Repeatable for identifiers from different authority files or other sources. 
							The recommended method, however, is to reference equivalent resources using the 
							<tei:ref target="https://www.w3.org/TR/owl-ref/#sameAs-def">owl:sameAs</tei:ref> property, 
							stating that two or more URIs identify the same individual entity.</tei:ab>
						<tei:ab type="label">Actor Identifier</tei:ab>
						
						
					</xs:documentation>
				</xs:annotation>
			</xs:element>
			<xs:any minOccurs="0" maxOccurs="unbounded" processContents="skip" namespace="http://www.w3.org/2002/07/owl#"/>
			<xs:element name="nameActorSet" type="lido:appellationComplexType" maxOccurs="unbounded" id="nameActorSet">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A set of one or more names for an actor
							and the source from where it is taken. Comprises the proper name,
							further appellations, pseudonyms, or other designations by which an
							individual <em>person</em> or a <em>group of persons</em>, such as an <em>organization</em> or a <em>family</em> is known.<br/>
							Repeated to record different sources for multiple appellations.</tei:ab>
						<tei:ab type="note">Indicates names, appellations or other identifiers
							assigned to a <em>person</em> or a <em>group of persons</em>, such as an <em>organization</em> or a
							<em>family</em>.</tei:ab>
						<tei:ab type="label">Name Actor Set</tei:ab>
						
												
				    </xs:documentation>
				</xs:annotation>
			</xs:element>
			<xs:element name="nationalityActor" minOccurs="0" maxOccurs="unbounded" id="nationalityActor">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An index element for the national,
							geopolitical, cultural, or ethnic origin or affiliation of the
							actor.</tei:ab>
						<tei:ab type="label">Nationality Actor</tei:ab>
						
						
						<tei:ab type="dataValues">Controlled terminology</tei:ab>
						<tei:ab type="recommendation">Linked open vocabulary for
							<tei:ref target="../../documents/terminology-recommendation.html#nationalityActor">Nationality Actor</tei:ref></tei:ab>
					</xs:documentation>

					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:nationalityActor">
								<sch:extends rule="sch_SKOS"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
				<xs:complexType>
					<xs:complexContent>
						<xs:extension base="lido:conceptComplexType">
							<xs:attribute ref="lido:sortorder"/>
							<xs:attribute ref="lido:type" id="nationalityActor_type">
								<xs:annotation>
									<xs:documentation>
										<tei:ab type="description">
											An attribute designating the particular kind of actor affiliation, 
											such as to a country, culture, or an ethnic group.</tei:ab>
										<tei:ab type="dataValues">Controlled terminology</tei:ab>
										<tei:ab type="recommendation">LIDO Terminology for
											<tei:ref target="terminology-recommendation.html#nationalityActor_type">Type of Nationality Actor</tei:ref></tei:ab>
									</xs:documentation>
								</xs:annotation>
							</xs:attribute>
						</xs:extension>
					</xs:complexContent>
				</xs:complexType>
			</xs:element>
			<xs:element name="vitalDatesActor" minOccurs="0" maxOccurs="unbounded" id="vitalDatesActor">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A set of structured information about the date of birth
							and death of a <em>person</em>, where applicable; or date of formation and
							dissolution of a <em>group of persons</em>, respectively.</tei:ab>
						<tei:ab type="label">Vital Dates Actor</tei:ab>
						
						
						<tei:ab type="dataValues">Controlled format</tei:ab>
						<tei:ab type="recommendation"><tei:ref target="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601: Representation of dates and times</tei:ref>.</tei:ab>.
					</xs:documentation>
				</xs:annotation>
				<xs:complexType>
					<xs:complexContent>
						<xs:extension base="lido:dateComplexType">
							<xs:attribute ref="lido:type" id="vitalDatesActor_type">
								<xs:annotation>
									<xs:documentation>
										<tei:ab type="description">An attribute for the kind
											of date with respect to the biography of a <em>person</em>, or
											the life cycle of a <em>group of persons</em>.<br/>
											Examples may include <em>birth date</em>, <em>death date</em>, or <em>founding date</em>,
											respectively.</tei:ab>
									    	<tei:ab type="dataValues">Controlled terminology</tei:ab>
										<tei:ab type="recommendation">LIDO Terminology for
											<tei:ref target="../../documents/terminology-recommendation.html#vitalDatesActor_type">Type of Vital Dates Actor</tei:ref></tei:ab>
									</xs:documentation>
								</xs:annotation>
							</xs:attribute>
						</xs:extension>
					</xs:complexContent>
				</xs:complexType>
			</xs:element>
			<xs:element name="vitalPlaceActor" minOccurs="0" maxOccurs="unbounded" id="vitalPlaceActor">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An index element for the place where the
							<em>person</em> was born, died, or is or was active, where applicable; or the
							location where a <em>group of persons</em> was formed, dissolved or is or was
							active, respectively.<br/>
							If the place is in dispute, omit the place.</tei:ab>
						<tei:ab type="label">Vital Place Actor</tei:ab>
						<tei:ab type="dataValues">Controlled terminology</tei:ab>
						
						
						<tei:ab type="recommendation">Linked open authority file for
							<tei:ref target="../../documents/terminology-recommendation.html#place">Place</tei:ref>
						</tei:ab>
					</xs:documentation>
					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:vitalPlaceActor">
								<sch:extends rule="sch_OWL"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
				<xs:complexType>
					<xs:complexContent>
						<xs:extension base="lido:placeComplexType">
							<xs:attribute ref="lido:type" id="vitalPlaceActor_type">
								<xs:annotation>
									<xs:documentation>
										<tei:ab type="description">An attribute for the kind
											of place with respect to the biography of a <em>person</em>, or
											the life cycle of a <em>group of persons</em>. Examples may
											include <em>birth place</em>, <em>death place</em>, or <em>founding place</em>,
											respectively.</tei:ab>
									    	<tei:ab type="dataValues">Controlled terminology</tei:ab>
										<tei:ab type="recommendation">LIDO Terminology for
											<tei:ref target="../../documents/terminology-recommendation.html#vitalPlaceActor_type">Type of Vital Place Actor</tei:ref></tei:ab>
									</xs:documentation>
								</xs:annotation>
							</xs:attribute>
						</xs:extension>
					</xs:complexContent>
				</xs:complexType>
			</xs:element>
			<xs:element name="genderActor" minOccurs="0" maxOccurs="unbounded" id="genderActor">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An index element for the sex assigned at birth
							or the gender identity of an actor; most often <em>female</em> or <em>male</em>.
							Usually not applicable to a group of persons.</tei:ab>
						<tei:ab type="label">Gender Actor</tei:ab>
						
						
						<tei:ab type="dataValues">Controlled terminology</tei:ab>
						<tei:ab type="recommendation">LIDO Terminology for
							<tei:ref target="../../documents/terminology-recommendation.html#genderActor">Gender Actor</tei:ref></tei:ab>
					</xs:documentation>
					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:genderActor">
								<sch:extends rule="sch_MixedContent"/>
								<sch:extends rule="sch_SKOS"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
				<xs:complexType>
					<xs:complexContent>
						<xs:extension base="lido:conceptMixedComplexType">
							<xs:attribute ref="lido:type" id="genderActor_type">
								<xs:annotation>
								<xs:documentation>
									<tei:ab type="description">An attribute indicating whether the indexing term refers to either
										sex as a biological characteristic, or gender as a social or cultural distinction.
										If a distinction between sex or gender cannot be made or is not relevant,
										the (default) type attribute <em>Sex or gender</em> is suitable.
									</tei:ab>
									<tei:ab type="dataValues">Controlled terminology</tei:ab>
									<tei:ab type="recommendation">LIDO Terminology for
										<tei:ref target="../../documents/terminology-recommendation.html#genderActor_type">Type of Gender Actor</tei:ref></tei:ab>
								</xs:documentation>
							  </xs:annotation>
							</xs:attribute>
						</xs:extension>
					</xs:complexContent>
				</xs:complexType>
			</xs:element>
		</xs:sequence>
		<xs:attribute ref="lido:type" id="actor_type">
			<xs:annotation>
				<xs:documentation>
					<tei:ab type="description">An attribute indicating whether the actor is an
						individual <em>person</em> or a <em>group of persons</em>, such as a an <em>organization</em> or a
						<em>family</em>.</tei:ab>
					<tei:ab type="dataValues">Controlled terminology</tei:ab>
					<tei:ab type="recommendation">LIDO Terminology for
						<tei:ref target="../../documents/terminology-recommendation.html#actor_type">Type of Actor</tei:ref></tei:ab>
				</xs:documentation>
			</xs:annotation>
		</xs:attribute>
	</xs:complexType>
	<xs:complexType name="actorInRoleComplexType" id="actorInRoleComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Defines actor information with role, attribution and
					extent, where applicable, related to the event the actor participated in or was
					present at.</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:sequence>
			<xs:element name="actor" type="lido:actorComplexType" id="actor_actorInRoleComplexType">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A wrapper for identifying and indexing information
							about an actor with role statement.</tei:ab>
						<tei:ab type="label">Actor</tei:ab>
						
						
					</xs:documentation>
					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:actor">
								<sch:extends rule="sch_OWL"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
			</xs:element>
			<xs:element name="roleActor" minOccurs="0" maxOccurs="unbounded" id="roleActor">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An index element for the role or activity
							performed by an actor in the context of the event in focus.<br/>
							Examples may include <em>designer</em>, <em>painter</em>, or <em>publisher</em>.</tei:ab>
						<tei:ab type="label">Role Actor</tei:ab>
						
						
						<tei:ab type="dataValues">Controlled terminology</tei:ab>
						<tei:ab type="recommendation">Linked open vocabulary for
							<tei:ref target="../../documents/terminology-recommendation.html#roleActor">Role Actor</tei:ref></tei:ab>
					</xs:documentation>

					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:roleActor">
								<sch:extends rule="sch_SKOS"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
				<xs:complexType>
					<xs:complexContent>
						<xs:extension base="lido:conceptComplexType">
							<xs:attribute ref="lido:sortorder"/>
						</xs:extension>
					</xs:complexContent>
				</xs:complexType>
			</xs:element>
			<xs:element name="attributionQualifierActor" type="lido:conceptMixedComplexType" minOccurs="0" maxOccurs="unbounded" id="attributionQualifierActor">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An index element qualifying the attribution of an
							actor.<br/>
							Applicable when the attribution is uncertain or in dispute, when
							there is more than one actor, or when the attribution otherwise requires
							explanation.<br/>
							Examples may include <em>attributed to</em>, <em>studio of</em>, or <em>style
							of</em>.</tei:ab>
						<tei:ab type="label">Attribution Qualifier Actor</tei:ab>
						
						
						<tei:ab type="dataValues">Controlled terminology</tei:ab>
						<tei:ab type="recommendation">Linked open vocabulary for
							<tei:ref target="../../documents/terminology-recommendation.html#attributionQualifierActor">Attribution Qualifier Actor</tei:ref></tei:ab>
					</xs:documentation>
					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:attributionQualifierActor">
								<sch:extends rule="sch_MixedContent"/>
								<sch:extends rule="sch_SKOS"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
			</xs:element>
			<xs:element name="extentActor" type="lido:conceptMixedComplexType" minOccurs="0" maxOccurs="unbounded" id="extentActor">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An index element for the specific part of
							the object/work contributed by a particular actor in the respective
							event.<br/>
							Applicable if there is more than one actor.</tei:ab>
						<!-- Example:  -->
						<tei:ab type="label">Extent Actor</tei:ab>
						
						
						<tei:ab type="dataValues">Controlled terminology</tei:ab>
						<tei:ab type="recommendation">Linked open vocabulary for
							<tei:ref target="../../documents/terminology-recommendation.html#extentActor">Extent Actor</tei:ref></tei:ab>
					</xs:documentation>

					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:extentActor">
								<sch:extends rule="sch_MixedContent"/>
								<sch:extends rule="sch_SKOS"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
			</xs:element>
			<xs:element name="sourceActorInRole" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded" id="sourceActorInRole">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A text element identifying the source of the provided information about 
							an actor and the role or attribution of this actor related to the event in focus.<br/> 
							Whenever possible, a published source should be given.
						</tei:ab>
						<tei:ab type="label">Source Actor in Role</tei:ab>
						<tei:ab type="dataValues">Free text</tei:ab>
						
						
					</xs:documentation>
				</xs:annotation>
			</xs:element>
		</xs:sequence>
	</xs:complexType>
	<xs:complexType name="actorInRoleSetComplexType" id="actorInRoleSetComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Defines display and index elements for an
					actor with role information.</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:sequence>
			<xs:element name="displayActorInRole" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded" id="displayActorInRole">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A display element for an actor and the specific role or activity performed by the actor, 
							corresponding to the subsequent <tei:ref target="#actorInRole">Actor in Role</tei:ref> element.<br/>
							May include name and brief biographical information on the actor.<br/>
							Repeated for language variants only.</tei:ab>
							<tei:ab type="label">Display Actor in Role</tei:ab>
						<tei:ab type="dataValues">Free text</tei:ab>
						
						
					</xs:documentation>
				</xs:annotation>
			</xs:element>
			<xs:element name="actorInRole" type="lido:actorInRoleComplexType" minOccurs="0" id="actorInRole">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A wrapper for information about an actor and the
							role or activity performed by this actor in context of the event.<br/>
							Includes information about attribution and extent, where applicable.
							</tei:ab>
						<tei:ab type="label">Actor in Role</tei:ab>
						
						
					</xs:documentation>
				</xs:annotation>
			</xs:element>
		</xs:sequence>
	</xs:complexType>
	<xs:complexType name="actorSetComplexType" id="actorSetComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Defines display and index elements for an actor.</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:sequence>
			<xs:element name="displayActor" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded" id="displayActor">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A display element for an actor, corresponding to the subsequent <tei:ref target="#actor_actorSetComplexType">Actor</tei:ref> element.<br/>
							Repeated for language variants only.</tei:ab>
						<tei:ab type="label">Display Actor</tei:ab>
						
						
						<tei:ab type="dataValues">Free text</tei:ab>
					</xs:documentation>
				</xs:annotation>
			</xs:element>
			<xs:element name="actor" type="lido:actorComplexType" minOccurs="0" id="actor_actorSetComplexType">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A wrapper for identifying and indexing information
							about an actor with role statement.</tei:ab>
						<tei:ab type="label">Actor</tei:ab>
						
						
					</xs:documentation>
					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:actor">
								<sch:extends rule="sch_OWL"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
			</xs:element>
		</xs:sequence>
	</xs:complexType>
	<xs:attribute name="addedSearchTerm" default="no" id="addedSearchTerm">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">An attribute indicating that the term in the index element has
					been added to enhance retrieval options. The term may be a synonym, a generic
					term, or an equivalent term in an additional language, taken from a local or
					public controlled vocabulary.</tei:ab>
				<tei:ab type="dataValues">Controlled values</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:simpleType>
			<xs:restriction base="xs:string">
				<xs:enumeration value="yes"/>
				<xs:enumeration value="no"/>
			</xs:restriction>
		</xs:simpleType>
	</xs:attribute>
	<xs:element name="administrativeMetadata" type="lido:administrativeMetadataComplexType" id="administrativeMetadata">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Aggregates the administrative metadata for an object/work record.<br/>
					Repeated once for each language for multilingual resources.<br/>
					Please note that the repeatability can vary depending on whether the element is used as root element (not repeatable) or as a child element (repeatable).</tei:ab>
				<tei:ab type="label">Administrative Metadata</tei:ab>
			</xs:documentation>
		</xs:annotation>
	</xs:element>
	<xs:complexType name="administrativeMetadataComplexType" id="administrativeMetadataComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Defines the administrative metadata for an object/work record.</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:sequence>
			<xs:element ref="lido:rightsWorkWrap" minOccurs="0"/>
			<xs:element ref="lido:recordWrap"/>
			<xs:element ref="lido:resourceWrap" minOccurs="0"/>
		</xs:sequence>
		<xs:attribute ref="xml:lang" use="required"/>
	</xs:complexType>
	<xs:complexType name="appellationComplexType" id="appellationComplexType">
		<xs:annotation>
			<xs:documentation>
			    <tei:ab type="description">Defines appellation information about an
					individual entity, for instance a name or title, including the preference role, such as 
			    	<em>preferred</em> or <em>alternative</em>.</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:sequence>
			<xs:element name="appellationValue" maxOccurs="unbounded" id="appellationValue">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A text element for the name of an individual entity, like the
							title of a work, a proper name of an actor, or a place name.<br/>
							Repeated to record different sources for multiple appellations.</tei:ab>
						<tei:ab type="label">Appellation Value</tei:ab>
						<tei:ab type="dataValues">Free text</tei:ab>
												
						
												
						
												
						
					</xs:documentation>
				</xs:annotation>
				<xs:complexType>
					<xs:simpleContent>
						<xs:extension base="xs:string">
							<xs:attribute ref="lido:pref"/>
							<xs:attributeGroup ref="lido:textAttributesSet"/>
						</xs:extension>
					</xs:simpleContent>
				</xs:complexType>
			</xs:element>
			<xs:element name="sourceAppellation" minOccurs="0" maxOccurs="unbounded" id="sourceAppellation">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A text element identifying the source of the appellation, generally a
							published source.</tei:ab>
						<tei:ab type="label">Source Appellation</tei:ab>
						<tei:ab type="dataValues">Free text</tei:ab>
						
						
					</xs:documentation>
				</xs:annotation>
				<xs:complexType>
					<xs:simpleContent>
						<xs:extension base="xs:string">
							<xs:attribute ref="xml:lang"/>
							<xs:attribute ref="lido:encodinganalog"/>
							<xs:attribute ref="lido:label"/>
						</xs:extension>
					</xs:simpleContent>
				</xs:complexType>
			</xs:element>
		</xs:sequence>
	</xs:complexType>
	<xs:element name="classificationWrap" id="classificationWrap">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">A wrapper for assignments of the object/work in focus to
					one or more classification schemes, and the type of scheme used.</tei:ab>
				<tei:ab type="label">Classification Wrapper</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:complexType>
			<xs:sequence>
				<xs:element name="classification" minOccurs="0" maxOccurs="unbounded" id="classification">
					<xs:annotation>
						<xs:documentation>
							<tei:ab type="description">An index element assigning an object/work to
								a classification or other vocabulary scheme that groups similar
								objects together on the basis of defined characteristics.<br/>
								Repeated if the object/work is assigned to multiple schemes.</tei:ab>
							<tei:ab type="label">Classification</tei:ab>
							<tei:ab type="dataValues">Controlled terminology</tei:ab>
						    
							
							<tei:ab type="recommendation">Linked open vocabulary for
								<tei:ref target="../../documents/terminology-recommendation.html#classification">Classification</tei:ref>
							</tei:ab>
						</xs:documentation>

						<xs:appinfo>
							<sch:pattern>
								<sch:rule context="lido:classification">
									<sch:extends rule="sch_SKOS"/>
								</sch:rule>
							</sch:pattern>
						</xs:appinfo>
					</xs:annotation>
					<xs:complexType>
						<xs:complexContent>
							<xs:extension base="lido:conceptComplexType">
								<xs:attribute ref="lido:type" id="classification_type">
									<xs:annotation>
										<xs:documentation>
											<tei:ab type="description">An attribute for the particular kind of scheme
												used for the classification of an object/work, whether it is, for instance,
												based on object genres or subject categories.</tei:ab>
											<tei:ab type="dataValues">Controlled terminology</tei:ab>
											<tei:ab type="recommendation">LIDO Terminology for
												<tei:ref target="../../documents/terminology-recommendation.html#classification_type">Type of Classification</tei:ref></tei:ab>
										</xs:documentation>
									</xs:annotation>
								</xs:attribute>
								<xs:attribute ref="lido:sortorder"/>
							</xs:extension>
						</xs:complexContent>
					</xs:complexType>
				</xs:element>
			</xs:sequence>
		</xs:complexType>
	</xs:element>
	<xs:complexType name="conceptComplexType" mixed="false" id="conceptComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Defines identifiers and terms for a generic concept.<br/>
					A concept is an abstract entity existing in the mind as a unit of thought,
					expressed by one or more terms.</tei:ab>
			</xs:documentation>
		</xs:annotation>

		<xs:complexContent>
			<xs:restriction base="lido:conceptMixedComplexType">
				<xs:group ref="lido:conceptElementsSet"/>
			</xs:restriction>
		</xs:complexContent>
	</xs:complexType>
	<xs:complexType name="dateComplexType" id="dateComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Defines an expression of the date.</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:sequence>
			<xs:element name="earliestDate" minOccurs="0" id="earliestDate">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An index element for the expression of an exact or estimated date, for
							instance a year or calendar date, that delimits the beginning of a date span.
						</tei:ab>
						<tei:ab type="label">Earliest Date</tei:ab>
						
						
						<tei:ab type="dataValues">Controlled format</tei:ab>
						<tei:ab type="recommendation"><tei:ref target="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601: Representation of dates and times</tei:ref>.
						</tei:ab>
					</xs:documentation>
				</xs:annotation>
				<xs:complexType>
					<xs:simpleContent>
						<xs:extension base="xs:string">
							<xs:attribute ref="lido:type" id="earliestDate_type">
								<xs:annotation>
									<xs:documentation>
										<tei:ab type="description">An attribute for the kind of earliest date,
											whether it is <em>exact</em> or <em>estimated</em>.</tei:ab>
										<tei:ab type="dataValues">Controlled terminology</tei:ab>
										<tei:ab type="recommendation">LIDO Terminology for <tei:ref target="../../documents/terminology-recommendation.html#earliestDate_type">Type of Earliest Date</tei:ref></tei:ab>
									</xs:documentation>
								</xs:annotation>
							</xs:attribute>
							<xs:attribute ref="lido:source"/>
							<xs:attribute ref="lido:encodinganalog"/>
							<xs:attribute ref="lido:label"/>
						</xs:extension>
					</xs:simpleContent>
				</xs:complexType>
			</xs:element>
			<xs:element name="latestDate" minOccurs="0" id="latestDate">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An index element for the expression of the exact or approximate date, for
							instance a year or calendar date, that delimits the end of a date span.</tei:ab>
					    <tei:ab type="label">Latest Date</tei:ab>
						
						
						<tei:ab type="dataValues">Controlled format</tei:ab>
						<tei:ab type="recommendation"><tei:ref target="https://www.iso.org/iso-8601-date-and-time-format.html">
							ISO 8601: Representation of dates and times</tei:ref>.</tei:ab>
					</xs:documentation>
				</xs:annotation>
				<xs:complexType>
					<xs:simpleContent>
						<xs:extension base="xs:string">
							<xs:attribute ref="lido:type" id="latestDate_type">
								<xs:annotation>
									<xs:documentation>
										<tei:ab type="description">An attribute for the kind
											of latest date, whether it is, for instance, <em>exact</em> or
											<em>estimated</em>.</tei:ab>
										<tei:ab type="dataValues">Controlled terminology</tei:ab>
										<tei:ab type="recommendation">LIDO Terminology for
											<tei:ref target="../../documents/terminology-recommendation.html#latestDate_type">Type of Latest Date</tei:ref></tei:ab>
									</xs:documentation>
								</xs:annotation>
							</xs:attribute>
							<xs:attribute ref="lido:source"/>
							<xs:attribute ref="lido:encodinganalog"/>
							<xs:attribute ref="lido:label"/>
						</xs:extension>
					</xs:simpleContent>
				</xs:complexType>
			</xs:element>
		</xs:sequence>
	</xs:complexType>
	<xs:complexType name="dateSetComplexType" id="dateSetComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description"> Defines display and index elements for date
					information.</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:sequence>
			<xs:element name="displayDate" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded" id="displayDate">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A display element for date information, corresponding to the subsequent <tei:ref target="#date">Date</tei:ref> element.<br/>
							Repeated for language variants only.</tei:ab>
						<tei:ab type="label">Display Date</tei:ab>
						
						
						<tei:ab type="dataValues">Free text</tei:ab>
					</xs:documentation>
				</xs:annotation>
			</xs:element>
			<xs:element name="date" type="lido:dateComplexType" minOccurs="0" id="date">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A wrapper for the expression of a date by providing a set of years as earliest and latest date
							delimiting the respective span of time, usually given in the proleptic Gregorian calendar.<br/>
							If it is an exact date, possibly with time, repeat the same date (and time) in <tei:ref target="#earliestDate">Earliest Date</tei:ref>
							and <tei:ref target="#latestDate">Latest Date</tei:ref> elements.</tei:ab>
						<tei:ab type="label">Date</tei:ab>
						
						
					</xs:documentation>
				</xs:annotation>
			</xs:element>
		</xs:sequence>
	</xs:complexType>
	<xs:element name="descriptiveMetadata" type="lido:descriptiveMetadataComplexType" id="descriptiveMetadata">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Aggregates the descriptive metadata of an object/work record.<br/>
					The attribute xml:lang is mandatory to state the language of the metadata.<br/>
					Repeated for fully multilingual resources, once for each language.<br/>
					Please note that the repeatability can vary depending on whether the element is used as root element (not repeatable) 
					or as a child element (repeatable).</tei:ab>
				<tei:ab type="label">Descriptive Metadata</tei:ab>
			</xs:documentation>
		</xs:annotation>
	</xs:element>
	<xs:complexType name="descriptiveMetadataComplexType" id="descriptiveMetadataComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Defines the descriptive metadata for an object/work
					record.</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:sequence>
			<xs:element ref="lido:objectClassificationWrap">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A wrapper for classification statements about the
							object/work in focus, including object/work type and classification.</tei:ab>
					</xs:documentation>
				</xs:annotation>
			</xs:element>
			<xs:element ref="lido:objectIdentificationWrap"/>
			<xs:element ref="lido:eventWrap" minOccurs="0"/>
			<xs:element ref="lido:objectRelationWrap" minOccurs="0"/>
		</xs:sequence>
		<xs:attribute ref="xml:lang" use="required"/>
	</xs:complexType>
	<xs:complexType name="descriptiveNoteComplexType" id="descriptiveNoteComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Defines any textual description, including
					description identifier, descriptive note and sources.</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:sequence>
			<xs:element name="descriptiveNoteID" type="lido:identifierComplexType" minOccurs="0" maxOccurs="unbounded" id="descriptiveNoteID">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An identifier for an external resource describing
							the element in focus.<br/>
							The reference resource may be any kind of resource, preferably web-accessible.</tei:ab>
						<tei:ab type="note">The referenced resource may be any kind of document,
							preferably web-accessible.</tei:ab>
						<tei:ab type="label">Description/Descriptive Note Identifier</tei:ab>
					</xs:documentation>
				</xs:annotation>
			</xs:element>
			<xs:element name="descriptiveNoteValue" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded" id="descriptiveNoteValue">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A textual description of the element in focus,
							such as an object/work or an event, usually a brief essay-like text.<br/>
							Repeated for language variants only.</tei:ab>
						<tei:ab type="label">Description/Descriptive Note</tei:ab>
						
						
						<tei:ab type="dataValues">Free text</tei:ab>
					</xs:documentation>
				</xs:annotation>
			</xs:element>
			<xs:element name="sourceDescriptiveNote" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded" id="sourceDescriptiveNote">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A text element identifying the source of the descriptive note, generally a
							published source.</tei:ab>
						<tei:ab type="label">Source Description/Descriptive Note</tei:ab>
						<tei:ab type="dataValues">Free text</tei:ab>
						
						
					</xs:documentation>
				</xs:annotation>
			</xs:element>
		</xs:sequence>
		<xs:attribute ref="lido:type" id="descriptiveNote_type">
			<xs:annotation>
				<xs:documentation>
					<tei:ab type="description">An attribute for the particular kind of descriptive note.<br/>
					 Note that this type attribute is primarily intended for use in application profiles.</tei:ab>
					<tei:ab type="dataValues">Controlled terminology</tei:ab>
					<tei:ab type="recommendation">To be determined by application profiles.</tei:ab>
				</xs:documentation>
			</xs:annotation>
		</xs:attribute>
		<xs:attribute ref="lido:sortorder"/>
	</xs:complexType>
	<xs:element name="displayStateEditionWrap" id="displayStateEditionWrap">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">A wrapper for the display of state and edition
					information on the object/work.</tei:ab>
				<tei:ab type="label">Display State/Edition Wrapper</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:complexType>
			<xs:sequence>
				<xs:element name="displayState" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded" id="displayState">
					<xs:annotation>
						<xs:documentation>
							<tei:ab type="description">A display element for a description of the
								state of the object/work, used primarily for prints and other
								multiples, including state identification and known states, as
								appropriate.<br/>
								Repeated for language variants only.</tei:ab>
							<tei:ab type="label">Display State</tei:ab>
							<tei:ab type="dataValues">Free text</tei:ab>
							
							
						</xs:documentation>
					</xs:annotation>
				</xs:element>
				<xs:element name="displayEdition" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded" id="displayEdition">
					<xs:annotation>
						<xs:documentation>
							<tei:ab type="description">A display element for indicating a particular
								edition to which the object/work belongs, used primarily for prints
								and other multiples.<br/>
								Repeated for language variants only.</tei:ab>
							<tei:ab type="label">Display Edition</tei:ab>
							
							
							<tei:ab type="dataValues">Free text</tei:ab>
						</xs:documentation>
					</xs:annotation>
				</xs:element>
				<xs:element name="sourceStateEdition" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded" id="sourceStateEdition">
					<xs:annotation>
						<xs:documentation>
							<tei:ab type="description">A text element identifying the source of the provided information about 
								the state or edition of the entity in focus.</tei:ab>
							<tei:ab type="label">Source Display State/Edition</tei:ab>
							<tei:ab type="dataValues">Free text</tei:ab>
							
							
							
							
						</xs:documentation>
					</xs:annotation>
				</xs:element>
			</xs:sequence>
		</xs:complexType>
	</xs:element>
	<xs:attribute name="encodinganalog" type="xs:string" id="encodinganalog">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">An attribute for the internal field label in the
					source database from which the data were migrated. The source format is
					indicated in the attribute <tei:ref target="#relatedencoding">relatedencoding</tei:ref> of the
					<tei:ref target="#lidoWrap">LIDO Wrapper</tei:ref> for the whole document.</tei:ab>
				<tei:ab type="dataValues">Free text</tei:ab>
			</xs:documentation>
		</xs:annotation>
	</xs:attribute>
	<xs:complexType name="eventComplexType" id="eventComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Defines information about one event associated with
					the object/work in focus.</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:sequence>
			<xs:element name="eventID" type="lido:identifierComplexType" minOccurs="0" maxOccurs="unbounded" id="eventID">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An identifier for the event.<br/>
							Repeatable for identifiers from different authority files or other sources. 
							The recommended method, however, is to reference equivalent resources using the 
							<tei:ref target="https://www.w3.org/TR/owl-ref/#sameAs-def">owl:sameAs</tei:ref>
							property, stating that two or more URIs identify the same individual entity.</tei:ab>
						<tei:ab type="label">Event Identifier</tei:ab>
						
						
					</xs:documentation>
				</xs:annotation>
			</xs:element>
			<xs:any minOccurs="0" maxOccurs="unbounded" processContents="skip" namespace="http://www.w3.org/2002/07/owl#"/>
			<xs:element name="eventType" type="lido:conceptComplexType" id="eventType">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An index element for the particular kind of event
							the object/work participated in or was present at.</tei:ab>
						<tei:ab type="label">Event Type</tei:ab>
						<tei:ab type="dataValues">Controlled terminology</tei:ab>
						
						

							<tei:ab type="recommendation">LIDO Terminology for
							<tei:ref target="../../documents/terminology-recommendation.html#eventType">Event Type</tei:ref></tei:ab>
					</xs:documentation>

					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:eventType">
								<sch:extends rule="sch_SKOS"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
			</xs:element>
			<xs:element name="roleInEvent" type="lido:conceptComplexType" minOccurs="0" maxOccurs="unbounded" id="roleInEvent">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An index element for the role played by
							the described entity within the event in focus.</tei:ab>
						<tei:ab type="label">Role in Event</tei:ab>
						<tei:ab type="dataValues">Controlled terminology</tei:ab>
						<tei:ab type="recommendation">Linked open vocabuary for
							<tei:ref target="../../documents/terminology-recommendation.html#roleInEvent">Role in Event</tei:ref></tei:ab>
					</xs:documentation>

					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:roleInEvent">
								<sch:extends rule="sch_SKOS"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
			</xs:element>
			<xs:element name="eventName" type="lido:appellationComplexType" minOccurs="0" maxOccurs="unbounded" id="eventName">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A text element for the event as an individual
							entity, such as a title or a proper name.</tei:ab>
						<tei:ab type="label">Event Name</tei:ab>
						
						
					</xs:documentation>
				</xs:annotation>
			</xs:element>
			<xs:element name="eventActor" minOccurs="0" maxOccurs="unbounded" id="eventActor">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A set of display and index elements for an
							actor participating in or being present at the event, including
							role information.<br/>
							Repeated if multiple actors are involved in the event.</tei:ab>
						<tei:ab type="label">Event Actor</tei:ab>
						
						
					</xs:documentation>
				</xs:annotation>
				<xs:complexType>
					<xs:complexContent>
						<xs:extension base="lido:actorInRoleSetComplexType">
							<xs:attribute ref="lido:sortorder"/>
						</xs:extension>
					</xs:complexContent>
				</xs:complexType>
			</xs:element>
			<xs:element name="culture" minOccurs="0" maxOccurs="unbounded" id="culture">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An index element for the cultural context from which the object/work
							in focus originated.<br/>
							Used if the creator or producer is unknown, or if the cultural context is of particular interest.<br/>
							Examples may include the name of a culture, a nation, or an ethnic group.</tei:ab>
						<tei:ab type="label">Culture</tei:ab>
						<tei:ab type="dataValues">Controlled terminology</tei:ab>
						
						
								<tei:ab type="recommendation">Linked open vocabulary for
							<tei:ref target="../../documents/terminology-recommendation.html#culture">Culture</tei:ref></tei:ab>
					</xs:documentation>

					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:culture">
								<sch:extends rule="sch_SKOS"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
				<xs:complexType>
					<xs:complexContent>
						<xs:extension base="lido:conceptComplexType">
							<xs:attribute ref="lido:sortorder"/>
						</xs:extension>
					</xs:complexContent>
				</xs:complexType>
			</xs:element>
			<xs:element name="eventDate" type="lido:dateSetComplexType" minOccurs="0" id="eventDate">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A wrapper for structured information about the date or range of
							dates the event in focus took place.</tei:ab>
						<tei:ab type="label">Event Date</tei:ab>
						
						
					</xs:documentation>
				</xs:annotation>
			</xs:element>
			<xs:element name="periodName" minOccurs="0" maxOccurs="unbounded" id="periodName">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An index element for the period in which the event happened, comprising information
							about geologic time scale, archaelogical, historical, or artistic period, style, or art movement,
							whose characteristics are represented by the object or work.<br/>
							Note that "Period/Style" corresponds to "Style" in CDWA as shorthand for
							<tei:ref target="https://www.getty.edu/research/publications/electronic_publications/cdwa/17styles.html">Style/Period/Group/Movement/Dynasty</tei:ref>.<br/>
							Examples may be <em>Neolithic</em> for a period, <em>Impressionist</em> for a style, or <em>Cubism</em> for a movement.
						</tei:ab>
						<tei:ab type="label">Period/Style</tei:ab>
						
						
						<tei:ab type="dataValues">Controlled terminology</tei:ab>
						<tei:ab type="recommendation">Linked open vocabulary for
							<tei:ref target="../../documents/terminology-recommendation.html#periodName">Period/Style</tei:ref>
						</tei:ab>
					</xs:documentation>

					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:periodName">
								<sch:extends rule="sch_SKOS"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
				<xs:complexType>
					<xs:complexContent>
						<xs:extension base="lido:conceptComplexType">
							<xs:attribute ref="lido:type" id="periodName_type">
								<xs:annotation>
									<xs:documentation>
										<tei:ab type="description">An attribute for the particular kind of period information,
											whether it refers to, for instance, artistic styles, historical periods, or art movements.</tei:ab>
										<tei:ab type="dataValues">Controlled terminology</tei:ab>
										<tei:ab type="recommendation">LIDO Terminology for
											<tei:ref target="../../documents/terminology-recommendation.html#periodName_type">Type of Period/Style</tei:ref></tei:ab>
									</xs:documentation>
								</xs:annotation>
							</xs:attribute>
							<xs:attribute ref="lido:sortorder"/>
						</xs:extension>
					</xs:complexContent>
				</xs:complexType>
			</xs:element>
			<xs:element name="eventPlace" minOccurs="0" maxOccurs="unbounded" id="eventPlace">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A set of structured information indicating the place or
							location where an object/work was associated with a particular event.</tei:ab>
						<tei:ab type="label">Event Place</tei:ab>
						
						
						<tei:ab type="dataValues">Controlled terminology</tei:ab>
						<tei:ab type="recommendation">Linked open authority file for
							<tei:ref target="../../documents/terminology-recommendation.html#eventPlace">Event Place</tei:ref></tei:ab>
		        	</xs:documentation>
				</xs:annotation>
				<xs:complexType>
					<xs:complexContent>
						<xs:extension base="lido:placeSetComplexType">
							<xs:attribute ref="lido:type" id="eventPlace_type">
								<xs:annotation>
									<xs:documentation>
										<tei:ab type="description">An attribute typifying the place according to its role or function in the context of an event,
											whether it is, for instance, a <em>place of discovery</em> or a <em>point of destination</em>.</tei:ab>
										<tei:ab type="dataValues">Controlled terminology</tei:ab>
										<tei:ab type="recommendation">LIDO Terminology for
											<tei:ref target="../../documents/terminology-recommendation.html#eventPlace_type">Type of Event Place</tei:ref></tei:ab>
   						        	</xs:documentation>
								</xs:annotation>
							</xs:attribute>
							<xs:attribute ref="lido:sortorder"/>
						</xs:extension>
					</xs:complexContent>
				</xs:complexType>
			</xs:element>
			<xs:element name="eventMethod" minOccurs="0" maxOccurs="unbounded" id="eventMethod">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An index element for the method by which
							the event is or was carried out.<br/>
							Examples may include an acquisition method or a field collection method.</tei:ab>
						<tei:ab type="label">Event Method</tei:ab>
						<tei:ab type="dataValues">Controlled terminology</tei:ab>
						
						
						<tei:ab type="recommendation">Linked open vocabulary for
							<tei:ref target="../../documents/terminology-recommendation.html#eventMethod">Event Method</tei:ref>
						</tei:ab>
						</xs:documentation>

					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:eventMethod">
								<sch:extends rule="sch_SKOS"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
				<xs:complexType>
					<xs:complexContent>
						<xs:extension base="lido:conceptComplexType">
							<xs:attribute ref="lido:sortorder"/>
						</xs:extension>
					</xs:complexContent>
				</xs:complexType>
			</xs:element>
			<xs:element name="eventMaterialsTech" minOccurs="0" maxOccurs="unbounded" id="eventMaterialsTech">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A set of structured information indicating the materials
							or techniques involved in the event in focus, such as a material used
							for the creation or modification of the object/work.<br/>
							May include also materials and techniques involved in an excavation event.</tei:ab>
						<tei:ab type="label">Event Materials/Techniques</tei:ab>
						
						
  					</xs:documentation>
				</xs:annotation>
				<xs:complexType>
					<xs:complexContent>
						<xs:extension base="lido:materialsTechSetComplexType">
							<xs:attribute ref="lido:sortorder"/>
						</xs:extension>
					</xs:complexContent>
				</xs:complexType>
			</xs:element>
			<xs:element name="eventObjectMeasurements" minOccurs="0" maxOccurs="unbounded" id="eventObjectMeasurements">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A set of structured information indicating the dimensions,
							or other measurements, of the object/work with respect to the event in
							focus.<br/>
							Note that the term <em>measurements</em> here refers to the result of measuring,
							such as the decreased dimensions after the removal of a part.</tei:ab>
							<tei:ab type="label">Event Measurements</tei:ab>
						
						
				 </xs:documentation>
				</xs:annotation>
				<xs:complexType>
					<xs:complexContent>
						<xs:extension base="lido:objectMeasurementsSetComplexType">
							<xs:attribute ref="lido:type" id="eventObjectMeasurements_type">
								<xs:annotation>
									<xs:documentation>
										<tei:ab type="description">An attribute indicating whether the measurements given are
											straight properties of the object in question or requirements for handling the object,
											such as maximum temperature variation.<br/>
											Note that this type attribute is primarily intended for use in application profiles.</tei:ab>
										<tei:ab type="dataValues">Controlled terminology</tei:ab>
										
										
											<tei:ab type="recommendation">LIDO Terminology for
											<tei:ref target="../../documents/terminology-recommendation.html#objectMeasurementsSet_type">Type of Object Measurements Set</tei:ref></tei:ab>
									</xs:documentation>
								</xs:annotation>
							</xs:attribute>
							<xs:attribute ref="lido:measurementsGroup"/>
							<xs:attribute ref="lido:sortorder"/>
						</xs:extension>
					</xs:complexContent>
				</xs:complexType>
			</xs:element>
			<xs:element name="thingPresent" minOccurs="0" maxOccurs="unbounded" id="thingPresent">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A set of structured information for a related object or
							work that is or was present at the event in focus.<br/>
						    Repeated if there are multiple related objects or works.</tei:ab>
						<tei:ab type="label">Thing Present</tei:ab>
					</xs:documentation>
				</xs:annotation>
				<xs:complexType>
					<xs:complexContent>
						<xs:extension base="lido:objectSetComplexType">
							<xs:attribute ref="lido:sortorder"/>
						</xs:extension>
					</xs:complexContent>
				</xs:complexType>
			</xs:element>
			<xs:element name="relatedEventSet" minOccurs="0" maxOccurs="unbounded" id="relatedEventSet">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A set of structured information about an event related to the event in focus,
							indicating the type of relationship where applicable.</tei:ab>
						<tei:ab type="label">Related Event Set</tei:ab>
						
						
					</xs:documentation>
				</xs:annotation>
				<xs:complexType>
					<xs:complexContent>
						<xs:extension base="lido:relatedEventSetComplexType">
							<xs:attribute ref="lido:sortorder"/>
						</xs:extension>
					</xs:complexContent>
				</xs:complexType>
			</xs:element>
			<xs:element name="eventDescriptionSet" type="lido:descriptiveNoteComplexType" minOccurs="0" maxOccurs="unbounded" id="eventDescriptionSet">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A set of descriptive information about the event, including
							description identifier, descriptive note and source of the description.<br/>
							Repeated if there is more than one descriptive note.</tei:ab>
						<tei:ab type="label">Event Description Set</tei:ab>
						
						
					</xs:documentation>
				</xs:annotation>
			</xs:element>
		</xs:sequence>
	</xs:complexType>
	<xs:complexType name="eventSetComplexType" id="eventSetComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Defines display and index elements for one event
					the object/work in focus participated in or was present at.</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:sequence>
			<xs:element name="displayEvent" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded" id="displayEvent">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A display element for an event,
							corresponding to the subsequent <tei:ref target="#event">Event</tei:ref> element.<br/>
							Repeated for language variants only.</tei:ab>
						<tei:ab type="label">Display Event</tei:ab>
						<tei:ab type="dataValues">Free text</tei:ab>
						
						
					</xs:documentation>
				</xs:annotation>
			</xs:element>
			<xs:element name="event" type="lido:eventComplexType" minOccurs="0" id="event">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A wrapper for information about the event the
							object/work participated in or was present at, for example, its <em>creation</em>
							or <em>acquisition</em>.<br/>
							Includes identifying, descriptive and indexing elements associated with the event in focus, 
							covering actor and/or date information.</tei:ab>
						<tei:ab type="label">Event</tei:ab>
						
						
						
						
					</xs:documentation>
				</xs:annotation>
			</xs:element>
		</xs:sequence>
	</xs:complexType>
	<xs:element name="eventWrap" id="eventWrap">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">A wrapper for event sets.</tei:ab>
				<tei:ab type="label">Event Wrapper</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:complexType>
			<xs:sequence>
				<xs:element name="eventSet" minOccurs="0" maxOccurs="unbounded" id="eventSet">
					<xs:annotation>
						<xs:documentation>
							<tei:ab type="description">A set of display and index elements for
								an event the object/work participated in or was present at.<br/>
								Repeated if there is more than one event.</tei:ab>
							<tei:ab type="label">Event Set</tei:ab>
							
							
						</xs:documentation>
					</xs:annotation>
					<xs:complexType>
						<xs:complexContent>
							<xs:extension base="lido:eventSetComplexType">
								<xs:attribute ref="lido:sortorder"/>
								<xs:attribute ref="lido:mostNotableEvent"/>
							</xs:extension>
						</xs:complexContent>
					</xs:complexType>
				</xs:element>
			</xs:sequence>
			<xs:attribute ref="lido:mostNotableEvent"/>
		</xs:complexType>
	</xs:element>
	<xs:attribute name="geographicalEntity" type="xs:string" id="geographicalEntity">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">An attribute for the kind of place as a physical entity, 
					such as natural and cultural landscapes.<br/>
					Note that the kind of physical place can be indexed in more detail in the 
					<tei:ref target="#placeClassification">Place Classification</tei:ref> element.
				</tei:ab>
				<tei:ab type="equivalents"/>
				<tei:ab type="dataValues">Controlled</tei:ab>
				
				
				<tei:ab type="recommendation">Linked open vocabulary for
					<tei:ref target="../../documents/terminology-recommendation.html#geographicalEntity">geographical entity</tei:ref></tei:ab>
			</xs:documentation>
		</xs:annotation>
	</xs:attribute>
	<xs:complexType name="gmlComplexType" id="gmlComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Defines the GML instantiation for georeferences.</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:sequence>
			<xs:element ref="gml:Point" minOccurs="0" maxOccurs="unbounded"/>
			<xs:element ref="gml:LineString" minOccurs="0" maxOccurs="unbounded"/>
			<xs:element ref="gml:Polygon" minOccurs="0" maxOccurs="unbounded"/>
		</xs:sequence>
	</xs:complexType>
	<xs:complexType name="identifierComplexType" id="identifierComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Defines information about the identifier used, including its type, source, or label.</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:simpleContent>
			<xs:extension base="xs:string">
				<xs:attribute ref="lido:pref"/>
				<xs:attribute ref="lido:type" use="required" id="identifier_type">
					<xs:annotation>
						<xs:documentation>
							<tei:ab type="description">An attribute for the particular kind of identifier used,
								whether it is an <em>IRI</em>, a <em>URI</em>, or a <em>Local identifier</em>.</tei:ab>
							<tei:ab type="dataValues">Controlled terminology</tei:ab>
							<tei:ab type="recommendation">LIDO Terminology for
								<tei:ref target="../../documents/terminology-recommendation.html#identifier_type">Type of Identifier</tei:ref></tei:ab>
						</xs:documentation>
					</xs:annotation>
				</xs:attribute>
				<xs:attribute ref="lido:source"/>
				<xs:attribute ref="lido:encodinganalog"/>
				<xs:attribute ref="lido:label"/>
			</xs:extension>
		</xs:simpleContent>
	</xs:complexType>
	<xs:element name="inscriptionsWrap" id="inscriptionsWrap">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">A wrapper for information about inscriptions and other
					markings.</tei:ab>
				<tei:ab type="label">Inscriptions/Marks Wrapper</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:complexType>
			<xs:sequence>
				<xs:element name="inscriptions" minOccurs="0" maxOccurs="unbounded" id="inscriptions">
					<xs:annotation>
						<xs:documentation>
							<tei:ab type="description">A set of the textual transcription or description of any
								distinguishing or identifying physical lettering, annotations,
								texts, markings, or labels that are affixed, applied, stamped,
								written, inscribed, or attached to the object/work, excluding any
								mark or text inherent in the materials of which it is made.</tei:ab>
							<tei:ab type="label">Inscriptions/Marks</tei:ab>
							
							
						</xs:documentation>
					</xs:annotation>
					<xs:complexType>
						<xs:sequence>
							<xs:element name="inscriptionTranscription" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded" id="inscriptionTranscription">
								<xs:annotation>
									<xs:documentation>
										<tei:ab type="description">A text element for the transcription of the inscription.<br/>
											Repeated for language variants only.</tei:ab>
										<tei:ab type="label">Inscription Transcription</tei:ab>
										
										
									</xs:documentation>
								</xs:annotation>
							</xs:element>
							<xs:element name="inscriptionDescription" type="lido:descriptiveNoteComplexType" minOccurs="0" maxOccurs="unbounded" id="inscriptionDescription">
								<xs:annotation>
									<xs:documentation>
										<tei:ab type="description">A text element for a description of an
											inscription, including description identifier,
											descriptive note of the inscription and
											sources.<br/>
											Repeated if there is more than one descriptive note.</tei:ab>
										<tei:ab type="label">Inscription Description</tei:ab>
										<tei:ab type="dataValues">Free text</tei:ab>
										
										
									</xs:documentation>
								</xs:annotation>
							</xs:element>
						</xs:sequence>
						<xs:attribute ref="lido:type" id="inscriptions_type">
							<xs:annotation>
								<xs:documentation>
									<tei:ab type="description">An attribute for the particular kind of
										inscription, stamp, marking, or text written on or applied
										to the work.<br/>
										Note that this type attribute is primarily intended for use in application profiles.</tei:ab>
									<tei:ab type="dataValues">Controlled terminology</tei:ab>
									<tei:ab type="recommendation">To be determined by application profiles.</tei:ab>
								</xs:documentation>
							</xs:annotation>
						</xs:attribute>
						<xs:attribute ref="lido:sortorder"/>
					</xs:complexType>
				</xs:element>
			</xs:sequence>
		</xs:complexType>
	</xs:element>
	<xs:attribute name="label" type="xs:string" id="label">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">An attribute indicating the original data element from
					which the data were migrated; refers to the external label of a data field at
					the visible user interface.</tei:ab>
				<tei:ab type="dataValues">Free text</tei:ab>
			</xs:documentation>
		</xs:annotation>
	</xs:attribute>
	<xs:complexType name="legalBodyRefComplexType" id="legalBodyRefComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Defines reference information to a legal body.</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:sequence>
			<xs:element name="legalBodyID" type="lido:identifierComplexType" minOccurs="0" maxOccurs="unbounded" id="legalBodyID">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An identifier for a <em>person</em> or a <em>group of persons</em>,
							such as a <em>family</em> or an <em>organization</em> like a corporate body, a government agency, or a firm.<br/>
							Repeatable for identifiers from different authority files or other sources. The recommended method, however, is to reference equivalent resources using the 
							<tei:ref target="https://www.w3.org/TR/owl-ref/#sameAs-def">owl:sameAs</tei:ref> property, 
							stating that two or more URIs identify the same individual entity.</tei:ab>
						<tei:ab type="label">Legal Body Identifier</tei:ab>
						
						
					</xs:documentation>
				</xs:annotation>
			</xs:element>
			<xs:any minOccurs="0" maxOccurs="unbounded" processContents="skip" namespace="http://www.w3.org/2002/07/owl#"/>
			<xs:element name="legalBodyName" type="lido:appellationComplexType" minOccurs="0" maxOccurs="unbounded" id="legalBodyName">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A text element for an appellation of the individual <em>person</em> or <em>group
							of persons</em> referred to as legal body.</tei:ab>
						<tei:ab type="label">Legal Body Name</tei:ab>
						
						
					</xs:documentation>
				</xs:annotation>
			</xs:element>
			<xs:element name="legalBodyWeblink" type="lido:webResourceComplexType" minOccurs="0" maxOccurs="unbounded" id="legalBodyWeblink">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A text element providing an URL reference to a web resource of the <em>person</em> or <em>group of persons</em>
							referred to as legal body.</tei:ab>
						<tei:ab type="label">Legal Body Weblink</tei:ab>
						<tei:ab type="dataValues">Free text</tei:ab>
					</xs:documentation>
				</xs:annotation>
			</xs:element>
		</xs:sequence>
	</xs:complexType>
	<xs:element name="lido" type="lido:lidoComplexType" id="lido">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">A wrapper for the metadata of an object/work. Used as root
					for OAI-PMH content.</tei:ab>
				<tei:ab type="note">Use this element as root for the delivery of content through OAI-PMH.</tei:ab>
				<tei:ab type="label">Wrapper for an object record</tei:ab>
			</xs:documentation>
		</xs:annotation>
	</xs:element>
	<xs:complexType name="lidoComplexType" id="lidoComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Defines the metadata of an object/work.</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:sequence>
			<xs:element name="lidoRecID" type="lido:identifierComplexType" maxOccurs="unbounded" id="lidoRecID">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A unique LIDO record identification preferably
							composed of an identifier for the contributor, possibly taken from ISIL
							or a similar registry, and a record identification in the (local) system
							of the contributor. The identifier may or may not be persistent.<br/>
							For unique published and persistent identification of the object use
							<tei:ref target="#objectPublishedID">Published Object Identifier</tei:ref>.<br/>
							Use <tei:ref target="#recordMetadataDate">Record Metadata Date</tei:ref> for
							versioning. </tei:ab>
						<tei:ab type="label">LIDO Metadata Record Identifier</tei:ab>
					</xs:documentation>
				</xs:annotation>
			</xs:element>
			<xs:element name="objectPublishedID" type="lido:identifierComplexType" minOccurs="0" maxOccurs="unbounded" id="objectPublishedID">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A published identifier of the object or work in focus.
							It is strongly recommended to provide a dereferenceable URI.<br/>
							Repeated for identifiers from different authority files or other sources.
							If there are multiple published identifiers use the <tei:ref target="#pref">preference</tei:ref> attribute to mark the one preferred by the provider of the LIDO record.
						</tei:ab>
						<tei:ab type="label">Published Object Identifier</tei:ab>
					</xs:documentation>
				</xs:annotation>
			</xs:element>
			<xs:element name="category" type="lido:conceptComplexType" minOccurs="0" id="category">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An index element for the broad category
							the object/work in focus belongs to.<br/>
							Examples may include <em>human-made object</em> or <em>natural object</em>.</tei:ab>
						<tei:ab type="label">Category</tei:ab>
						<tei:ab type="dataValues">Controlled terminology</tei:ab>
						<tei:ab type="recommendation">LIDO Terminology for
							<tei:ref target="../../documents/terminology-recommendation.html#category">Category</tei:ref></tei:ab>
					</xs:documentation>

					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:category">
								<sch:extends rule="sch_SKOS"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
			</xs:element>
			<xs:element name="applicationProfile" type="lido:identifierComplexType" minOccurs="0" id="applicationProfile">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A unique identification of the application
							profile used to create the LIDO record.</tei:ab>
						<tei:ab type="label">Application Profile</tei:ab>
					</xs:documentation>
				</xs:annotation>
			</xs:element>
			<xs:element ref="lido:descriptiveMetadata" maxOccurs="unbounded"/>
			<xs:element ref="lido:administrativeMetadata" maxOccurs="unbounded"/>
		</xs:sequence>
		<xs:attribute ref="lido:relatedencoding"/>
	</xs:complexType>
	<xs:element name="lidoWrap" id="lidoWrap">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">The LIDO root element for the whole document, holding one or multiple
					object/work records.</tei:ab>
				<tei:ab type="label">Wrapper for the whole document</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:complexType>
			<xs:sequence>
				<xs:element name="lido" maxOccurs="unbounded" id="lido_lidoWrap">
					<xs:complexType>
						<xs:complexContent>
							<xs:extension base="lido:lidoComplexType">
								<xs:attribute ref="lido:sortorder"/>
							</xs:extension>
						</xs:complexContent>
					</xs:complexType>
				</xs:element>
			</xs:sequence>
			<xs:attribute ref="lido:relatedencoding"/>
		</xs:complexType>
	</xs:element>
	<xs:complexType name="materialsTechComplexType" id="materialsTechComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Defines information about materials and techniques.
					Includes index elements, and possibly information about the extent and source.</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:sequence>
			<xs:element name="termMaterialsTech" minOccurs="0" maxOccurs="unbounded" id="termMaterialsTech">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An index element for materials and techniques
							detected in an object/work.</tei:ab>
						<tei:ab type="label">Term Materials/Techniques</tei:ab>
						<tei:ab type="dataValues">Controlled terminology</tei:ab>
						
						
						<tei:ab type="recommendation">Linked open vocabulary for
							<tei:ref target="../../documents/terminology-recommendation.html#termMaterialsTech">Term Materials/Techniques</tei:ref></tei:ab>
					</xs:documentation>

					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:termMaterialsTech">
								<sch:extends rule="sch_SKOS"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
				<xs:complexType>
					<xs:complexContent>
						<xs:extension base="lido:conceptComplexType">
							<xs:attribute ref="lido:type" id="termMaterialsTech_type">
								<xs:annotation>
									<xs:documentation>
										<tei:ab type="description">An attribute further qualifying the
											kind of materials or techniques used to
											create or modify an object/work.<br/>
											Examples may include <em>implement</em>, <em>medium</em>, or <em>watermark</em>.</tei:ab>
										<tei:ab type="dataValues">Controlled terminology</tei:ab>
										<tei:ab type="recommendation">LIDO Terminology for
											<tei:ref target="../../documents/terminology-recommendation.html#termMaterialsTech_type">Type of Term Materials/Techniques</tei:ref></tei:ab>
									</xs:documentation>
								</xs:annotation>
							</xs:attribute>
							<xs:attribute ref="lido:sortorder"/>
						</xs:extension>
					</xs:complexContent>
				</xs:complexType>
			</xs:element>
			<xs:element name="extentMaterialsTech" type="lido:conceptMixedComplexType" minOccurs="0" maxOccurs="unbounded" id="extentMaterialsTech">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An index element specifying the part of the
							object/work to which the materials or techniques in focus apply.</tei:ab>
						<tei:ab type="label">Extent Materials/Techniques</tei:ab>
						
						
						<tei:ab type="dataValues">Controlled terminology</tei:ab>
						<tei:ab type="recommendation">Linked open vocabulary for
							<tei:ref target="../../documents/terminology-recommendation.html#extentMaterialsTech">Extent Materials/Techniques</tei:ref></tei:ab>
					</xs:documentation>
					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:extentMaterialsTech">
								<sch:extends rule="sch_MixedContent"/>
								<sch:extends rule="sch_SKOS"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
			</xs:element>
			<xs:element name="sourceMaterialsTech" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded" id="sourceMaterialsTech">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A text element identifying the source of information about materials and
							techniques, often used when citing a published source of watermarks.</tei:ab>
						<tei:ab type="label">Source Materials/Techniques</tei:ab>
						<tei:ab type="dataValues">Free text</tei:ab>
						
						
					</xs:documentation>
				</xs:annotation>
			</xs:element>
		</xs:sequence>
	</xs:complexType>
	<xs:complexType name="materialsTechSetComplexType" id="materialsTechSetComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Defines display and index elements for
					materials and techniques information.</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:sequence>
			<xs:element name="displayMaterialsTech" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded" id="displayMaterialsTech">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A display element for materials and techniques, corresponding to the subsequent <tei:ref target="#materialsTech">Materials/Techniques</tei:ref> element.<br/>
							Repeated for language variants only.</tei:ab>
						<tei:ab type="label">Display Materials/Techniques</tei:ab>
						
						
						<tei:ab type="dataValues">Free text</tei:ab>
					</xs:documentation>
				</xs:annotation>
			</xs:element>
			<xs:element name="materialsTech" type="lido:materialsTechComplexType" minOccurs="0" maxOccurs="unbounded" id="materialsTech">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A set of structured information about materials and
							techniques used for or incorporated in the object/work in
							focus, for use in indexing and retrieval.<br/>
							Repeated for multiple parts, or if media and support are recorded seperately.</tei:ab>
						<tei:ab type="label">Materials/Techniques</tei:ab>
						
						
					</xs:documentation>
				</xs:annotation>
			</xs:element>
		</xs:sequence>
	</xs:complexType>
	<xs:attribute name="measurementsGroup" type="xs:string" id="measurementsGroup">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">An attribute indicating the group of measurements given in multiple <tei:ref target="#measurementsSet">Measurements Set</tei:ref>elements,
					each of them qualified by a specific kind of measurement in the <tei:ref target="#measurementType">Measurement Type</tei:ref> element.<br/>
					Note that this type attribute is primarily intended for use in application profiles.</tei:ab>
				<tei:ab type="dataValues">Controlled terminology</tei:ab>
				<tei:ab type="recommendation">To be determined by application profiles.</tei:ab>
			</xs:documentation>
		</xs:annotation>
	</xs:attribute>
	<xs:complexType name="measurementsSetComplexType" id="measurementsSetComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Defines information about the dimensions, or other
					measurements, of the object/work in focus.<br/>
					May include spacial, temporal or quantitative extent.</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:sequence>
			<xs:element name="measurementType" type="lido:conceptMixedComplexType" maxOccurs="unbounded" id="measurementType">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An index element for the kind of dimension, like height or width,
							or other measurements of the object/work, such as volume or running time. May include values for
							object requirements in loan contexts, such as the tolerated relative humidity of air.</tei:ab>
						<tei:ab type="label">Measurement Type</tei:ab>
						
						
						<tei:ab type="dataValues">Controlled terminology</tei:ab>
						<tei:ab type="recommendation">Linked open vocabulary for
							<tei:ref target="../../documents/terminology-recommendation.html#measurementType">Measurement Type</tei:ref></tei:ab>
					</xs:documentation>
					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:measurementType">
								<sch:extends rule="sch_MixedContent"/>
								<sch:extends rule="sch_SKOS"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
			</xs:element>
			<xs:element name="measurementUnit" type="lido:conceptMixedComplexType" maxOccurs="unbounded" id="measurementUnit">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A text element describing the value of the dimensions, or other measurements,
							of the object/work. It is recommended to use the decimal point as decimal separator if neccessary. 
							Use display element for fractional or other number representations.
							</tei:ab>
						<tei:ab type="label">Measurement Unit</tei:ab>
						
						
						<tei:ab type="dataValues">Controlled terminology</tei:ab>
						<tei:ab type="recommendation">Linked open vocabulary for
							<tei:ref target="../../documents/terminology-recommendation.html#measurementUnit">Measurement Unit</tei:ref></tei:ab>
					</xs:documentation>
					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:measurementUnit">
								<sch:extends rule="sch_MixedContent"/>
								<sch:extends rule="sch_SKOS"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
			</xs:element>
			<xs:element name="measurementValue" type="lido:textComplexType" id="measurementValue">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A text element describing the value of the dimensions, or other measurements, 
							of the object/work. It is recommended to use the decimal point as decimal separator if neccessary. 
							Use display element for fractional or other number representations.</tei:ab>
						<tei:ab type="label">Measurement Value</tei:ab>
						
						
						<tei:ab type="dataValues">Controlled format</tei:ab>
					</xs:documentation>
				</xs:annotation>
			</xs:element>
		</xs:sequence>
	</xs:complexType>
	<xs:attribute name="mostNotableEvent" type="xs:integer" id="mostNotableEvent">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">An attribute qualifying the event in focus as the most notable
					or significant event as designated by the describing institution.<br/>
					The priority order is assigned in <tei:ref target="#eventSet">Event Set</tei:ref>
					by using the attribute <tei:ref target="#sortorder">sortorder</tei:ref>.
				</tei:ab>
			</xs:documentation>
		</xs:annotation>
	</xs:attribute>
	<xs:element name="objectClassificationWrap" id="objectClassificationWrap">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">A wrapper for classification statements about the
					object/work in focus, including object/work type and classification.</tei:ab>
				<tei:ab type="label">Object Classification Wrapper</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:complexType>
			<xs:sequence>
				<xs:element ref="lido:objectWorkTypeWrap">
					<xs:annotation>
						<xs:documentation>
							<tei:ab type="description">A wrapper for object/work types.</tei:ab>
						</xs:documentation>
					</xs:annotation>
				</xs:element>
				<xs:element ref="lido:classificationWrap" minOccurs="0">
					<xs:annotation>
						<xs:documentation>
							<tei:ab type="description">A wrapper for assignments of the object/work
								in focus to a classification scheme or schemes, and the type of scheme
								used.</tei:ab>
						</xs:documentation>
					</xs:annotation>
				</xs:element>
			</xs:sequence>
		</xs:complexType>
	</xs:element>
	<xs:complexType name="objectComplexType" id="objectComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Defines information about an object or a work related to
					the object/work in focus.
				</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:sequence>
			<xs:element name="objectWebResource" type="lido:webResourceComplexType" minOccurs="0" maxOccurs="unbounded" id="objectWebResource">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A text element providing an URL reference to a description of the object or
							work related to the object/work in focus.<br/>
							Usually a resource in the World Wide Web.</tei:ab>
						<tei:ab type="label">Object Web Resource</tei:ab>
						<tei:ab type="dataValues">Free text</tei:ab>
					</xs:documentation>
				</xs:annotation>
			</xs:element>
			<xs:element name="objectID" type="lido:identifierComplexType" minOccurs="0" maxOccurs="unbounded" id="objectID">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An identifier of the referenced object or work.<br/>
							Repeatable for identifiers from different authority files or other sources. 
							The recommended method, however, is to reference equivalent resources using the 
							<tei:ref target="https://www.w3.org/TR/owl-ref/#sameAs-def">owl:sameAs</tei:ref> property, 
							stating that two or more URIs identify the same individual entity.</tei:ab>
						<tei:ab type="label">Object Identifier</tei:ab>
					</xs:documentation>
				</xs:annotation>
			</xs:element>
			<xs:any minOccurs="0" maxOccurs="unbounded" processContents="skip" namespace="http://www.w3.org/2002/07/owl#"/>
			<xs:element name="objectType" type="lido:conceptComplexType" minOccurs="0" maxOccurs="unbounded" id="objectType">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An index element for the particular kind of object or work in focus.</tei:ab>
						<tei:ab type="label">Object Type</tei:ab>				
						<tei:ab type="dataValues">Controlled terminology</tei:ab>
						<tei:ab type="recommendation">To be determined by application profiles. If the object is a collection, refer to LIDO Terminology for
							<tei:ref target="../../documents/terminology-recommendation.html#objectType">Object Type</tei:ref></tei:ab>
						</xs:documentation>
				</xs:annotation>
			</xs:element>
			<xs:element name="objectName" minOccurs="0" maxOccurs="unbounded" id="objectName">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A text element for the object/work in focus as an 
							individual entity, such as a title or a proper name.</tei:ab>
						<tei:ab type="label">Object Name</tei:ab>
					</xs:documentation>
				</xs:annotation>
				<xs:complexType>
					<xs:complexContent>
						<xs:extension base="lido:appellationComplexType">
							<xs:attribute ref="lido:sortorder"/>
							<xs:attribute ref="lido:pref"/>
						</xs:extension>
					</xs:complexContent>
				</xs:complexType>
			</xs:element>
			<xs:element name="objectNote" minOccurs="0" maxOccurs="unbounded" id="objectNote">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A text element for further descriptive information about 
							the object/work in focus, including actor, and other information as necessary 
							for clarity.</tei:ab>
						<tei:ab type="label">Object Note</tei:ab>
						
						
						<tei:ab type="dataValues">Free text</tei:ab>
					</xs:documentation>
				</xs:annotation>
				<xs:complexType>
					<xs:simpleContent>
						<xs:extension base="lido:textComplexType">
							<xs:attribute ref="lido:type" id="objectNote_type">
							<xs:annotation>
								<xs:documentation>
									<tei:ab type="description">An attribute for the particular kind of note.<br/>
										Note that this type attribute is primarily intended for use in application profiles.</tei:ab>
									<tei:ab type="dataValues">Controlled</tei:ab>
									<tei:ab type="recommendation">To be determined by application profiles.</tei:ab>
								</xs:documentation>
							</xs:annotation>
						   </xs:attribute>
						</xs:extension>
					</xs:simpleContent>
				</xs:complexType>
			</xs:element>
		</xs:sequence>
	</xs:complexType>
	<xs:element name="objectDescriptionWrap" id="objectDescriptionWrap">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">A wrapper for the description and descriptive notes
					referring to the object or work in focus.</tei:ab>
				<tei:ab type="label">Object Description Wrapper</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:complexType>
			<xs:sequence>
				<xs:element name="objectDescriptionSet" minOccurs="0" maxOccurs="unbounded" id="objectDescriptionSet">
					<xs:annotation>
						<xs:documentation>
							<tei:ab type="description">A set of descriptive information about the object/work, including
								description identifier, descriptive note and source of the description.<br/>
								Repeated if there is more than one descriptive note.</tei:ab>
							<tei:ab type="note">A reference to a text resource holding the
								description may be given in description identifier.</tei:ab>
							<tei:ab type="label">Description/Descriptive Note Set</tei:ab>
							
							
						</xs:documentation>
					</xs:annotation>
					<xs:complexType>
						<xs:complexContent>
							<xs:extension base="lido:descriptiveNoteComplexType">
								<xs:sequence>
									<xs:element name="objectDescriptionRights" type="lido:rightsComplexType" minOccurs="0" maxOccurs="unbounded" id="objectDescriptionRights">
										<xs:annotation>
											<xs:documentation>
												<tei:ab type="description">A set of structured information about rights
													regarding the content provided in <tei:ref target="#objectDescriptionSet">Description/Descriptive Note Set</tei:ref>.</tei:ab>
												<tei:ab type="note">The information about rights
												overrides information about rights in <tei:ref target="#recordRights">recordRights</tei:ref>.</tei:ab>
												<tei:ab type="label">Description/Descriptive Note Rights</tei:ab>
											</xs:documentation>
										</xs:annotation>
									</xs:element>
								</xs:sequence>
							</xs:extension>
						</xs:complexContent>
					</xs:complexType>
				</xs:element>
			</xs:sequence>
		</xs:complexType>
	</xs:element>
	<xs:element name="objectIdentificationWrap" id="objectIdentificationWrap">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">A wrapper for information that identifies the object or
					work in focus.</tei:ab>
				<tei:ab type="label">Object Identification Wrapper</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:complexType>
			<xs:sequence>
				<xs:element ref="lido:titleWrap"/>
				<xs:element ref="lido:inscriptionsWrap" minOccurs="0"/>
				<xs:element ref="lido:repositoryWrap" minOccurs="0"/>
				<xs:element ref="lido:displayStateEditionWrap" minOccurs="0"/>
				<xs:element ref="lido:objectDescriptionWrap" minOccurs="0"/>
				<xs:element ref="lido:objectMeasurementsWrap" minOccurs="0"/>
				<xs:element ref="lido:objectMaterialsTechWrap" minOccurs="0"/>
			</xs:sequence>
		</xs:complexType>
	</xs:element>
	<xs:complexType name="objectMeasurementsComplexType" id="objectMeasurementsComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Defines information about the dimensions, or other
					measurements, of the object/work in focus.
				</tei:ab>
				</xs:documentation>
		</xs:annotation>
		<xs:sequence>
			<xs:element name="measurementsSet" minOccurs="0" maxOccurs="unbounded" id="measurementsSet">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A set of structured information about dimensions, or other
							measurements, for one aspect of the object/work, including mandatory
							sub-elements for measurement type, unit and value. This also covers
							environmental quantities, such as relative humidity or light exposure,
							assessed as object requirements.</tei:ab>
						<tei:ab type="label">Measurements Set</tei:ab>
					</xs:documentation>
				</xs:annotation>
				<xs:complexType>
					<xs:complexContent>
						<xs:extension base="lido:measurementsSetComplexType">
							<xs:attribute ref="lido:sortorder"/>
						</xs:extension>
					</xs:complexContent>
				</xs:complexType>
			</xs:element>
			<xs:element name="extentMeasurements" minOccurs="0" maxOccurs="unbounded" id="extentMeasurements">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An index element specifying the part of the
							object/work to which the dimensions or measurements in focus apply.</tei:ab>
						<tei:ab type="label">Extent Measurements</tei:ab>
						
						
						<tei:ab type="dataValues">Controlled terminology</tei:ab>
						<tei:ab type="recommendation">Linked open vocabulary for
							<tei:ref target="../../documents/terminology-recommendation.html#extentMeasurements">Extent Measurements</tei:ref></tei:ab>
					</xs:documentation>

					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:extentMeasurements">
								<sch:extends rule="sch_MixedContent"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
				<xs:complexType>
					<xs:complexContent>
						<xs:extension base="lido:conceptMixedComplexType">
							<xs:attribute ref="lido:sortorder"/>
						</xs:extension>
					</xs:complexContent>
				</xs:complexType>
			</xs:element>
			<xs:element name="qualifierMeasurements" minOccurs="0" maxOccurs="unbounded" id="qualifierMeasurements">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An index element qualifying the dimensions, or other measurements,
							of an object/work, indicating the kind or precision of measurement results.<br/>
							Examples may include approximate, average, maximum, or variable.</tei:ab>
						<tei:ab type="label">Qualifier Measurements</tei:ab>
						
						
						<tei:ab type="dataValues">Controlled terminology</tei:ab>
						<tei:ab type="recommendation">Linked open vocabulary for
							<tei:ref target="../../documents/terminology-recommendation.html#qualifierMeasurements">Qualifier Measurements</tei:ref></tei:ab>
					</xs:documentation>

					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:qualifierMeasurements">
								<sch:extends rule="sch_MixedContent"/>
								<sch:extends rule="sch_SKOS"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
				<xs:complexType>
					<xs:complexContent>
						<xs:extension base="lido:conceptMixedComplexType">
							<xs:attribute ref="lido:sortorder"/>
						</xs:extension>
					</xs:complexContent>
				</xs:complexType>
			</xs:element>
			<xs:element name="formatMeasurements" minOccurs="0" maxOccurs="unbounded" id="formatMeasurements">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An index element for the format or
							conventional size of an object/work, including technical formats.<br/>
							Examples may include digital audio or image file formats, as well as
						    size for book or photograph formats.</tei:ab>
						<tei:ab type="label">Format Measurements</tei:ab>
						
						
						<tei:ab type="dataValues">Controlled terminology</tei:ab>
						<tei:ab type="recommendation">Linked open vocabulary for
							<tei:ref target="../../documents/terminology-recommendation.html#formatMeasurements">Format Measurements</tei:ref></tei:ab>
					</xs:documentation>
					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:formatMeasurements">
								<sch:extends rule="sch_MixedContent"/>
								<sch:extends rule="sch_SKOS"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
				<xs:complexType>
					<xs:complexContent>
						<xs:extension base="lido:conceptMixedComplexType">
							<xs:attribute ref="lido:sortorder"/>
						</xs:extension>
					</xs:complexContent>
				</xs:complexType>
			</xs:element>
			<xs:element name="shapeMeasurements" minOccurs="0" maxOccurs="unbounded" id="shapeMeasurements">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An index element for the outline, form, or characteristic configuration of an
							object/work or a part thereof, including contours. Used for distinguishing shape characteristics, such as <em>oval</em>,
							or <em>square</em>.</tei:ab>
						<tei:ab type="label">Shape Measurements</tei:ab>
						<tei:ab type="dataValues">Controlled terminology</tei:ab>
						<tei:ab type="recommendation">Linked open vocabulary for
							<tei:ref target="../../documents/terminology-recommendation.html#shapeMeasurements">Shape Measurements</tei:ref>
						</tei:ab>
						
						
					</xs:documentation>
					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:shapeMeasurements">
								<sch:extends rule="sch_MixedContent"/>
								<sch:extends rule="sch_SKOS"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
				<xs:complexType>
					<xs:complexContent>
						<xs:extension base="lido:conceptMixedComplexType">
							<xs:attribute ref="lido:sortorder"/>
						</xs:extension>
					</xs:complexContent>
				</xs:complexType>
			</xs:element>
			<xs:element name="scaleMeasurements" minOccurs="0" maxOccurs="unbounded" id="scaleMeasurements">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An index element for the ratio between the size of an object/work
							and its representation, for instance the size of the drawn structure and the actual built work.<br/>
							Examples may include <em>full-size</em> or <em>life-size</em>.
						</tei:ab>
						<tei:ab type="label">Scale Measurements</tei:ab>
						<tei:ab type="dataValues">Controlled terminology</tei:ab>
						<tei:ab type="recommendation">Linked open vocabulary for
							<tei:ref target="../../documents/terminology-recommendation.html#scaleMeasurements">Scale Measurements</tei:ref></tei:ab>
						
						
					</xs:documentation>
					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:scaleMeasurements">
								<sch:extends rule="sch_MixedContent"/>
								<sch:extends rule="sch_SKOS"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
				<xs:complexType>
					<xs:complexContent>
						<xs:extension base="lido:conceptMixedComplexType">
							<xs:attribute ref="lido:sortorder"/>
						</xs:extension>
					</xs:complexContent>
				</xs:complexType>
			</xs:element>
		</xs:sequence>
	</xs:complexType>
	<xs:complexType name="objectMeasurementsSetComplexType" id="objectMeasurementsSetComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Defines display and index elements for the
					dimensions, or other measurements, of the object/work.</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:sequence>
			<xs:element name="displayObjectMeasurements" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded" id="displayObjectMeasurements">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A display element for the dimensions, or other
							measurements, of the object/work, corresponding to the subsequent
							<tei:ref target="#objectMeasurements">Object Measurements</tei:ref> element.<br/>
							Repeated for language variants only.</tei:ab>
						<tei:ab type="label">Display Object Measurements</tei:ab>
						
						
						<tei:ab type="dataValues">Free text</tei:ab>
					</xs:documentation>
				</xs:annotation>
			</xs:element>
			<xs:element name="objectMeasurements" type="lido:objectMeasurementsComplexType" minOccurs="0" id="objectMeasurements">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A wrapper for information about the dimensions, or
							other measurements, of the object/work in focus.<br/>
							May also include extents of the parts of a complex object or work.</tei:ab>
						<tei:ab type="label">Object Measurements</tei:ab>
						
						
					</xs:documentation>
				</xs:annotation>
			</xs:element>
		</xs:sequence>
	</xs:complexType>
	<xs:element name="objectMaterialsTechWrap" id="objectMaterialsTechWrap">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">A wrapper for information about materials
					and techniques used for or incorporated in the object/work in focus.</tei:ab>
				<tei:ab type="label">Object Materials/Techniques Wrapper</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:complexType>
			<xs:sequence>
				<xs:element name="objectMaterialsTechSet" type="lido:materialsTechSetComplexType" minOccurs="0" maxOccurs="unbounded" id="objectMaterialsTechSet">
					<xs:annotation>
						<xs:documentation>
							<tei:ab type="description">A set of display and index elements for materials
								and techniques used for or incorporated in the object/work in focus.</tei:ab>
							<tei:ab type="label">Object Materials/Techniques Set</tei:ab>
							
							
							</xs:documentation>
					</xs:annotation>
				</xs:element>
			</xs:sequence>
		</xs:complexType>
	</xs:element>
	<xs:element name="objectMeasurementsWrap" id="objectMeasurementsWrap">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">A wrapper for information about the dimensions, or other
					measurements, of the object/work.</tei:ab>
				<tei:ab type="label">Object Measurements Wrapper</tei:ab>
				</xs:documentation>
		</xs:annotation>
		<xs:complexType>
			<xs:sequence>
				<xs:element name="objectMeasurementsSet" minOccurs="0" maxOccurs="unbounded" id="objectMeasurementsSet">
					<xs:annotation>
						<xs:documentation>
							<tei:ab type="description">A set of display and index elements for
								dimensions, or other measurements, of the object/work in focus.<br/>
								Repeated to record measurements of different parts of the
								object/work.</tei:ab>
							<tei:ab type="label">Object Measurements Set</tei:ab>
						</xs:documentation>
					</xs:annotation>
					<xs:complexType>
						<xs:complexContent>
							<xs:extension base="lido:objectMeasurementsSetComplexType">
								<xs:attribute ref="lido:type" id="objectMeasurementsSet_type">
									<xs:annotation>
										<xs:documentation>
											<tei:ab type="description">An attribute indicating whether the measurements given are
												straight properties of the object in question or requirements for handling the object,
												such as maximum temperature variation.<br/>
												Note that this type attribute is primarily intended for use in application profiles.</tei:ab>
											<tei:ab type="dataValues">Controlled terminology</tei:ab>
											<tei:ab type="recommendation">LIDO Terminology for
												<tei:ref target="../../documents/terminology-recommendation.html#objectMeasurementsSet_type">Type of Object Measurements Set</tei:ref>
											</tei:ab>
										</xs:documentation>
									</xs:annotation>
								</xs:attribute>
								<xs:attribute ref="lido:measurementsGroup"/>
								<xs:attribute ref="lido:sortorder"/>
							</xs:extension>
						</xs:complexContent>
					</xs:complexType>
				</xs:element>
			</xs:sequence>
		</xs:complexType>
	</xs:element>
	<xs:element name="objectRelationWrap" id="objectRelationWrap">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">A wrapper for structured information indicating related
					subject matter and related objects or works.</tei:ab>
				<tei:ab type="label">Object Relation Wrapper</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:complexType>
			<xs:sequence>
				<xs:element ref="lido:subjectWrap" minOccurs="0"/>
				<xs:element ref="lido:relatedWorksWrap" minOccurs="0"/>
			</xs:sequence>
		</xs:complexType>
	</xs:element>
	<xs:complexType name="objectSetComplexType" id="objectSetComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Defines display and reference elements for
					an object or work related to the object/work in focus.</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:sequence>
			<xs:element name="displayObject" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded" id="displayObject">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A display element for a related collection,object or work, corresponding to the
							subsequent <tei:ref target="#object">Object</tei:ref> element.<br/>
							Repeated for language variants only.</tei:ab>
						<tei:ab type="label">Display Object</tei:ab>
						<tei:ab type="dataValues">Free text</tei:ab>
						
												
					</xs:documentation>
				</xs:annotation>
			</xs:element>
			<xs:element name="object" type="lido:objectComplexType" minOccurs="0" id="object">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A wrapper for identifying information about an object or work, 
							including collections, related to the object/work in focus.<br/>
							May include a weblink.</tei:ab>
						<tei:ab type="label">Object</tei:ab>
					</xs:documentation>
					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:object">
								<sch:extends rule="sch_OWL"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
			</xs:element>
		</xs:sequence>
	</xs:complexType>
	<xs:element name="objectWorkTypeWrap" id="objectWorkTypeWrap">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">A wrapper for structured information about the
					object/work type.</tei:ab>
				<tei:ab type="label">Object/Work Type Wrapper</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:complexType>
			<xs:sequence>
				<xs:element name="objectWorkType" maxOccurs="unbounded" id="objectWorkType">
					<xs:annotation>
						<xs:documentation>
							<tei:ab type="description">An index element for the specific kind
								of the object/work in focus.<br/>
								Note that indexing Object/Work Type is mandatory.<br/>
								Repeated if the object/work type is further typified under different aspects,
								such as <em>by form</em> or <em>by function</em>. If the object/work in focus is a <em>Group-level record</em>,
								repeat for identifying all or the most important items of the group.</tei:ab>
							<tei:ab type="label">Object/Work Type</tei:ab>
							
							
							<tei:ab type="dataValues">Controlled terminology</tei:ab>
							<tei:ab type="recommendation">Linked open vocabulary for
								<tei:ref target="../../documents/terminology-recommendation.html#objectWorkType">Object/Work Type</tei:ref></tei:ab>
						</xs:documentation>
						<xs:appinfo>
							<sch:pattern>
								<sch:rule context="lido:objectWorkType">
									<sch:extends rule="sch_SKOS"/>
								</sch:rule>
							</sch:pattern>
						</xs:appinfo>
					</xs:annotation>
					<xs:complexType>
						<xs:complexContent>
							<xs:extension base="lido:conceptComplexType">
								<xs:attribute ref="lido:type" id="objectWorkType_type">
									<xs:annotation>
										<xs:documentation>
											<tei:ab type="description">An attribute further
												qualifying the particular aspect of the object/work
												type. Values for this attribute are commonly referred to as guide terms or node labels.<br/>
												Examples may include aspects like <em>by form</em>, <em>by function</em>,
												<em>by material or technique</em>, or <em>by subject</em>.</tei:ab>
											<tei:ab type="dataValues">Controlled terminology</tei:ab>
											<tei:ab type="recommendation">LIDO Terminology for
												<tei:ref target="../../documents/terminology-recommendation.html#objectWorkType_type">Type of Object/Work Type</tei:ref>
											</tei:ab>
										</xs:documentation>
									</xs:annotation>
								</xs:attribute>
								<xs:attribute ref="lido:sortorder"/>
							</xs:extension>
						</xs:complexContent>
					</xs:complexType>
				</xs:element>
			</xs:sequence>
		</xs:complexType>
	</xs:element>
	<xs:complexType name="placeComplexType" id="placeComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Defines information about a place.</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:sequence>
			<xs:element name="placeID" type="lido:identifierComplexType" minOccurs="0" maxOccurs="unbounded" id="placeID">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An identifier for the place.<br/>
							Repeatable for identifiers from different authority files or other sources.
							The recommended method, however, is to reference equivalent resources using the
							<tei:ref target="https://www.w3.org/TR/owl-ref/#sameAs-def">owl:sameAs</tei:ref> property,
							stating that two or more URIs identify the same individual entity.</tei:ab>
						<tei:ab type="label">Place Identifier</tei:ab>
						
						
					</xs:documentation>
				</xs:annotation>
			</xs:element>
			<xs:any minOccurs="0" maxOccurs="unbounded" processContents="skip" namespace="http://www.w3.org/2002/07/owl#"/>
			<xs:element name="namePlaceSet" type="lido:appellationComplexType" minOccurs="0" maxOccurs="unbounded" id="namePlaceSet">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A set of one or more names for a place, and
							the source from which it is taken.<br/>
							Repeated to record different sources for multiple appellations.
							</tei:ab>
						<tei:ab type="label">Place Name Set</tei:ab>
						
						
					</xs:documentation>
				</xs:annotation>
			</xs:element>
			<xs:element name="gml" minOccurs="0" maxOccurs="unbounded" id="gml">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A set of structured information containing a georeference of the place using the
							GML specification.</tei:ab>
						<tei:ab type="note">For further documentation on GML refer to <tei:ref target="http://www.opengis.net/gml/">http://www.opengis.net/gml/</tei:ref>.</tei:ab>
						<tei:ab type="label">Geography Markup Language</tei:ab>
						<tei:ab type="dataValues">GML elements</tei:ab>
						
						
						
						<tei:ab type="recommendation">Refer to <tei:ref target="https://www.ogc.org/standards/gml">Geography Markup Language (OGC)</tei:ref>
						</tei:ab>
					</xs:documentation>
				</xs:annotation>
				<xs:complexType>
					<xs:complexContent>
						<xs:extension base="lido:gmlComplexType">
							<xs:attribute ref="xml:lang"/>
						</xs:extension>
					</xs:complexContent>
				</xs:complexType>
			</xs:element>
			<xs:element name="partOfPlace" type="lido:placeComplexType" minOccurs="0" maxOccurs="unbounded" id="partOfPlace">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A set of structured information about a place
							that is the broader context for the place in focus, such as the district, state, or nation
							to which a city belongs.</tei:ab>
						<tei:ab type="label">Part of Place</tei:ab>
						
						
					</xs:documentation>
					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:partOfPlace">
								<sch:extends rule="sch_OWL"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
			</xs:element>
			<xs:element name="placeClassification" minOccurs="0" maxOccurs="unbounded" id="placeClassification">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An index element indicating the kind of place based on political or physical division, 
							including physical features such as pieces of land or bodies of water, or mobile objects such as ships.<br/>							
							Examples may be <em>country</em> or <em>city</em> for a political unit, or <em>forest</em> or <em>river</em> for a 
							physical feature.<br/>							
							Note that "political unit" here includes administrative territorial entities. Place Classification may hold index terms 
							similar to the values for "political entity" and "geographical entity", thus superseding these attributes.
							However, they may still be in use alternatively or for stating explicitly that an entity is of type either 
							"political" or "geographical", corresponding, for instance, to the TGN Record Types 
							<tei:ref target="http://vocab.getty.edu/ontology#AdminPlaceConcept">"administrative"</tei:ref> and 
							<tei:ref target="http://vocab.getty.edu/ontology#PhysPlaceConcept">"physical"</tei:ref>.</tei:ab>
						<tei:ab type="label">Place Classification</tei:ab>
						
						
						<tei:ab type="dataValues">Controlled terminology</tei:ab>
						<tei:ab type="recommendation">Linked open vocabulary for
							<tei:ref target="../../documents/terminology-recommendation.html#placeClassification">Place Classification</tei:ref>
						</tei:ab>
					</xs:documentation>

					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:placeClassification">
								<sch:extends rule="sch_SKOS"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
				<xs:complexType>
					<xs:complexContent>
						<xs:extension base="lido:conceptComplexType">
							<xs:attribute ref="lido:type" id="placeClassification_type">
								<xs:annotation>
									<xs:documentation>
										<tei:ab type="description">An attribute designating a type of place by a given context, 
											such as the geological or ecological aspect in a field collection.
											Examples may be <em>stratigraphic unit</em> or <em>habitat type</em>.<br/>
											Note that this type attribute is primarily intended for use in application profiles.</tei:ab>
										<tei:ab type="dataValues">Controlled terminology</tei:ab>
										<tei:ab type="recommendation">To be determined by application profiles.</tei:ab>
									</xs:documentation>
								</xs:annotation>
							</xs:attribute>
						</xs:extension>
					</xs:complexContent>
				</xs:complexType>
			</xs:element>
		</xs:sequence>
		<xs:attribute ref="lido:politicalEntity" id="placeComplexType_politicalEntity"/>
		<xs:attribute ref="lido:geographicalEntity" id="placeComplexType_geographicalEntity"/>
	</xs:complexType>
	<xs:complexType name="placeSetComplexType" id="placeSetComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Defines display and index elements for information about an
					individual place.</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:sequence>
			<xs:element name="displayPlace" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded" id="displayPlace">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A display element for a place,
							corresponding to the subsequent <tei:ref target="#place">Place</tei:ref> element.<br/>
							Repeated for language variants only.</tei:ab>
						<tei:ab type="label">Display Place</tei:ab>
						<tei:ab type="dataValues">Free text</tei:ab>
						
						
					</xs:documentation>
				</xs:annotation>
			</xs:element>
			<xs:element name="place" type="lido:placeComplexType" minOccurs="0" id="place">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A wrapper for identifying and indexing a place.</tei:ab>
						<tei:ab type="label">Place</tei:ab>
						
						
					</xs:documentation>
					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:place">
								<sch:extends rule="sch_OWL"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
			</xs:element>
		</xs:sequence>
	</xs:complexType>
	<xs:attribute name="politicalEntity" type="xs:string" id="politicalEntity">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">An attribute for the kind of place as a political, administrative entity, 
					such as a nation or a city.<br/>
					Note that the kind of political place can be indexed in more detail in the 
					<tei:ref target="#placeClassification">Place Classification</tei:ref> element.
				</tei:ab>
				<tei:ab type="dataValues">Controlled</tei:ab>
				
				
				<tei:ab type="recommendation">Linked open vocabulary for
					<tei:ref target="../../documents/terminology-recommendation.html#politicalEntity">political entity</tei:ref></tei:ab>
			</xs:documentation>
		</xs:annotation>
	</xs:attribute>
	<xs:attribute name="pref" type="xs:string" id="pref">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">An attribute indicating the preference role of a term,
					an appellation value, an identifier, or a resource set.<br/>
					Values most commonly used are <em>preferred</em> or <em>alternative</em>.
					For index terms and appellation values it is strongly recommended to provide one (and only one) 
					preferred term or appellation for each concept or individual (named) entity per language.
					If there is only one term it is the preferred one by default.</tei:ab>
				<tei:ab type="dataValues">Controlled terminology</tei:ab>
				
				
				<tei:ab type="recommendation">LIDO Terminology for the
					<tei:ref target="../../documents/terminology-recommendation.html#pref">preference</tei:ref></tei:ab>
			</xs:documentation>
		</xs:annotation>
	</xs:attribute>
	<xs:complexType name="recordInfoSetComplexType" id="recordInfoSetComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Defines metadata, presentation and service information for the described object.</tei:ab>
				<tei:ab type="note">The metadata information contains the reference to the
					"lido"-metadata set but may also be constituted by reference to an "object data
					sheet" in an online database.</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:sequence>
			<xs:element name="recordInfoID" type="lido:identifierComplexType" minOccurs="0" maxOccurs="unbounded" id="recordInfoID">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An identifier for the metadata.<br/>
							Repeated for identifiers from different sources.</tei:ab>
						<tei:ab type="label">Record Info Identifier</tei:ab>
					</xs:documentation>
				</xs:annotation>
			</xs:element>
			<xs:element name="recordInfoLink" type="lido:webResourceComplexType" minOccurs="0" maxOccurs="unbounded" id="recordInfoLink">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A text element providing an URL for access to metadata, presentation or service information.</tei:ab>
						<tei:ab type="label">Record Info Link</tei:ab>
						<tei:ab type="dataValues">Free text</tei:ab>
					</xs:documentation>
				</xs:annotation>
			</xs:element>
			<xs:element name="recordMetadataDate" minOccurs="0" maxOccurs="unbounded" id="recordMetadataDate">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">Expression of the date and possibly time of the metadata, presentation or service information.
							The encoding of the date/time should conform to ISO 8601.</tei:ab>
						<tei:ab type="label">Record Metadata Date</tei:ab>
						<tei:ab type="dataValues">Controlled format</tei:ab>
						<tei:ab type="recommendation"><tei:ref target="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601: Representation of dates and times</tei:ref>.</tei:ab>
					</xs:documentation>
				</xs:annotation>
				<xs:complexType>
					<xs:simpleContent>
						<xs:extension base="lido:textComplexType">
							<xs:attribute ref="lido:type" id="recordMetadataDate_type">
								<xs:annotation>
									<xs:documentation>
										<tei:ab type="description">An attribute indicating the point in time
											either for creation or modification date of the containing
											<tei:ref target="#recordInfoSet">Record Info Set</tei:ref>.<br/>
										     Examples are <em>created</em> or <em>modified</em>.</tei:ab>
										<tei:ab type="dataValues">Controlled terminology</tei:ab>
										<tei:ab type="recommendation">LIDO Terminology for
											<tei:ref target="../../documents/terminology-recommendation.html#recordMetadataDate_type">Type of Record Metadata Date</tei:ref></tei:ab>
									</xs:documentation>
								</xs:annotation>
	  					 	</xs:attribute>
							<xs:attribute ref="lido:source"/>
						</xs:extension>
					</xs:simpleContent>
				</xs:complexType>
			</xs:element>
		</xs:sequence>
		<xs:attribute ref="lido:type" id="recordInfoSet_type">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An attribute indicating the scope of metadata information,
							presentation information or service information contained in the element set.</tei:ab>
						<tei:ab type="dataValues"/>
					</xs:documentation>
				</xs:annotation>
		</xs:attribute>
		<xs:attribute ref="lido:sortorder"/>
	</xs:complexType>
	<xs:element name="recordWrap" id="recordWrap">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">A wrapper for information about this LIDO record, as well as other metadata,
					presentation and service information for the described object.<br/>
					Note that this section does not refer to any object or resource information,
					but to the source record only.</tei:ab>
				<tei:ab type="label">Record Wrapper</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:complexType>
			<xs:sequence>
				<xs:element name="recordID" type="lido:identifierComplexType" maxOccurs="unbounded" id="recordID">
					<xs:annotation>
						<xs:documentation>
							<tei:ab type="description">An identifier for the record in the
								(local) system of the contributor.<br/>
								Repeated for identifiers from different sources.</tei:ab>
							<tei:ab type="label">Record Identifier</tei:ab>
						</xs:documentation>
					</xs:annotation>
				</xs:element>
				<xs:element name="recordType" type="lido:conceptComplexType" id="recordType">
					<xs:annotation>
						<xs:documentation>
							<tei:ab type="description">An index element for the kind of
								cataloging level chosen for the record in focus, whether the record
								is considered a single item, a constituent component of an item, or
								an object group.</tei:ab>
							<tei:ab type="label">Record Type</tei:ab>
							
							
							<tei:ab type="dataValues">Controlled terminology</tei:ab>
							<tei:ab type="recommendation">LIDO Terminology for
								<tei:ref target="../../documents/terminology-recommendation.html#recordType">Record Type</tei:ref></tei:ab>
							</xs:documentation>

						<xs:appinfo>
							<sch:pattern>
								<sch:rule context="lido:recordType">
									<sch:extends rule="sch_SKOS"/>
								</sch:rule>
							</sch:pattern>
						</xs:appinfo>
					</xs:annotation>
				</xs:element>
				<xs:element name="recordSource" maxOccurs="unbounded" id="recordSource">
					<xs:annotation>
						<xs:documentation>
							<tei:ab type="description">A set of elements identifying the source of information in this LIDO record,
								generally the repository or other institution.</tei:ab>
							<tei:ab type="label">Record Source</tei:ab>
						</xs:documentation>
						<xs:appinfo>
							<sch:pattern>
								<sch:rule context="lido:recordSource">
									<sch:extends rule="sch_OWL"/>
								</sch:rule>
							</sch:pattern>
						</xs:appinfo>
					</xs:annotation>
					<xs:complexType>
						<xs:complexContent>
							<xs:extension base="lido:legalBodyRefComplexType">
								<xs:attribute ref="lido:type" id="recordSource_type">
									<xs:annotation>
										<xs:documentation>
											<tei:ab type="description">An attribute for the kind of source of the record in focus.<br/>
												Note that this type attribute is primarily intended for use in application profiles.</tei:ab>
											<tei:ab type="dataValues">Controlled terminology</tei:ab>
											<tei:ab type="recommendation">To be determined by application profiles.</tei:ab>
										</xs:documentation>
									</xs:annotation>
								</xs:attribute>
								<xs:attribute ref="lido:sortorder"/>
							</xs:extension>
						</xs:complexContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="recordRights" minOccurs="0" maxOccurs="unbounded" id="recordRights">
					<xs:annotation>
						<xs:documentation>
							<tei:ab type="description">A set of structured information about rights regarding
								the content provided in this LIDO record.</tei:ab>
							<tei:ab type="label">Rights for Record</tei:ab>
						</xs:documentation>
					</xs:annotation>
					<xs:complexType>
						<xs:complexContent>
							<xs:extension base="lido:rightsComplexType">
								<xs:attribute ref="lido:sortorder"/>
							</xs:extension>
						</xs:complexContent>
					</xs:complexType>
				</xs:element>
				<xs:element name="recordInfoSet" type="lido:recordInfoSetComplexType" minOccurs="0" maxOccurs="unbounded" id="recordInfoSet">
					<xs:annotation>
						<xs:documentation>
							<tei:ab type="description">A set of elements for metadata, presentation and
								service information for the described object.</tei:ab>
							<tei:ab type="label">Record Metadata Information Set</tei:ab>
						</xs:documentation>
					</xs:annotation>
				</xs:element>
				<xs:element name="collection" type="lido:objectSetComplexType" minOccurs="0" maxOccurs="unbounded" id="collection">
					<xs:annotation>
						<xs:documentation>
							<tei:ab type="description">A set of identifying and indexing information about the collection the 
								object/work in focus is gathered into or is a member of.<br/>
								Collection applies to any accumulated group of physical or digital 
								items, conceptually or physically brought together on the basis of 
								a focal characteristic. Use cases for grouping items into a 
								collection are various and may span curated holdings in museums, 
								departmental collections, sets of items to be displayed in an exhibition, 
								or aggregations bound informally for cataloging and retrieval purposes.</tei:ab>
							<tei:ab type="label">Collection</tei:ab>
						</xs:documentation>
						<xs:appinfo>
							<sch:pattern>
								<sch:rule context="lido:collection">
									<sch:extends rule="sch_collection"/>
								</sch:rule>
							</sch:pattern>
						</xs:appinfo>
					</xs:annotation>
				</xs:element>
			</xs:sequence>
		</xs:complexType>
	</xs:element>
	<xs:attribute name="relatedencoding" type="xs:string" id="relatedencoding">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">An attribute indicating the format of the data source
					from which the data were migrated. For each sub-element with data values the
					related source data fields can be referenced through the attributes
					<tei:ref target="#encodinganalog">encodinganalog</tei:ref> and <tei:ref target="#label">label</tei:ref>.
				</tei:ab>
				<tei:ab type="dataValues">Free text</tei:ab>
			</xs:documentation>
		</xs:annotation>
	</xs:attribute>
	<xs:complexType name="relatedEventSetComplexType" id="relatedEventSetComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Defines information about an event
					related to the event in focus.</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:sequence>
			<xs:element name="relatedEvent" type="lido:eventSetComplexType" minOccurs="0" id="relatedEvent">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A wrapper for display and index elements for one event
							related to the event in focus.</tei:ab>
						<tei:ab type="label">Related Event</tei:ab>
					</xs:documentation>
				</xs:annotation>
			</xs:element>
			<xs:element name="relatedEventRelType" type="lido:conceptComplexType" minOccurs="0" id="relatedEventRelType">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An index element for the kind of relationship between the event in focus and the related event.</tei:ab>
						<tei:ab type="note">For implementation of the data, note that relationships
							are conceptually reciprocal, but the Relationship Type is often
							different on either side of the relationship.</tei:ab>
						<tei:ab type="label">Related Event Relationship Type</tei:ab>
						<tei:ab type="dataValues">Controlled Terminology</tei:ab>
					</xs:documentation>

					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:relatedEventRelType">
								<sch:extends rule="sch_SKOS"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
			</xs:element>
		</xs:sequence>
	</xs:complexType>
	<xs:complexType name="relatedWorkSetComplexType" id="relatedWorkSetComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Defines information about an object or
					work, or a group of objects or works related to the object/work in focus.</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:sequence>
			<xs:element name="displayRelatedWork" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded" id="displayRelatedWork">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A display element for the description of the related object or work,
							corresponding to the subsequent <tei:ref target="#relatedWork">Related Work</tei:ref> element, including identifying information about the
							object and, possibly, information about the kind of the relation.<br/>
							Repeated for language variants only.</tei:ab>
						<tei:ab type="label">Display Related Work</tei:ab>
						<tei:ab type="dataValues">Free text</tei:ab>
						
						
					</xs:documentation>
				</xs:annotation>
			</xs:element>
			<xs:element name="relatedWork" type="lido:objectSetComplexType" minOccurs="0" id="relatedWork">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A wrapper for display and reference elements of
							an object or work related to the object/work in focus.</tei:ab>
						<tei:ab type="label">Related Work</tei:ab>
						
						
					</xs:documentation>
				</xs:annotation>
			</xs:element>
			<xs:element name="relatedWorkRelType" type="lido:conceptComplexType" minOccurs="0" id="relatedWorkRelType">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An index element for the kind of
							relationship between the object/work in focus and the related object or
							work.</tei:ab>
						<tei:ab type="note">For implementation of the data, note that relationships
							are conceptually reciprocal, but the Relationship Type is often
							different on either side of the relationship (e.g. one work is part of a
							second work, but from the point of view of the second record, the first
							work is the larger context for the second work). Whether or not
							relationships are physically reciprocal as implemented in systems is a
							local decision.</tei:ab>
						<tei:ab type="label">Related Work Relationship Type</tei:ab>
						
						
						<tei:ab type="dataValues">Controlled terminology</tei:ab>
						<tei:ab type="recommendation">LIDO Terminology for
							<tei:ref target="../../documents/terminology-recommendation.html#relatedWorkRelType">Related Work Relationship Type</tei:ref></tei:ab>
					</xs:documentation>

					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:relatedWorkRelType">
								<sch:extends rule="sch_SKOS"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
			</xs:element>
			<xs:element name="sourceRelatedWorkSet" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded" id="sourceRelatedWorkSet">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A text element identifying the source of information about the relationship 
							or the type of relationship between the entity in focus and the related entity. 
							Whenever possible, a published source should be given.
						</tei:ab>
						<tei:ab type="label">Source Related Work Set</tei:ab>
						<tei:ab type="dataValues">Free text</tei:ab>
						
						
						</xs:documentation>
				</xs:annotation>
			</xs:element>
		</xs:sequence>
	</xs:complexType>
	<xs:element name="relatedWorksWrap" id="relatedWorksWrap">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">A wrapper for information about an object or work related
					to the object/work in focus.</tei:ab>
				<tei:ab type="label">Related Works Wrapper</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:complexType>
			<xs:sequence>
				<xs:element name="relatedWorkSet" minOccurs="0" maxOccurs="unbounded" id="relatedWorkSet">
					<xs:annotation>
						<xs:documentation>
							<tei:ab type="description">A set of structured information about an object or work, or a group
								of objects or works related to the object/work in focus, including the kind of relationship between them. 
								May include bibliographic objects in which the object/work is documented or mentioned.<br/>
								Repeated if there is more than one object or work, or more than one group of objects or works referred to.</tei:ab>
							<tei:ab type="label">Related Work Set</tei:ab>
						</xs:documentation>
					</xs:annotation>
					<xs:complexType>
						<xs:complexContent>
							<xs:extension base="lido:relatedWorkSetComplexType">
								<xs:attribute ref="lido:sortorder"/>
							</xs:extension>
						</xs:complexContent>
					</xs:complexType>
				</xs:element>
			</xs:sequence>
		</xs:complexType>
	</xs:element>
	<xs:complexType name="repositorySetComplexType" id="repositorySetComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Defines identification and designation of
					the institution of custody and, possibly, indication of the exact location of
					the object.</tei:ab>
				</xs:documentation>
		</xs:annotation>
		<xs:sequence>
			<xs:element name="displayRepository" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded" id="displayRepository">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A display element for designation and identification of the institution of custody,
							corresponding to elements contained by the <tei:ref target="#repositorySet">Repository/Location Set</tei:ref> element.<br/> 
							Possibly includes indication of the exact location of the object.<br/>
							Repeated for language variants only.</tei:ab>
						<tei:ab type="label">Display Repository</tei:ab>
						
						
						<tei:ab type="dataValues">Free text</tei:ab>
					</xs:documentation>
				</xs:annotation>
			</xs:element>
			<xs:element name="repositoryName" type="lido:legalBodyRefComplexType" minOccurs="0" id="repositoryName">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A wrapper for the identification and designation of the institution
							of custody, possibly with web link.</tei:ab>
						<tei:ab type="label">Repository Name</tei:ab>
						
						
						<tei:ab type="dataValues">Controlled terminology</tei:ab>
						<tei:ab type="recommendation">Linked open authority file, for example, one of those aggregated in
							<tei:ref target="http://viaf.org/">VIAF</tei:ref> or in
							<tei:ref target="https://www.wikidata.org/">Wikidata</tei:ref>
						</tei:ab>
					</xs:documentation>
					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:repositoryName">
								<sch:extends rule="sch_OWL"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
			</xs:element>
			<xs:element name="workID" minOccurs="0" maxOccurs="unbounded" id="workID">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An unambiguous numeric or alphanumeric identification number
							assigned to the object/work by the institution of custody.</tei:ab>
						<tei:ab type="label">Repository Work Identification Number</tei:ab>
						<tei:ab type="dataValues">Free text</tei:ab>
					</xs:documentation>
				</xs:annotation>
				<xs:complexType>
					<xs:simpleContent>
						<xs:extension base="xs:string">
							<xs:attribute ref="lido:type" id="workID_type">
								<xs:annotation>
									<xs:documentation>
										<tei:ab type="description">An attribute for the kind of custodian identification number,
											whether it is, for instance, an <em>accession number</em> or an <em>inventory number</em>.
										</tei:ab>
										<tei:ab type="dataValues">Controlled terminology</tei:ab>
										<tei:ab type="recommendation">LIDO Terminology for
											<tei:ref target="../../documents/terminology-recommendation.html#workID_type">Type of Work Identification Number</tei:ref>
										</tei:ab>
									</xs:documentation>
								</xs:annotation>
							</xs:attribute>
							<xs:attribute ref="lido:sortorder"/>
							<xs:attribute ref="lido:encodinganalog"/>
							<xs:attribute ref="lido:label"/>
						</xs:extension>
					</xs:simpleContent>
				</xs:complexType>
			</xs:element>
			<xs:element name="repositoryLocation" type="lido:placeComplexType" minOccurs="0" id="repositoryLocation">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A wrapper with structured information about the repository location or the geographic place of the object/work;
							recording the geographic location is especially relevant for stationary works, such as architectural built works,
							monumental works, or archeological sites.</tei:ab>
						<tei:ab type="label">Repository/Location</tei:ab>
					</xs:documentation>
					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:repositoryLocation">
								<sch:extends rule="sch_OWL"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
			</xs:element>
			<xs:element name="sourceRepositorySet" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded" id="sourceRepositorySet">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A text element identifying the source of information about the repository or location
							of the entity in focus. Whenever possible, a published source should be given.
						</tei:ab>
						<tei:ab type="label">Source Repository/Location Set</tei:ab>
						<tei:ab type="dataValues">Free text</tei:ab>
						
					    
						
					    
					</xs:documentation>
				</xs:annotation>
			</xs:element>
		</xs:sequence>
		<xs:attribute ref="lido:type" id="repositorySet_type">
			<xs:annotation>
				<xs:documentation>
					<tei:ab type="description">An attribute for the kind of repository or location as
						the current or former one.</tei:ab>
					<tei:ab type="dataValues">Controlled terminology</tei:ab>
					<tei:ab type="recommendation">LIDO Terminology for
						<tei:ref target="../../documents/terminology-recommendation.html#repositorySet_type">Type of Repository Set</tei:ref>
					</tei:ab>
				</xs:documentation>
			</xs:annotation>
		</xs:attribute>
		<xs:attribute ref="lido:sortorder"/>
	</xs:complexType>
	<xs:element name="repositoryWrap" id="repositoryWrap">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">A wrapper for structured information about the repository
					or location.</tei:ab>
				<tei:ab type="label">Repository/Location Wrapper</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:complexType>
			<xs:sequence>
				<xs:element name="repositorySet" type="lido:repositorySetComplexType" minOccurs="0" maxOccurs="unbounded" id="repositorySet">
					<xs:annotation>
						<xs:documentation>
							<tei:ab type="description">A set of elements for the identification, name and
								location of the repository that is responsible for the object/work
								in focus, or the geographic place where a stationary object/work,
								such as a building, is currently or was formerly located.<br/>
								Repeated if there are several designations known, or if former repositories or geographic places
								should be listed.</tei:ab>							
							<tei:ab type="label">Repository/Location Set</tei:ab>
							
								
				    	</xs:documentation>
					</xs:annotation>
				</xs:element>
			</xs:sequence>
		</xs:complexType>
	</xs:element>
	<xs:complexType name="resourceSetComplexType" id="resourceSetComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Defines sets of resource information.</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:sequence>
			<xs:element name="resourceID" type="lido:identifierComplexType" minOccurs="0" maxOccurs="unbounded" id="resourceID">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">The unique numeric or alphanumeric identification
							of the original (digital or analogue) resource.</tei:ab>
						<tei:ab type="label">Resource Identification Number</tei:ab>
					</xs:documentation>
				</xs:annotation>
			</xs:element>
			<xs:element name="resourceRepresentation" minOccurs="0" maxOccurs="unbounded" id="resourceRepresentation">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A set of structured information about the digital representation of a resource for online
							presentation.<br/>
							Repeated for variants representing the same resource, such
							as different sizes of the same image, or a thumbnail representing an
							audio or video file and the digital audio or video file itself.</tei:ab>
						<tei:ab type="label">Resource Representation</tei:ab>
					</xs:documentation>
				</xs:annotation>
				<xs:complexType>
					<xs:sequence>
						<xs:element name="linkResource" id="linkResource">
							<xs:annotation>
								<xs:documentation>
									<tei:ab type="description">A text element providing a reference to the resource in the
										worldwide web environment, usually a stable
										URI/URL.</tei:ab>
									<tei:ab type="label">Link Resource</tei:ab>
									<tei:ab type="dataValues">Free text</tei:ab>
								</xs:documentation>
							</xs:annotation>
							<xs:complexType>
								<xs:simpleContent>
									<xs:extension base="lido:webResourceComplexType">
										<xs:attribute name="codecResource" type="xs:string" id="codecResource">
											<xs:annotation>
												<xs:documentation>
												  <tei:ab type="description">An attribute indicating the codec required for rendering
												  	the resource.</tei:ab>
												   <tei:ab type="dataValues">Free text</tei:ab>
												   <tei:ab type="recommendation">General recommendations for
														<tei:ref target="../../documents/terminology-recommendation.html#codecResource">codec resource</tei:ref></tei:ab>

												</xs:documentation>
											</xs:annotation>
										</xs:attribute>
									</xs:extension>
								</xs:simpleContent>
							</xs:complexType>
						</xs:element>
						<xs:element name="resourceMeasurementsSet" type="lido:measurementsSetComplexType" minOccurs="0" maxOccurs="unbounded" id="resourceMeasurementsSet">
							<xs:annotation>
								<xs:documentation>
									<tei:ab type="description">A set about any technical measurement information
										needed for online presentation of the resource.</tei:ab>
									<tei:ab type="label">Resource Measurements Set</tei:ab>
								</xs:documentation>
							</xs:annotation>
						</xs:element>
					</xs:sequence>
					<xs:attribute ref="lido:type" id="resourceRepresentation_type">
						<xs:annotation>
							<xs:documentation>
								<tei:ab type="description">An attribute for the kind of
									representation of a resource.<br/>
									Examples include <em>placeholder</em>, <em>preview text</em>, or <em>provided image</em>.</tei:ab>
								<tei:ab type="dataValues">Controlled terminology</tei:ab>
								<tei:ab type="recommendation">LIDO Terminology for
									<tei:ref target="../../documents/terminology-recommendation.html#resourceRepresentation_type">Type of Resource Representation</tei:ref></tei:ab>
							</xs:documentation>
						</xs:annotation>
					</xs:attribute>
				</xs:complexType>
			</xs:element>
			<xs:element name="resourceType" type="lido:conceptComplexType" minOccurs="0" id="resourceType">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An index element for the generic kind of the resource that serves as a surrogate of the object/work in focus. Examples may include photographs, digital images, or video recordings.</tei:ab>
						<tei:ab type="label">Resource Type</tei:ab>
						
						
						<tei:ab type="dataValues">Controlled terminology</tei:ab>
						<tei:ab type="recommendation">Linked open vocabulary for
							<tei:ref target="../../documents/terminology-recommendation.html#resourceType">Resource Type</tei:ref>
						</tei:ab>
					</xs:documentation>

					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:resourceType">
								<sch:extends rule="sch_SKOS"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
			</xs:element>
			<xs:element name="resourceRelType" type="lido:conceptComplexType" minOccurs="0" maxOccurs="unbounded" id="resourceRelType">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">The relationship of the resource to the
							object/work being described.</tei:ab>
						<tei:ab type="label">Resource Relationship Type</tei:ab>
						<tei:ab type="dataValues">Controlled terminology</tei:ab>
						
						
						<!-- Überarbeiten -->
						<tei:ab type="recommendation">Linked open vocabulary for
							<tei:ref target="../../documents/terminology-recommendation.html#resourceType">Resource Type</tei:ref>
						</tei:ab>
					</xs:documentation>

					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:resourceRelType">
								<sch:extends rule="sch_SKOS"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
			</xs:element>
			<xs:element name="resourcePerspective" type="lido:conceptComplexType" minOccurs="0" maxOccurs="unbounded" id="resourcePerspective">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An index element that characterizes the view in
							terms of vantage point, perspective, or lighting effects.</tei:ab>
						<tei:ab type="label">Resource Perspective</tei:ab>
						
						
						<tei:ab type="dataValues">Controlled terminology</tei:ab>
						<tei:ab type="recommendation">Linked open vocabulary for
							<tei:ref target="../../documents/terminology-recommendation.html#resourcePerspective">Resource Perspective</tei:ref></tei:ab>
					</xs:documentation>

					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:resourcePerspective">
								<sch:extends rule="sch_SKOS"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
			</xs:element>
			<xs:element name="resourceDescription" minOccurs="0" maxOccurs="unbounded" id="resourceDescription">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A text element for the description of the spatial,
							chronological, or contextual aspects of the object/work as captured in
							the resource in focus.</tei:ab>
						<tei:ab type="label">Resource Description</tei:ab>
						<tei:ab type="dataValues">Free text</tei:ab>
						
						
					</xs:documentation>
				</xs:annotation>
				<xs:complexType>
					<xs:simpleContent>
						<xs:extension base="lido:textComplexType">
							<xs:attribute ref="lido:type" id="resourceDescription_type">
								<xs:annotation>
									<xs:documentation>
										<tei:ab type="description">An attribute for the kind of
											description of a resource.<br/>
											Note that this type attribute is primarily intended for use in application profiles.</tei:ab>
										<tei:ab type="dataValues">Controlled terminology</tei:ab>
										<tei:ab type="recommendation">To be determined by application profiles.</tei:ab>
									</xs:documentation>
								</xs:annotation>
							</xs:attribute>
							<xs:attribute ref="lido:sortorder"/>
						</xs:extension>
					</xs:simpleContent>
				</xs:complexType>
			</xs:element>
			<xs:element name="resourceDateTaken" type="lido:dateSetComplexType" minOccurs="0" id="resourceDateTaken">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A wrapper for a date or range of dates associated with the
							creation or production of the original resource, for instance an image
							or a recording.<br/>
							Note that this date is not necessarily the same as the
							date of production of the digital resource.</tei:ab>
						<tei:ab type="note">This is not necessarily the same as the date of
							production of the digital resource (e.g. a digitization of a negative is
							usually made years after the image was captured on film). Format will
							vary depending upon implementation.</tei:ab>
						<tei:ab type="label">Resource Date Taken</tei:ab>
						
						
					</xs:documentation>
				</xs:annotation>
			</xs:element>
			<xs:element name="resourceSource" minOccurs="0" maxOccurs="unbounded" id="resourceSource">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A set of elements identifying the actor from which the image or other resource was obtained.<br/>
							Used when the source differs from the source named in <tei:ref target="#recordSource">Record Source</tei:ref>.</tei:ab>
						<tei:ab type="label">Resource Source</tei:ab>
						
						
						<tei:ab type="dataValues">Controlled terminology</tei:ab>
						</xs:documentation>
					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:resourceSource">
								<sch:extends rule="sch_OWL"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
				<xs:complexType>
					<xs:complexContent>
						<xs:extension base="lido:legalBodyRefComplexType">
							<xs:attribute ref="lido:type" id="resourceSource_type">
								<xs:annotation>
									<xs:documentation>
										<tei:ab type="description">An attribute for the kind of source of a resource.<br/>
											Note that this type attribute is primarily intended for use in application profiles.</tei:ab>
										<tei:ab type="dataValues">Controlled terminology</tei:ab>
										<tei:ab type="recommendation">To be determined by application profiles.</tei:ab>
									</xs:documentation>
								</xs:annotation>
							</xs:attribute>
							<xs:attribute ref="lido:sortorder"/>
						</xs:extension>
					</xs:complexContent>
				</xs:complexType>
			</xs:element>
			<xs:element name="rightsResource" minOccurs="0" maxOccurs="unbounded" id="rightsResource">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A set of structured information about rights regarding the image or
							other resource. Applicable if the holder of the reproduction rights for
							the resource differs from the holder of rights for the object/work.</tei:ab>
						<tei:ab type="label">Rights Resource</tei:ab>
					</xs:documentation>
				</xs:annotation>
				<xs:complexType>
					<xs:complexContent>
						<xs:extension base="lido:rightsComplexType">
							<xs:attribute ref="lido:sortorder"/>
						</xs:extension>
					</xs:complexContent>
				</xs:complexType>
			</xs:element>
		</xs:sequence>
	</xs:complexType>
	<xs:element name="resourceWrap" id="resourceWrap">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">A wrapper for structured information about resources that
					serve as surrogates for an object/work, including digital images, videos or
					audio files that represent it in an online service.</tei:ab>
				<tei:ab type="label">Resource Wrapper</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:complexType>
			<xs:sequence>
				<xs:element name="resourceSet" minOccurs="0" maxOccurs="unbounded" id="resourceSet">
					<xs:annotation>
						<xs:documentation>
							<tei:ab type="description">A set of structured information about a resource serving as a surrogate
								for the object/work in focus, such as a photograph or a digital image; excluding items
								that are considered object/works in their own right.<br/>
								Repeated if there is more than one resource associated with the object/work in focus.</tei:ab>
							<tei:ab type="note">Provides identification of a surrogate of the
								object/work including digital images, slides, transparencies,
								photographs, audio, video and moving images, but excluding items
								that are considered object/works in their own right. For such as
								drawings, prints, paintings or photographs considered art and other
								works that themselves contain representations of other works, use
									<tei:ref target="#relatedWorksWrap">Related Works</tei:ref>
								and/or <tei:ref target="#subjectWrap">Subjects</tei:ref>.</tei:ab>
							<tei:ab type="label">Resource Set</tei:ab>
							
							
						</xs:documentation>
					</xs:annotation>
					<xs:complexType>
						<xs:complexContent>
							<xs:extension base="lido:resourceSetComplexType">
								<xs:attribute ref="lido:sortorder"/>
							</xs:extension>
						</xs:complexContent>
					</xs:complexType>
				</xs:element>
			</xs:sequence>
		</xs:complexType>
	</xs:element>
	<xs:complexType name="rightsComplexType" id="rightsComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Defines information about rights management. May include
					copyright and other intellectual property statements as well as license information.</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:sequence>
			<xs:element name="rightsType" minOccurs="0" maxOccurs="unbounded" id="rightsType">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An index element for rights information being recorded.
							This can refer to a generic kind of right, such as copyright or a related right,
							but also be a specific rights or license statement like a standardized statement
							on copyright, usage, or access rights.</tei:ab>
						<tei:ab type="label">Rights Type</tei:ab>
						<tei:ab type="dataValues">Controlled terminology</tei:ab>
						<tei:ab type="recommendation">Linked open vocabulary for
							<tei:ref target="../../documents/terminology-recommendation.html#rightsType">Rights Type</tei:ref></tei:ab>
					</xs:documentation>

					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:rightsType">
								<sch:extends rule="sch_SKOS"/>
								<sch:extends rule="sch_rightsType_type"/>
								<sch:extends rule="sch_rightsType"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
				<xs:complexType>
					<xs:complexContent>
						<xs:extension base="lido:conceptComplexType">
							<xs:attribute ref="lido:type" id="rightsType_type">
								<xs:annotation>
									<xs:documentation>
										<tei:ab type="description">An attribute for the kind of rights type,
											whether it refers to a generic kind of right, like copyright or performance rights,
											or is a specific rights or license statement, namely
											<tei:ref target="https://creativecommons.org/about/cclicenses/">Creative Commons Licenses</tei:ref>
											and <tei:ref target="https://rightsstatements.org/">Rights Statements</tei:ref>.</tei:ab>
										<tei:ab type="dataValues">Controlled terminology</tei:ab>
										<tei:ab type="recommendation">LIDO Terminology for
											<tei:ref target="../../documents/terminology-recommendation.html#rightsType_type">Type of Rights Type</tei:ref></tei:ab>
									</xs:documentation>
								</xs:annotation>
							</xs:attribute>
						</xs:extension>
					</xs:complexContent>
				</xs:complexType>
			</xs:element>
			<xs:element name="rightsDate" type="lido:dateComplexType" minOccurs="0" id="rightsDate">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A wrapper for the date on which a right is or was current.</tei:ab>
						<tei:ab type="label">Rights Date</tei:ab>
					</xs:documentation>
				</xs:annotation>
			</xs:element>
			<xs:element name="rightsHolder" type="lido:rightsHolderComplexType" minOccurs="0" maxOccurs="unbounded" id="rightsHolder">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A set of elements identifying the <em>person</em> or the <em>group of persons</em> holding the rights referenced
							in <tei:ref target="#rightsType">Rights Type</tei:ref>. Often refers to copyright and related rights,
							such as the right to reproduce, distribute, exhibit or use the entity in focus, for example,
							the object/work, resource or metadata record.</tei:ab>
						<tei:ab type="label">Rights Holder</tei:ab>
						<tei:ab type="dataValues">Controlled terminology</tei:ab>
						<tei:ab type="recommendation">Linked open authority file, for example, one of those aggregated in
							<tei:ref target="http://viaf.org/">VIAF</tei:ref>
						</tei:ab>
					</xs:documentation>
					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:rightsHolder">
								<sch:extends rule="sch_OWL"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
			</xs:element>
			<xs:element name="creditLine" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded" id="creditLine">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A text element for a formal acknowledgment or statement related to the object/work, 
							resource, or record in focus, regarding the roles or intentions of an owner, a benefactor,
							a producer, or other involved parties. May include, for instance, the name of the benefactor and the kind of 
							contribution, such as a bequest, gift, or loan.<br/>
							For resources of copyrighted material, it can explicitly state the intended attribution for a rights
							holder or that the material has been reproduced with permission.<br/>
							For metadata and/or resources, it can also comprise an acknowledgment of the funding agency that supported
							the digitization and indexing.<br/>
							The text in this element should be used verbatim and can be expected to be displayed as such to support
							legal requirements for attribution.<br/>
							Note that legal information, such as URIs for license statements, should be recorded in the respective
							element <tei:ref target="#rightsType">Rights Type</tei:ref>.</tei:ab>
						<tei:ab type="label">Credit Line</tei:ab>
						<tei:ab type="dataValues">Free text</tei:ab>
						
						
						
						
					</xs:documentation>
				</xs:annotation>
			</xs:element>
		</xs:sequence>
	</xs:complexType>
	<xs:complexType name="rightsHolderComplexType" id="rightsHolderComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Defines information about the <em>person</em> or <em>group of persons</em>,
					referred to as legal body, holding the described right.</tei:ab>
				<tei:ab type="label">Rights Holder</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:complexContent>
			<xs:extension base="lido:legalBodyRefComplexType">
				<xs:attribute ref="lido:sortorder"/>
			</xs:extension>
		</xs:complexContent>
	</xs:complexType>
	<xs:element name="rightsWorkWrap" id="rightsWorkWrap">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">A wrapper for structured information about rights
					associated with the object/work in focus. Rights information about the record
					and the resource is recorded in the respective rights elements.</tei:ab>
				<tei:ab type="note">Rights information for the record and for resources is recorded
					in the respective rights elements <tei:ref target="#recordRights">Rights for Record</tei:ref> and <tei:ref target="#rightsResource">Rights for Resource</tei:ref>.</tei:ab>
				<tei:ab type="label">Rights for Work Wrapper</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:complexType>
			<xs:sequence>
				<xs:element name="rightsWorkSet" minOccurs="0" maxOccurs="unbounded" id="rightsWorkSet">
					<xs:annotation>
						<xs:documentation>
							<tei:ab type="description">A set of structured information about rights
								management. May include copyright and other intellectual property
								statements as well as license information about the object/work.</tei:ab>
							<tei:ab type="label">Rights for Work Set</tei:ab>
						</xs:documentation>
					</xs:annotation>
					<xs:complexType>
						<xs:complexContent>
							<xs:extension base="lido:rightsComplexType">
								<xs:attribute ref="lido:sortorder"/>
							</xs:extension>
						</xs:complexContent>
					</xs:complexType>
				</xs:element>
			</xs:sequence>
		</xs:complexType>
	</xs:element>
	<xs:attribute name="sortorder" type="xs:integer" id="sortorder">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">An attribute assigning a priority order for online presentation of the
					element in focus.</tei:ab>
				<tei:ab type="dataValues">Type-checked</tei:ab>
			</xs:documentation>
		</xs:annotation>
	</xs:attribute>
	<xs:attribute name="source" type="xs:string" id="source">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">An attribute indicating the source of the information given in the holding
					element.</tei:ab>
				<tei:ab type="dataValues">Free text</tei:ab>
			</xs:documentation>
		</xs:annotation>
	</xs:attribute>
	<xs:complexType name="subjectComplexType" id="subjectComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Defines a set of subject indexing information.</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:sequence>
			<xs:element name="extentSubject" type="lido:conceptMixedComplexType" minOccurs="0" maxOccurs="unbounded" id="extentSubject">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An index element specifying the part of the
							object/work to which the respective subject term or terms apply, when
							there are multiple subjects.<br/>
							Examples may include <em>side A</em>, <em>side B</em>, <em>recto</em>, <em>verso</em>.</tei:ab>
						<tei:ab type="label">Extent Subject</tei:ab>
						
						
						<tei:ab type="dataValues">Controlled terminology</tei:ab>
						<tei:ab type="recommendation">Linked open vocabulary for
							<tei:ref target="../../documents/terminology-recommendation.html#extentSubject">Extent Subject</tei:ref></tei:ab>
					</xs:documentation>
					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:extentConcept">
								<sch:extends rule="sch_MixedContent"/>
								<sch:extends rule="sch_SKOS"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
			</xs:element>
			<xs:element name="subjectConcept" minOccurs="0" maxOccurs="unbounded" id="subjectConcept">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An index element for the subject matter of the
							object/work expressed by generic concepts. May include concepts to
							describe iconographical themes, literary topics, or the material world.
							References to individual entities, for instance actors or places, are
							indicated in the respective sub-elements.<br/>
							Repeated for each single or typed subject concept referred to
							by the object/work in focus.</tei:ab>
						<tei:ab type="label">Subject Concept</tei:ab>
						
						
						
						
						<tei:ab type="dataValues">Controlled terminology</tei:ab>
						<tei:ab type="recommendation">Linked open vocabulary for
							<tei:ref target="../../documents/terminology-recommendation.html#subjectConcept">Subject Concept</tei:ref></tei:ab>
					</xs:documentation>

					<xs:appinfo>
						<sch:pattern>
							<sch:rule context="lido:subjectConcept">
								<sch:extends rule="sch_SKOS"/>
							</sch:rule>
						</sch:pattern>
					</xs:appinfo>
				</xs:annotation>
				<xs:complexType>
					<xs:complexContent>
						<xs:extension base="lido:conceptComplexType">
							<xs:attribute ref="lido:sortorder"/>
						</xs:extension>
					</xs:complexContent>
				</xs:complexType>
			</xs:element>
			<xs:element name="subjectActor" minOccurs="0" maxOccurs="unbounded" id="subjectActor">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A set of display and index elements for a <em>person</em>, or a <em>group of persons</em>, depicted by an object/work, or
							what it is about.<br/>
						    Repeated if there are multiple actors.</tei:ab>
						<tei:ab type="label">Subject Actor</tei:ab>
						
						
						
						
						<tei:ab type="dataValues">Controlled terminology</tei:ab>
						<tei:ab type="recommendation">Linked open authority file for
							<tei:ref target="../../documents/terminology-recommendation.html#subjectActor">Subject Actor</tei:ref>
						</tei:ab>
					</xs:documentation>
				</xs:annotation>
				<xs:complexType>
					<xs:complexContent>
						<xs:extension base="lido:actorSetComplexType">
							<xs:attribute ref="lido:sortorder"/>
						</xs:extension>
					</xs:complexContent>
				</xs:complexType>
			</xs:element>
			<xs:element name="subjectDate" minOccurs="0" maxOccurs="unbounded" id="subjectDate">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A set of display and index elements for the date or range of dates
							referred to by an object/work, or what it is about.<br/>
							Repeated if there are multiple dates.</tei:ab>
						<tei:ab type="label">Subject Date</tei:ab>
						<tei:ab type="dataValues">Controlled format</tei:ab>
						
						
					</xs:documentation>
				</xs:annotation>
				<xs:complexType>
					<xs:complexContent>
						<xs:extension base="lido:dateSetComplexType">
							<xs:attribute ref="lido:sortorder"/>
						</xs:extension>
					</xs:complexContent>
				</xs:complexType>
			</xs:element>
			<xs:element name="subjectEvent" minOccurs="0" maxOccurs="unbounded" id="subjectEvent">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A set of display and index elements for an event depicted by the object/work in focus,
							or what it is about.<br/>
							Repeated if there are multiple events.</tei:ab>
						<tei:ab type="label">Subject Event</tei:ab>
						
						
						<tei:ab type="dataValues">Controlled terminology</tei:ab>
						<tei:ab type="recommendation">Linked open authority file for
							<tei:ref target="../../documents/terminology-recommendation.html#subjectEvent">Subject Event</tei:ref>
						</tei:ab>
					</xs:documentation>
				</xs:annotation>
				<xs:complexType>
					<xs:complexContent>
						<xs:extension base="lido:eventSetComplexType">
							<xs:attribute ref="lido:sortorder"/>
						</xs:extension>
					</xs:complexContent>
				</xs:complexType>
			</xs:element>
			<xs:element name="subjectPlace" minOccurs="0" maxOccurs="unbounded" id="subjectPlace">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A set of display and index elements for a place depicted by the object/work in focus, 
							or what it is about.<br/>
							Repeated if there are multiple places.</tei:ab>
						<tei:ab type="label">Subject Place</tei:ab>
						
						
					</xs:documentation>
				</xs:annotation>
				<xs:complexType>
					<xs:complexContent>
						<xs:extension base="lido:placeSetComplexType">
							<xs:attribute ref="lido:sortorder"/>
						</xs:extension>
					</xs:complexContent>
				</xs:complexType>
			</xs:element>
			<xs:element name="subjectObject" minOccurs="0" maxOccurs="unbounded" id="subjectObject">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A set of display and index elements for an object depicted by the object/work in focus, or what it is
							about. The object may be, for instance, a particular building, like the
							<em>Hagia Sophia</em>, or an individual work of art, such as a watercolor painting showing a
							<em>View of the Hagia Sophia in Constantinople</em>.<br/>
							    Note that Subject Object does not relate to generic concepts,
							    but to individual entities only.<br/>
							    Repeated if there are multiple objects.</tei:ab>
						<tei:ab type="label">Subject Object</tei:ab>
						<tei:ab type="dataValues">Controlled terminology</tei:ab>
						<tei:ab type="recommendation">Linked open authority file for
						    <tei:ref target="../../documents/terminology-recommendation.html#subjectObject">Subject Object</tei:ref>
						</tei:ab>
					</xs:documentation>
				</xs:annotation>
				<xs:complexType>
					<xs:complexContent>
						<xs:extension base="lido:objectSetComplexType">
							<xs:attribute ref="lido:sortorder"/>
						</xs:extension>
					</xs:complexContent>
				</xs:complexType>
			</xs:element>
		</xs:sequence>
		<xs:attribute ref="lido:type" id="subject_type">
			<xs:annotation>
				<xs:documentation>
					<tei:ab type="description">An attribute for the kind of subject information, whether it is, for instance,
						a <em>description</em> of a generic subject, an <em>identification</em> of a named individual, 
						or an <em>interpretation</em> of the theme.</tei:ab>
					<tei:ab type="dataValues"/>
				</xs:documentation>
			</xs:annotation>
		</xs:attribute>
	</xs:complexType>
	<xs:complexType name="subjectSetComplexType" id="subjectSetComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Defines display and index elements for a
					single set of subject information.</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:sequence>
			<xs:element name="displaySubject" type="lido:textComplexType" minOccurs="0" maxOccurs="unbounded" id="displaySubject">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A display element for the subject matter depicted
							in the object/work, or what it is about, corresponding to the subsequent
							<tei:ref target="#subject">Subject</tei:ref> element.<br/>
							Repeated for language variants only.</tei:ab>
						<tei:ab type="label">Display Subject</tei:ab>
						
						
						<tei:ab type="dataValues">Free text</tei:ab>
					</xs:documentation>
				</xs:annotation>
			</xs:element>
			<xs:element name="subject" type="lido:subjectComplexType" minOccurs="0" id="subject">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A wrapper for information about the subject of the
							object/work in focus. The sub-elements identify, describe, and/or interpret
							what is depicted in and by an object/work, or what it is about.<br/>
							While not required, it is highly recommended to include subject information.</tei:ab>
						<tei:ab type="label">Subject</tei:ab>
						
						
					</xs:documentation>
				</xs:annotation>
			</xs:element>
		</xs:sequence>
	</xs:complexType>
	<xs:element name="subjectWrap" id="subjectWrap">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">A wrapper for structured information about the subject
					matter of the object/work in focus. This may be a description or identification
					of what the object/work depicts, also referred to as <em>ofness</em>,
					or an interpretation of its meaning, also referred to as <em>aboutness</em>.<br/>
					Description relates to the generic content depicted in or by the work, that is,
					what would be seen in the work by an objective viewer.<br/>
					Identification relates to the specific subject, including named historical, mythological, or fictional subjects.<br/>
					Interpretation relates to the iconographical, thematic, or symbolic meaning represented by the object/work.<br/>
					To indicate the type of subject, refer to the terminology recommendation for
					<tei:ref target="../../documents/terminology-recommendation.html#subject_type">Type of Subject</tei:ref>.
					</tei:ab>
				<tei:ab type="label">Subject Wrapper</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:complexType>
			<xs:sequence>
				<xs:element name="subjectSet" minOccurs="0" maxOccurs="unbounded" id="subjectSet">
					<xs:annotation>
						<xs:documentation>
							<tei:ab type="description">A set of display and index elements for one set of subject information.<br/>
								Repeated for multiple subjects, if the object/work has multiple parts, or if the
								subject information is qualified by a type attribute.</tei:ab>
							<tei:ab type="label">Subject Set</tei:ab>
							
							
						</xs:documentation>
					</xs:annotation>
					<xs:complexType>
						<xs:complexContent>
							<xs:extension base="lido:subjectSetComplexType">
								<xs:attribute ref="lido:sortorder"/>
							</xs:extension>
						</xs:complexContent>
					</xs:complexType>
				</xs:element>
			</xs:sequence>
		</xs:complexType>
	</xs:element>
	<xs:complexType name="termComplexType" id="termComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Defines information about a word or phrase used to
					designate a concept for indexing.</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:simpleContent>
			<xs:extension base="xs:string">
				<xs:attribute ref="lido:pref"/>
				<xs:attribute ref="lido:addedSearchTerm"/>
				<xs:attributeGroup ref="lido:textAttributesSet"/>
			</xs:extension>
		</xs:simpleContent>
	</xs:complexType>
	<xs:complexType name="textComplexType" id="textComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Defines simple text with encodinganalog and label attribute.</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:simpleContent>
			<xs:extension base="xs:string">
				<xs:attributeGroup ref="lido:textAttributesSet"/>
			</xs:extension>
		</xs:simpleContent>
	</xs:complexType>

	<xs:group name="conceptElementsSet" id="conceptElementsSet">
		<xs:sequence>
			<xs:any minOccurs="0" processContents="skip" namespace="http://www.w3.org/2004/02/skos/core#"/>
			<xs:element name="conceptID" type="lido:identifierComplexType" minOccurs="0" maxOccurs="unbounded" id="conceptID">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">An identifier for the concept.<br/>
							Repeatable for identifiers from different controlled vocabularies or other sources.<br/> 
							The recommended method, however, is to reference equivalent resources using a 
							<tei:ref target="https://www.w3.org/TR/skos-reference/#mapping">
							skos:mappingRelation</tei:ref> property, stating that two or more URIs refer to a similar concept, 
							suitable for search expansion in information retrieval.</tei:ab>
						<tei:ab type="label">Concept Identifier</tei:ab>
						
						
					</xs:documentation>
				</xs:annotation>
			</xs:element>
			<xs:element name="term" type="lido:termComplexType" minOccurs="0" maxOccurs="unbounded" id="term">
				<xs:annotation>
					<xs:documentation>
						<tei:ab type="description">A text element for a designation, word or phrase, representing the
							generic concept used for indexing. The term may be obtained from a published
							vocabulary, preferably Linked Open Data, or added as a local search term for
							retrieval purposes.</tei:ab>
						<tei:ab type="label">Term</tei:ab>
						<tei:ab type="dataValues">Free text</tei:ab>
						
						
					</xs:documentation>
				</xs:annotation>
			</xs:element>
		</xs:sequence>
	</xs:group>

	<xs:attributeGroup name="textAttributesSet" id="textAttributesSet">
		<xs:attribute ref="xml:lang"/>
		<xs:attribute ref="lido:encodinganalog"/>
		<xs:attribute ref="lido:label"/>
	</xs:attributeGroup>

	<xs:complexType name="conceptMixedComplexType" id="conceptMixedComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Defines mixed content. Allows either elements as defined in
					<tei:ref target="#conceptComplexType">Concept complex type</tei:ref> or simple text as
					described in <tei:ref target="#textComplexType">Text complex type</tei:ref>.<br/>
					Note that these types are mutually exclusive.</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:group ref="lido:conceptElementsSet"/>
		<xs:attributeGroup ref="lido:textAttributesSet"/>
	</xs:complexType>

	<xs:element name="titleWrap" id="titleWrap">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">A wrapper for structured information about the title or
					name of an object/work.</tei:ab>
				<tei:ab type="label">Title Wrapper</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:complexType>
			<xs:sequence>
				<xs:element name="titleSet" maxOccurs="unbounded" id="titleSet">
					<xs:annotation>
						<xs:documentation>
							<tei:ab type="description">A set of structured information about one or more 
								titles or object names with source information.<br/>
								Repeated to record different sources for multiple appellations.</tei:ab>
							<tei:ab type="label">Title Set</tei:ab>
							
							
						</xs:documentation>
					</xs:annotation>
					<xs:complexType>
						<xs:complexContent>
							<xs:extension base="lido:appellationComplexType">
								<xs:attribute ref="lido:type" id="titleSet_type">
									<xs:annotation>
										<xs:documentation>
											<tei:ab type="description">An attribute indicating the title or name assigned to an object/work.
												Examples may include <em>descriptive title</em>, <em>original title</em>, or <em>repository title</em>.
												If there are multiple titles, it is recommended to mark one of them as preferred,
												to be used by default in displays.</tei:ab>
											<tei:ab type="dataValues">Controlled</tei:ab>
											<tei:ab type="recommendation">Linked open vocabulary for
												<tei:ref target="../../documents/terminology-recommendation.html#titleSet_type">Type of Title Set</tei:ref>
											</tei:ab>
										</xs:documentation>
									</xs:annotation>
								</xs:attribute>
								<xs:attribute ref="lido:sortorder"/>
								<xs:attribute ref="lido:pref"/>
							</xs:extension>
						</xs:complexContent>
					</xs:complexType>
				</xs:element>
			</xs:sequence>
		</xs:complexType>
	</xs:element>
	<xs:attribute name="type" type="xs:string" id="type">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">An attribute for the particular kind of
					information given in the holding element. Will generally have to be populated
					with a given value list.</tei:ab>
				<tei:ab type="dataValues">Controlled Terminology</tei:ab>
			</xs:documentation>
		</xs:annotation>
	</xs:attribute>
	<xs:complexType name="webResourceComplexType" id="webResourceComplexType">
		<xs:annotation>
			<xs:documentation>
				<tei:ab type="description">Defines a reference to a URL of a web resource that
					describes or represents the entity in focus, for example, the object/work,
					resource or metadata record.<br/>
					Note that this web reference differs from an identifier for the item itself.</tei:ab>
			</xs:documentation>
		</xs:annotation>
		<xs:simpleContent>
			<xs:extension base="xs:string">
				<xs:attribute ref="lido:pref"/>
				<xs:attribute name="formatResource" type="xs:string" id="formatResource">
					<xs:annotation>
						<xs:documentation>
							<tei:ab type="description">An attribute indicating the internet media
								type of the given web resource.</tei:ab>
							<tei:ab type="dataValues">Controlled values</tei:ab>
							<tei:ab type="recommendation">Refer to <tei:ref target="http://www.iana.org/assignments/media-types/">IANA media types</tei:ref>
							</tei:ab>
						</xs:documentation>
					</xs:annotation>
				</xs:attribute>
				<xs:attributeGroup ref="lido:textAttributesSet"/>
			</xs:extension>
		</xs:simpleContent>
	</xs:complexType>
</xs:schema>

