package Lido::XML::LIDO_1_0::referenceSystems;

use Moo;

our $VERSION = '0.04';

sub content {
	my @lines = <DATA>;
	join '' , @lines;
}

1;
__DATA__
<?xml version="1.0" encoding="UTF-8"?>
<schema targetNamespace="http://www.opengis.net/gml" xmlns="http://www.w3.org/2001/XMLSchema" xmlns:gml="http://www.opengis.net/gml" elementFormDefault="qualified" version="3.1.1.2" xml:lang="en">
	<annotation>
		<appinfo source="urn:opengis:specification:gml:schema-xsd:referenceSystems:3.1.1"/>
		<documentation>How to encode reference system definitions. Builds on several other parts of GML 3 to encode the data needed to define reference systems.
		This schema encodes the Reference System (RS_) package of the extended UML Model for OGC Abstract Specification Topic 2: Spatial Referencing by Coordinates. That UML model is adapted from ISO 19111 - Spatial referencing by coordinates, as described in Annex C of Topic 2. The SC_CRS class is also encoded here, to eliminate the (circular) references from coordinateOperations.xsd to coordinateReferenceSystems.xsd. The RS_SpatialReferenceSystemUsingGeographicIdentifier class is not encoded, since it is not applicable to coordinate positions. The CI_Citation class is not directly encoded, since such information can be included as metaDataProperty elements which are optionally allowed. A modified version of the EX_Extent (DataType) class from ISO 19115 is currently encoded here, using GML 3 schema types. (A more extensive version of the EX_Extent package might be XML encoded in the future, probably in a separate extent.xsd schema.)
		Caution: The CRS package in GML 3.1 and GML 3.1.1 is preliminary, and is expected to undergo some modifications that are not backward compatible during the development of GML 3.2 (ISO 19136). The GML 3.2 package will implement the model described in the revised version of ISO 19111.
		
		GML is an OGC Standard.
		Copyright (c) 2001,2005,2010 Open Geospatial Consortium.
		To obtain additional rights of use, visit http://www.opengeospatial.org/legal/ .
		</documentation>
	</annotation>
	<!-- ======================================================
       includes and imports
	====================================================== -->
	<include schemaLocation="gml.xsd"/>
	<include schemaLocation="geometryBasic2d.xsd"/>
	<include schemaLocation="temporal.xsd"/>
	<!-- ======================================================
       elements and types
	====================================================== -->
	<element name="_ReferenceSystem" type="gml:AbstractReferenceSystemType" abstract="true" substitutionGroup="gml:Definition"/>
	<!-- =================================================== -->
	<complexType name="AbstractReferenceSystemBaseType" abstract="true">
		<annotation>
			<documentation>Basic encoding for reference system objects, simplifying and restricting the DefinitionType as needed.</documentation>
		</annotation>
		<complexContent>
			<restriction base="gml:DefinitionType">
				<sequence>
					<element ref="gml:metaDataProperty" minOccurs="0" maxOccurs="unbounded"/>
					<element ref="gml:srsName"/>
				</sequence>
				<attribute ref="gml:id" use="required"/>
			</restriction>
		</complexContent>
	</complexType>
	<!-- =================================================== -->
	<element name="srsName" type="gml:CodeType" substitutionGroup="gml:name">
		<annotation>
			<documentation>The name by which this reference system is identified.</documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<complexType name="AbstractReferenceSystemType" abstract="true">
		<annotation>
			<documentation>Description of a spatial and/or temporal reference system used by a dataset.</documentation>
		</annotation>
		<complexContent>
			<extension base="gml:AbstractReferenceSystemBaseType">
				<sequence>
					<element ref="gml:srsID" minOccurs="0" maxOccurs="unbounded">
						<annotation>
							<documentation>Set of alterative identifications of this reference system. The first srsID, if any, is normally the primary identification code, and any others are aliases.</documentation>
						</annotation>
					</element>
					<element ref="gml:remarks" minOccurs="0">
						<annotation>
							<documentation>Comments on or information about this reference system, including source information.</documentation>
						</annotation>
					</element>
					<element ref="gml:validArea" minOccurs="0"/>
					<element ref="gml:scope" minOccurs="0"/>
				</sequence>
			</extension>
		</complexContent>
	</complexType>
	<!-- =================================================== -->
	<element name="srsID" type="gml:IdentifierType">
		<annotation>
			<documentation>An identification of a reference system.</documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="referenceSystemRef" type="gml:ReferenceSystemRefType"/>
	<!-- =================================================== -->
	<complexType name="ReferenceSystemRefType">
		<annotation>
			<documentation>Association to a reference system, either referencing or containing the definition of that reference system.</documentation>
		</annotation>
		<sequence minOccurs="0">
			<element ref="gml:_ReferenceSystem"/>
		</sequence>
		<attributeGroup ref="gml:AssociationAttributeGroup"/>
	</complexType>
	<!-- =================================================== -->
	<element name="_CRS" type="gml:AbstractReferenceSystemType" abstract="true" substitutionGroup="gml:_ReferenceSystem">
		<annotation>
			<documentation>Abstract coordinate reference system, usually defined by a coordinate system and a datum. This abstract complexType shall not be used, extended, or restricted, in an Application Schema, to define a concrete subtype with a meaning equivalent to a concrete subtype specified in this document.</documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="crsRef" type="gml:CRSRefType"/>
	<!-- =================================================== -->
	<complexType name="CRSRefType">
		<annotation>
			<documentation>Association to a CRS abstract coordinate reference system, either referencing or containing the definition of that CRS.</documentation>
		</annotation>
		<sequence minOccurs="0">
			<element ref="gml:_CRS"/>
		</sequence>
		<attributeGroup ref="gml:AssociationAttributeGroup"/>
	</complexType>
	<!-- =================================================== -->
	<!-- =================================================== -->
	<complexType name="IdentifierType">
		<annotation>
			<documentation>An identification of a CRS object. The first use of the IdentifierType for an object, if any, is normally the primary identification code, and any others are aliases.</documentation>
		</annotation>
		<sequence>
			<element ref="gml:name">
				<annotation>
					<documentation>The code or name for this Identifier, often from a controlled list or pattern defined by a code space. The optional codeSpace attribute is normally included to identify or reference a code space within which one or more codes are defined. This code space is often defined by some authority organization, where one organization may define multiple code spaces. The range and format of each Code Space identifier is defined by that code space authority. Information about that code space authority can be included as metaDataProperty elements which are optionally allowed in all CRS objects.</documentation>
				</annotation>
			</element>
			<element ref="gml:version" minOccurs="0"/>
			<element ref="gml:remarks" minOccurs="0">
				<annotation>
					<documentation>Remarks about this code or alias.</documentation>
				</annotation>
			</element>
		</sequence>
	</complexType>
	<!-- =================================================== -->
	<element name="version" type="string">
		<annotation>
			<documentation>Identifier of the version of the associated codeSpace or code, as specified by the codeSpace or code authority. This version is included only when the "code" or "codeSpace" uses versions. When appropriate, the version is identified by the effective date, coded using ISO 8601 date format.</documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="remarks" type="gml:StringOrRefType">
		<annotation>
			<documentation>Information about this object or code. Contains text or refers to external text.</documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="scope" type="string">
		<annotation>
			<documentation>Description of domain of usage, or limitations of usage, for which this CRS object is valid.</documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="validArea" type="gml:ExtentType">
		<annotation>
			<documentation>Area or region in which this CRS object is valid.</documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<complexType name="ExtentType">
		<annotation>
			<documentation>Information about the spatial, vertical, and/or temporal extent of a reference system object. Constraints: At least one of the elements "description", "boundingBox", "boundingPolygon", "verticalExtent", and temporalExtent" must be included, but more that one can be included when appropriate. Furthermore, more than one "boundingBox", "boundingPolygon", "verticalExtent", and/or temporalExtent" element can be included, with more than one meaning the union of the individual domains.</documentation>
		</annotation>
		<sequence>
			<element ref="gml:description" minOccurs="0">
				<annotation>
					<documentation>Description of spatial and/or temporal extent of this object.</documentation>
				</annotation>
			</element>
			<choice>
				<annotation>
					<documentation>Geographic domain of this reference system object.</documentation>
				</annotation>
				<element ref="gml:boundingBox" minOccurs="0" maxOccurs="unbounded">
					<annotation>
						<documentation>Unordered list of bounding boxes (or envelopes) whose union describes the spatial domain of this object.</documentation>
					</annotation>
				</element>
				<element ref="gml:boundingPolygon" minOccurs="0" maxOccurs="unbounded">
					<annotation>
						<documentation>Unordered list of bounding polygons whose union describes the spatial domain of this object.</documentation>
					</annotation>
				</element>
			</choice>
			<element ref="gml:verticalExtent" minOccurs="0" maxOccurs="unbounded">
				<annotation>
					<documentation>Unordered list of vertical intervals whose union describes the spatial domain of this object.</documentation>
				</annotation>
			</element>
			<element ref="gml:temporalExtent" minOccurs="0" maxOccurs="unbounded">
				<annotation>
					<documentation>Unordered list of time periods whose union describes the spatial domain of this object.</documentation>
				</annotation>
			</element>
		</sequence>
	</complexType>
	<!-- =================================================== -->
	<element name="boundingBox" type="gml:EnvelopeType">
		<annotation>
			<documentation>A bounding box (or envelope) defining the spatial domain of this object.</documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="boundingPolygon" type="gml:PolygonType">
		<annotation>
			<documentation>A bounding polygon defining the horizontal spatial domain of this object.</documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="verticalExtent" type="gml:EnvelopeType">
		<annotation>
			<documentation>An interval defining the vertical spatial domain of this object.</documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="temporalExtent" type="gml:TimePeriodType">
		<annotation>
			<documentation>A time period defining the temporal domain of this object.</documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
</schema>
