package Lido::XML::LIDO_1_0::coordinateOperations;

use Moo;

our $VERSION = '0.06';

sub content {
	my @lines = <DATA>;
	join '' , @lines;
}

1;
__DATA__
<?xml version="1.0" encoding="UTF-8"?>
<schema targetNamespace="http://www.opengis.net/gml" xmlns:gml="http://www.opengis.net/gml" xmlns="http://www.w3.org/2001/XMLSchema" elementFormDefault="qualified" version="3.1.1.2" xml:lang="en">
	<annotation>
		<appinfo source="urn:opengis:specification:gml:schema-xsd:coordinateOperations:3.1.1"/>
		<documentation>How to encode coordinate operation definitions. Builds on referenceSystems.xsd to encode the data needed to define coordinate operations, including Transformations, Conversions, and other specific subtypes of operations. 
		
		This schema encodes the Coordinate Operation (CC_) package of the extended UML Model for OGC Abstract Specification Topic 2: Spatial Referencing by Coordinates. That UML model is adapted from ISO 19111 - Spatial referencing by coordinates, as described in Annex C of Topic 2. 
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
	<include schemaLocation="referenceSystems.xsd"/>
	<include schemaLocation="dataQuality.xsd"/>
	<!-- ======================================================
       elements and types
	====================================================== -->
	<element name="_CoordinateOperation" type="gml:AbstractCoordinateOperationType" abstract="true" substitutionGroup="gml:Definition"/>
	<!-- =================================================== -->
	<complexType name="AbstractCoordinateOperationBaseType" abstract="true">
		<annotation>
			<documentation>Basic encoding for coordinate operation objects, simplifying and restricting the DefinitionType as needed. </documentation>
		</annotation>
		<complexContent>
			<restriction base="gml:DefinitionType">
				<sequence>
					<element ref="gml:metaDataProperty" minOccurs="0" maxOccurs="unbounded"/>
					<element ref="gml:coordinateOperationName"/>
				</sequence>
				<attribute ref="gml:id" use="required"/>
			</restriction>
		</complexContent>
	</complexType>
	<!-- =================================================== -->
	<element name="coordinateOperationName" type="gml:CodeType" substitutionGroup="gml:name">
		<annotation>
			<documentation>The name by which this coordinate operation is identified. </documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<complexType name="AbstractCoordinateOperationType" abstract="true">
		<annotation>
			<documentation>A mathematical operation on coordinates that transforms or converts coordinates to another coordinate reference system. Many but not all coordinate operations (from CRS A to CRS B) also uniquely define the inverse operation (from CRS B to CRS A). In some cases, the operation method algorithm for the inverse operation is the same as for the forward algorithm, but the signs of some operation parameter values must be reversed. In other cases, different algorithms are required for the forward and inverse operations, but the same operation parameter values are used. If (some) entirely different parameter values are needed, a different coordinate operation shall be defined.</documentation>
		</annotation>
		<complexContent>
			<extension base="gml:AbstractCoordinateOperationBaseType">
				<sequence>
					<element ref="gml:coordinateOperationID" minOccurs="0" maxOccurs="unbounded">
						<annotation>
							<documentation>Set of alternative identifications of this coordinate operation. The first coordinateOperationID, if any, is normally the primary identification code, and any others are aliases. </documentation>
						</annotation>
					</element>
					<element ref="gml:remarks" minOccurs="0">
						<annotation>
							<documentation>Comments on or information about this coordinate operation, including source information. </documentation>
						</annotation>
					</element>
					<element ref="gml:operationVersion" minOccurs="0"/>
					<element ref="gml:validArea" minOccurs="0"/>
					<element ref="gml:scope" minOccurs="0"/>
					<element ref="gml:_positionalAccuracy" minOccurs="0" maxOccurs="unbounded">
						<annotation>
							<documentation>Unordered set of estimates of the impact of this coordinate operation on point position accuracy. Gives position error estimates for target coordinates of this coordinate operation, assuming no errors in source coordinates. </documentation>
						</annotation>
					</element>
					<element ref="gml:sourceCRS" minOccurs="0"/>
					<element ref="gml:targetCRS" minOccurs="0"/>
				</sequence>
			</extension>
		</complexContent>
	</complexType>
	<!-- =================================================== -->
	<element name="coordinateOperationID" type="gml:IdentifierType">
		<annotation>
			<documentation>An identification of a coordinate operation. </documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="operationVersion" type="string">
		<annotation>
			<documentation>Version of the coordinate transformation (i.e., instantiation due to the stochastic nature of the parameters). Mandatory when describing a transformation, and should not be supplied for a conversion. </documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="sourceCRS" type="gml:CRSRefType">
		<annotation>
			<documentation>Association to the source CRS (coordinate reference system) of this coordinate operation. </documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="targetCRS" type="gml:CRSRefType">
		<annotation>
			<documentation>Association to the target CRS (coordinate reference system) of this coordinate operation. For constraints on multiplicity of "sourceCRS" and "targetCRS", see UML model of Coordinate Operation package in OGC Abstract Specification topic 2. </documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="coordinateOperationRef" type="gml:CoordinateOperationRefType"/>
	<!-- =================================================== -->
	<complexType name="CoordinateOperationRefType">
		<annotation>
			<documentation>Association to a coordinate operation, either referencing or containing the definition of that coordinate operation. </documentation>
		</annotation>
		<sequence minOccurs="0">
			<element ref="gml:_CoordinateOperation"/>
		</sequence>
		<attributeGroup ref="gml:AssociationAttributeGroup"/>
	</complexType>
	<!-- =================================================== -->
	<element name="ConcatenatedOperation" type="gml:ConcatenatedOperationType" substitutionGroup="gml:_CoordinateOperation"/>
	<!-- =================================================== -->
	<complexType name="ConcatenatedOperationType">
		<annotation>
			<documentation>An ordered sequence of two or more single coordinate operations. The sequence of operations is constrained by the requirement that the source coordinate reference system of step (n+1) must be the same as the target coordinate reference system of step (n). The source coordinate reference system of the first step and the target coordinate reference system of the last step are the source and target coordinate reference system associated with the concatenated operation. Instead of a forward operation, an inverse operation may be used for one or more of the operation steps mentioned above, if the inverse operation is uniquely defined by the forward operation.</documentation>
		</annotation>
		<complexContent>
			<extension base="gml:AbstractCoordinateOperationType">
				<sequence>
					<element ref="gml:usesSingleOperation" minOccurs="2" maxOccurs="unbounded">
						<annotation>
							<documentation>Ordered sequence of associations to the two or more single operations used by this concatenated operation. </documentation>
						</annotation>
					</element>
				</sequence>
			</extension>
		</complexContent>
	</complexType>
	<!-- =================================================== -->
	<element name="usesSingleOperation" type="gml:SingleOperationRefType">
		<annotation>
			<documentation>Association to a single operation. </documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="concatenatedOperationRef" type="gml:ConcatenatedOperationRefType"/>
	<!-- =================================================== -->
	<complexType name="ConcatenatedOperationRefType">
		<annotation>
			<documentation>Association to a concatenated operation, either referencing or containing the definition of that concatenated operation. </documentation>
		</annotation>
		<sequence minOccurs="0">
			<element ref="gml:ConcatenatedOperation"/>
		</sequence>
		<attributeGroup ref="gml:AssociationAttributeGroup"/>
	</complexType>
	<!-- =================================================== -->
	<element name="_SingleOperation" type="gml:AbstractCoordinateOperationType" abstract="true" substitutionGroup="gml:_CoordinateOperation">
		<annotation>
			<documentation>A single (not concatenated) coordinate operation. </documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="singleOperationRef" type="gml:SingleOperationRefType"/>
	<!-- =================================================== -->
	<complexType name="SingleOperationRefType">
		<annotation>
			<documentation>Association to a single operation, either referencing or containing the definition of that single operation. </documentation>
		</annotation>
		<sequence minOccurs="0">
			<element ref="gml:_SingleOperation"/>
		</sequence>
		<attributeGroup ref="gml:AssociationAttributeGroup"/>
	</complexType>
	<!-- =================================================== -->
	<element name="PassThroughOperation" type="gml:PassThroughOperationType" substitutionGroup="gml:_SingleOperation"/>
	<!-- =================================================== -->
	<complexType name="PassThroughOperationType">
		<annotation>
			<documentation>A pass-through operation specifies that a subset of a coordinate tuple is subject to a specific coordinate operation. </documentation>
		</annotation>
		<complexContent>
			<extension base="gml:AbstractCoordinateOperationType">
				<sequence>
					<element ref="gml:modifiedCoordinate" maxOccurs="unbounded">
						<annotation>
							<documentation>Ordered sequence of positive integers defining the positions in a coordinate tuple of the coordinates affected by this pass-through operation. </documentation>
						</annotation>
					</element>
					<element ref="gml:usesOperation"/>
				</sequence>
			</extension>
		</complexContent>
	</complexType>
	<!-- =================================================== -->
	<element name="modifiedCoordinate" type="positiveInteger">
		<annotation>
			<documentation>A positive integer defining a position in a coordinate tuple. </documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="usesOperation" type="gml:OperationRefType">
		<annotation>
			<documentation>Association to the operation applied to the specified ordinates. </documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="passThroughOperationRef" type="gml:PassThroughOperationRefType"/>
	<!-- =================================================== -->
	<complexType name="PassThroughOperationRefType">
		<annotation>
			<documentation>Association to a pass through operation, either referencing or containing the definition of that pass through operation. </documentation>
		</annotation>
		<sequence minOccurs="0">
			<element ref="gml:PassThroughOperation"/>
		</sequence>
		<attributeGroup ref="gml:AssociationAttributeGroup"/>
	</complexType>
	<!-- =================================================== -->
	<element name="_Operation" type="gml:AbstractCoordinateOperationType" abstract="true" substitutionGroup="gml:_SingleOperation">
		<annotation>
			<documentation>A parameterized mathematical operation on coordinates that transforms or converts coordinates to another coordinate reference system. This coordinate operation uses an operation method, usually with associated parameter values. However, operation methods and parameter values are directly associated with concrete subtypes, not with this abstract type.

This abstract complexType shall not be directly used, extended, or restricted in a compliant Application Schema. </documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="operationRef" type="gml:OperationRefType"/>
	<!-- =================================================== -->
	<complexType name="OperationRefType">
		<annotation>
			<documentation>Association to an abstract operation, either referencing or containing the definition of that operation. </documentation>
		</annotation>
		<sequence minOccurs="0">
			<element ref="gml:_Operation"/>
		</sequence>
		<attributeGroup ref="gml:AssociationAttributeGroup"/>
	</complexType>
	<!-- =================================================== -->
	<!-- =================================================== -->
	<element name="_GeneralConversion" type="gml:AbstractGeneralConversionType" abstract="true" substitutionGroup="gml:_Operation"/>
	<!-- =================================================== -->
	<complexType name="AbstractGeneralConversionType" abstract="true">
		<annotation>
			<documentation>An abstract operation on coordinates that does not include any change of datum. The best-known example of a coordinate conversion is a map projection. The parameters describing coordinate conversions are defined rather than empirically derived. Note that some conversions have no parameters.

This abstract complexType is expected to be extended for well-known operation methods with many Conversion instances, in Application Schemas that define operation-method-specialized element names and contents. This conversion uses an operation method, usually with associated parameter values. However, operation methods and parameter values are directly associated with concrete subtypes, not with this abstract type. All concrete types derived from this type shall extend this type to include a "usesMethod" element that references the "OperationMethod" element. Similarly, all concrete types derived from this type shall extend this type to include zero or more elements each named "uses...Value" that each use the type of an element substitutable for the "_generalParameterValue" element. </documentation>
		</annotation>
		<complexContent>
			<restriction base="gml:AbstractCoordinateOperationType">
				<sequence>
					<element ref="gml:metaDataProperty" minOccurs="0" maxOccurs="unbounded"/>
					<element ref="gml:coordinateOperationName"/>
					<element ref="gml:coordinateOperationID" minOccurs="0" maxOccurs="unbounded"/>
					<element ref="gml:remarks" minOccurs="0"/>
					<element ref="gml:validArea" minOccurs="0"/>
					<element ref="gml:scope" minOccurs="0"/>
					<element ref="gml:_positionalAccuracy" minOccurs="0" maxOccurs="unbounded"/>
				</sequence>
				<attribute ref="gml:id" use="required"/>
			</restriction>
		</complexContent>
	</complexType>
	<!-- =================================================== -->
	<element name="generalConversionRef" type="gml:GeneralConversionRefType"/>
	<!-- =================================================== -->
	<complexType name="GeneralConversionRefType">
		<annotation>
			<documentation>Association to a general conversion, either referencing or containing the definition of that conversion. </documentation>
		</annotation>
		<sequence minOccurs="0">
			<element ref="gml:_GeneralConversion"/>
		</sequence>
		<attributeGroup ref="gml:AssociationAttributeGroup"/>
	</complexType>
	<!-- =================================================== -->
	<element name="Conversion" type="gml:ConversionType" substitutionGroup="gml:_GeneralConversion"/>
	<!-- =================================================== -->
	<complexType name="ConversionType">
		<annotation>
			<documentation>A concrete operation on coordinates that does not include any change of Datum. The best-known example of a coordinate conversion is a map projection. The parameters describing coordinate conversions are defined rather than empirically derived. Note that some conversions have no parameters.

This concrete complexType can be used with all operation methods, without using an Application Schema that defines operation-method-specialized element names and contents, especially for methods with only one Conversion instance. </documentation>
		</annotation>
		<complexContent>
			<extension base="gml:AbstractGeneralConversionType">
				<sequence>
					<element ref="gml:usesMethod"/>
					<element ref="gml:usesValue" minOccurs="0" maxOccurs="unbounded">
						<annotation>
							<documentation>Unordered list of composition associations to the set of parameter values used by this conversion operation. </documentation>
						</annotation>
					</element>
				</sequence>
			</extension>
		</complexContent>
	</complexType>
	<!-- =================================================== -->
	<element name="usesMethod" type="gml:OperationMethodRefType">
		<annotation>
			<documentation>Association to the operation method used by this coordinate operation. </documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="usesValue" type="gml:ParameterValueType">
		<annotation>
			<documentation>Composition association to a parameter value used by this coordinate operation. </documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="conversionRef" type="gml:ConversionRefType"/>
	<!-- =================================================== -->
	<complexType name="ConversionRefType">
		<annotation>
			<documentation>Association to a concrete general-purpose conversion, either referencing or containing the definition of that conversion. </documentation>
		</annotation>
		<sequence minOccurs="0">
			<element ref="gml:Conversion"/>
		</sequence>
		<attributeGroup ref="gml:AssociationAttributeGroup"/>
	</complexType>
	<!-- =================================================== -->
	<element name="_GeneralTransformation" type="gml:AbstractGeneralTransformationType" abstract="true" substitutionGroup="gml:_Operation"/>
	<!-- =================================================== -->
	<complexType name="AbstractGeneralTransformationType" abstract="true">
		<annotation>
			<documentation>An abstract operation on coordinates that usually includes a change of Datum. The parameters of a coordinate transformation are empirically derived from data containing the coordinates of a series of points in both coordinate reference systems. This computational process is usually "over-determined", allowing derivation of error (or accuracy) estimates for the transformation. Also, the stochastic nature of the parameters may result in multiple (different) versions of the same coordinate transformation.

This abstract complexType is expected to be extended for well-known operation methods with many Transformation instances, in Application Schemas that define operation-method-specialized value element names and contents. This transformation uses an operation method with associated parameter values. However, operation methods and parameter values are directly associated with concrete subtypes, not with this abstract type. All concrete types derived from this type shall extend this type to include a "usesMethod" element that references one "OperationMethod" element. Similarly, all concrete types derived from this type shall extend this type to include one or more elements each named "uses...Value" that each use the type of an element substitutable for the "_generalParameterValue" element. </documentation>
		</annotation>
		<complexContent>
			<restriction base="gml:AbstractCoordinateOperationType">
				<sequence>
					<element ref="gml:metaDataProperty" minOccurs="0" maxOccurs="unbounded"/>
					<element ref="gml:coordinateOperationName"/>
					<element ref="gml:coordinateOperationID" minOccurs="0" maxOccurs="unbounded"/>
					<element ref="gml:remarks" minOccurs="0"/>
					<element ref="gml:operationVersion"/>
					<element ref="gml:validArea" minOccurs="0"/>
					<element ref="gml:scope" minOccurs="0"/>
					<element ref="gml:_positionalAccuracy" minOccurs="0" maxOccurs="unbounded"/>
					<element ref="gml:sourceCRS"/>
					<element ref="gml:targetCRS"/>
				</sequence>
				<attribute ref="gml:id" use="required"/>
			</restriction>
		</complexContent>
	</complexType>
	<!-- =================================================== -->
	<element name="generalTransformationRef" type="gml:GeneralTransformationRefType"/>
	<!-- =================================================== -->
	<complexType name="GeneralTransformationRefType">
		<annotation>
			<documentation>Association to a general transformation, either referencing or containing the definition of that transformation. </documentation>
		</annotation>
		<sequence minOccurs="0">
			<element ref="gml:_GeneralTransformation"/>
		</sequence>
		<attributeGroup ref="gml:AssociationAttributeGroup"/>
	</complexType>
	<!-- =================================================== -->
	<element name="Transformation" type="gml:TransformationType" substitutionGroup="gml:_GeneralTransformation"/>
	<!-- =================================================== -->
	<complexType name="TransformationType">
		<annotation>
			<documentation>A concrete operation on coordinates that usually includes a change of datum. The parameters of a coordinate transformation are empirically derived from data containing the coordinates of a series of points in both coordinate reference systems. This computational process is usually "over-determined", allowing derivation of error (or accuracy) estimates for the transformation. Also, the stochastic nature of the parameters may result in multiple (different) versions of the same coordinate transformation.

This concrete complexType can be used for all operation methods, without using an Application Schema that defines operation-method-specialized element names and contents, especially for methods with only one Transformation instance. </documentation>
		</annotation>
		<complexContent>
			<extension base="gml:AbstractGeneralTransformationType">
				<sequence>
					<element ref="gml:usesMethod"/>
					<element ref="gml:usesValue" minOccurs="0" maxOccurs="unbounded">
						<annotation>
							<documentation>Unordered set of composition associations to the set of parameter values used by this transformation operation. </documentation>
						</annotation>
					</element>
				</sequence>
			</extension>
		</complexContent>
	</complexType>
	<!-- =================================================== -->
	<element name="transformationRef" type="gml:TransformationRefType"/>
	<!-- =================================================== -->
	<complexType name="TransformationRefType">
		<annotation>
			<documentation>Association to a transformation, either referencing or containing the definition of that transformation. </documentation>
		</annotation>
		<sequence minOccurs="0">
			<element ref="gml:Transformation"/>
		</sequence>
		<attributeGroup ref="gml:AssociationAttributeGroup"/>
	</complexType>
	<!-- =================================================== -->
	<!-- =================================================== -->
	<element name="_generalParameterValue" type="gml:AbstractGeneralParameterValueType" abstract="true"/>
	<!-- =================================================== -->
	<complexType name="AbstractGeneralParameterValueType" abstract="true">
		<annotation>
			<documentation>Abstract parameter value or group of parameter values.
			
This abstract complexType is expected to be extended and restricted for well-known operation methods with many instances, in Application Schemas that define operation-method-specialized element names and contents. Specific parameter value elements are directly contained in concrete subtypes, not in this abstract type. All concrete types derived from this type shall extend this type to include one "...Value" element with an appropriate type, which should be one of the element types allowed in the ParameterValueType. In addition, all derived concrete types shall extend this type to include a "valueOfParameter" element that references one element substitutable for the "OperationParameter" element. </documentation>
		</annotation>
		<sequence/>
	</complexType>
	<!-- =================================================== -->
	<element name="parameterValue" type="gml:ParameterValueType" substitutionGroup="gml:_generalParameterValue"/>
	<!-- =================================================== -->
	<complexType name="ParameterValueType">
		<annotation>
			<documentation>A parameter value, ordered sequence of values, or reference to a file of parameter values. This concrete complexType can be used for operation methods without using an Application Schema that defines operation-method-specialized element names and contents, especially for methods with only one instance. This complexType can be used, extended, or restricted for well-known operation methods, especially for methods with many instances. </documentation>
		</annotation>
		<complexContent>
			<extension base="gml:AbstractGeneralParameterValueType">
				<sequence>
					<choice>
						<element ref="gml:value"/>
						<element ref="gml:dmsAngleValue"/>
						<element ref="gml:stringValue"/>
						<element ref="gml:integerValue"/>
						<element ref="gml:booleanValue"/>
						<element ref="gml:valueList"/>
						<element ref="gml:integerValueList"/>
						<element ref="gml:valueFile"/>
					</choice>
					<element ref="gml:valueOfParameter"/>
				</sequence>
			</extension>
		</complexContent>
	</complexType>
	<!-- =================================================== -->
	<element name="value" type="gml:MeasureType">
		<annotation>
			<documentation>Numeric value of an operation parameter, with its associated unit of measure. </documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="dmsAngleValue" type="gml:DMSAngleType">
		<annotation>
			<documentation>Value of an angle operation parameter, in either degree-minute-second format or single value format. </documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="stringValue" type="string">
		<annotation>
			<documentation>String value of an operation parameter. A string value does not have an associated unit of measure. </documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="integerValue" type="positiveInteger">
		<annotation>
			<documentation>Positive integer value of an operation parameter, usually used for a count. An integer value does not have an associated unit of measure. </documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="booleanValue" type="boolean">
		<annotation>
			<documentation>Boolean value of an operation parameter. A Boolean value does not have an associated unit of measure. </documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="valueList" type="gml:MeasureListType">
		<annotation>
			<documentation>Ordered sequence of two or more numeric values of an operation parameter list, where each value has the same associated unit of measure. An element of this type contains a space-separated sequence of double values. </documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="integerValueList" type="gml:integerList">
		<annotation>
			<documentation>Ordered sequence of two or more integer values of an operation parameter list, usually used for counts. These integer values do not have an associated unit of measure. An element of this type contains a space-separated sequence of integer values. </documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="valueFile" type="anyURI">
		<annotation>
			<documentation>Reference to a file or a part of a file containing one or more parameter values, each numeric value with its associated unit of measure. When referencing a part of a file, that file must contain multiple identified parts, such as an XML encoded document. Furthermore, the referenced file or part of a file can reference another part of the same or different files, as allowed in XML documents. </documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="valueOfParameter" type="gml:OperationParameterRefType">
		<annotation>
			<documentation>Association to the operation parameter that this is a value of. </documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<!-- =================================================== -->
	<element name="parameterValueGroup" type="gml:ParameterValueGroupType" substitutionGroup="gml:_generalParameterValue"/>
	<!-- =================================================== -->
	<complexType name="ParameterValueGroupType">
		<annotation>
			<documentation>A group of related parameter values. The same group can be repeated more than once in a Conversion, Transformation, or higher level parameterValueGroup, if those instances contain different values of one or more parameterValues which suitably distinquish among those groups. This concrete complexType can be used for operation methods without using an Application Schema that defines operation-method-specialized element names and contents, especially for methods with only one instance. This complexType can be used, extended, or restricted for well-known operation methods, especially for methods with many instances. </documentation>
		</annotation>
		<complexContent>
			<extension base="gml:AbstractGeneralParameterValueType">
				<sequence>
					<element ref="gml:includesValue" minOccurs="2" maxOccurs="unbounded">
						<annotation>
							<documentation>Unordered set of composition associations to the parameter values and groups of values included in this group. </documentation>
						</annotation>
					</element>
					<element ref="gml:valuesOfGroup"/>
				</sequence>
			</extension>
		</complexContent>
	</complexType>
	<!-- =================================================== -->
	<element name="includesValue" type="gml:AbstractGeneralParameterValueType" substitutionGroup="gml:_generalParameterValue">
		<annotation>
			<documentation>A composition association to a parameter value or group of values included in this group. </documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="valuesOfGroup" type="gml:OperationParameterGroupRefType">
		<annotation>
			<documentation>Association to the operation parameter group for which this element provides parameter values. </documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<!-- =================================================== -->
	<element name="OperationMethod" type="gml:OperationMethodType" substitutionGroup="gml:Definition"/>
	<!-- =================================================== -->
	<complexType name="OperationMethodBaseType" abstract="true">
		<annotation>
			<documentation>Basic encoding for operation method objects, simplifying and restricting the DefinitionType as needed. </documentation>
		</annotation>
		<complexContent>
			<restriction base="gml:DefinitionType">
				<sequence>
					<element ref="gml:metaDataProperty" minOccurs="0" maxOccurs="unbounded"/>
					<element ref="gml:methodName"/>
				</sequence>
				<attribute ref="gml:id" use="required"/>
			</restriction>
		</complexContent>
	</complexType>
	<!-- =================================================== -->
	<element name="methodName" type="gml:CodeType" substitutionGroup="gml:name">
		<annotation>
			<documentation>The name by which this operation method is identified. </documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<complexType name="OperationMethodType">
		<annotation>
			<documentation>Definition of an algorithm used to perform a coordinate operation. Most operation methods use a number of operation parameters, although some coordinate conversions use none. Each coordinate operation using the method assigns values to these parameters. </documentation>
		</annotation>
		<complexContent>
			<extension base="gml:OperationMethodBaseType">
				<sequence>
					<element ref="gml:methodID" minOccurs="0" maxOccurs="unbounded">
						<annotation>
							<documentation>Set of alternative identifications of this operation method. The first methodID, if any, is normally the primary identification code, and any others are aliases. </documentation>
						</annotation>
					</element>
					<element ref="gml:remarks" minOccurs="0">
						<annotation>
							<documentation>Comments on or information about this operation method, including source information.</documentation>
						</annotation>
					</element>
					<element ref="gml:methodFormula"/>
					<element ref="gml:sourceDimensions"/>
					<element ref="gml:targetDimensions"/>
					<element ref="gml:usesParameter" minOccurs="0" maxOccurs="unbounded">
						<annotation>
							<documentation>Unordered list of associations to the set of operation parameters and parameter groups used by this operation method. </documentation>
						</annotation>
					</element>
				</sequence>
			</extension>
		</complexContent>
	</complexType>
	<!-- =================================================== -->
	<element name="methodID" type="gml:IdentifierType">
		<annotation>
			<documentation>An identification of an operation method. </documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="methodFormula" type="gml:CodeType">
		<annotation>
			<documentation>Formula(s) used by this operation method. The value may be a reference to a publication. Note that the operation method may not be analytic, in which case this element references or contains the procedure, not an analytic formula.</documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="sourceDimensions" type="positiveInteger">
		<annotation>
			<documentation>Number of dimensions in the source CRS of this operation method. </documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="targetDimensions" type="positiveInteger">
		<annotation>
			<documentation>Number of dimensions in the target CRS of this operation method. </documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="usesParameter" type="gml:AbstractGeneralOperationParameterRefType">
		<annotation>
			<documentation>Association to an operation parameter or parameter group used by this operation method. </documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="operationMethodRef" type="gml:OperationMethodRefType"/>
	<!-- =================================================== -->
	<complexType name="OperationMethodRefType">
		<annotation>
			<documentation>Association to a concrete general-purpose operation method, either referencing or containing the definition of that method. </documentation>
		</annotation>
		<sequence minOccurs="0">
			<element ref="gml:OperationMethod"/>
		</sequence>
		<attributeGroup ref="gml:AssociationAttributeGroup"/>
	</complexType>
	<!-- =================================================== -->
	<!-- =================================================== -->
	<element name="_GeneralOperationParameter" type="gml:AbstractGeneralOperationParameterType" abstract="true" substitutionGroup="gml:Definition"/>
	<!-- =================================================== -->
	<complexType name="AbstractGeneralOperationParameterType" abstract="true">
		<annotation>
			<documentation>Abstract definition of a parameter or group of parameters used by an operation method. </documentation>
		</annotation>
		<complexContent>
			<extension base="gml:DefinitionType">
				<sequence>
					<element ref="gml:minimumOccurs" minOccurs="0"/>
				</sequence>
			</extension>
		</complexContent>
	</complexType>
	<!-- =================================================== -->
	<element name="minimumOccurs" type="nonNegativeInteger">
		<annotation>
			<documentation>The minimum number of times that values for this parameter group or parameter are required. If this attribute is omitted, the minimum number is one. </documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="abstractGeneralOperationParameterRef" type="gml:AbstractGeneralOperationParameterRefType"/>
	<!-- =================================================== -->
	<complexType name="AbstractGeneralOperationParameterRefType">
		<annotation>
			<documentation>Association to an operation parameter or group, either referencing or containing the definition of that parameter or group. </documentation>
		</annotation>
		<sequence minOccurs="0">
			<element ref="gml:_GeneralOperationParameter"/>
		</sequence>
		<attributeGroup ref="gml:AssociationAttributeGroup"/>
	</complexType>
	<!-- =================================================== -->
	<element name="OperationParameter" type="gml:OperationParameterType" substitutionGroup="gml:_GeneralOperationParameter"/>
	<!-- =================================================== -->
	<complexType name="OperationParameterBaseType" abstract="true">
		<annotation>
			<documentation>Basic encoding for operation parameter objects, simplifying and restricting the DefinitionType as needed. </documentation>
		</annotation>
		<complexContent>
			<restriction base="gml:AbstractGeneralOperationParameterType">
				<sequence>
					<element ref="gml:metaDataProperty" minOccurs="0" maxOccurs="unbounded"/>
					<element ref="gml:parameterName"/>
					<element ref="gml:minimumOccurs" minOccurs="0"/>
				</sequence>
				<attribute ref="gml:id" use="required"/>
			</restriction>
		</complexContent>
	</complexType>
	<!-- =================================================== -->
	<element name="parameterName" type="gml:CodeType" substitutionGroup="gml:name">
		<annotation>
			<documentation>The name by which this operation parameter is identified. </documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<complexType name="OperationParameterType">
		<annotation>
			<documentation>The definition of a parameter used by an operation method. Most parameter values are numeric, but other types of parameter values are possible. This complexType is expected to be used or extended for all operation methods, without defining operation-method-specialized element names.  </documentation>
		</annotation>
		<complexContent>
			<extension base="gml:OperationParameterBaseType">
				<sequence>
					<element ref="gml:parameterID" minOccurs="0" maxOccurs="unbounded">
						<annotation>
							<documentation>Set of alternative identifications of this operation parameter. The first parameterID, if any, is normally the primary identification code, and any others are aliases. </documentation>
						</annotation>
					</element>
					<element ref="gml:remarks" minOccurs="0">
						<annotation>
							<documentation>Comments on or information about this operation parameter, including source information. </documentation>
						</annotation>
					</element>
				</sequence>
			</extension>
		</complexContent>
	</complexType>
	<!-- =================================================== -->
	<element name="parameterID" type="gml:IdentifierType">
		<annotation>
			<documentation>An identification of an operation parameter. </documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="operationParameterRef" type="gml:OperationParameterRefType"/>
	<!-- =================================================== -->
	<complexType name="OperationParameterRefType">
		<annotation>
			<documentation>Association to an operation parameter, either referencing or containing the definition of that parameter. </documentation>
		</annotation>
		<sequence minOccurs="0">
			<element ref="gml:OperationParameter"/>
		</sequence>
		<attributeGroup ref="gml:AssociationAttributeGroup"/>
	</complexType>
	<!-- =================================================== -->
	<element name="OperationParameterGroup" type="gml:OperationParameterGroupType" substitutionGroup="gml:_GeneralOperationParameter"/>
	<!-- =================================================== -->
	<complexType name="OperationParameterGroupBaseType" abstract="true">
		<annotation>
			<documentation>Basic encoding for operation parameter group objects, simplifying and restricting the DefinitionType as needed. </documentation>
		</annotation>
		<complexContent>
			<restriction base="gml:AbstractGeneralOperationParameterType">
				<sequence>
					<element ref="gml:metaDataProperty" minOccurs="0" maxOccurs="unbounded"/>
					<element ref="gml:groupName"/>
					<element ref="gml:minimumOccurs" minOccurs="0"/>
				</sequence>
				<attribute ref="gml:id" use="required"/>
			</restriction>
		</complexContent>
	</complexType>
	<!-- =================================================== -->
	<element name="groupName" type="gml:CodeType" substitutionGroup="gml:name">
		<annotation>
			<documentation>The name by which this operation parameter group is identified. </documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<complexType name="OperationParameterGroupType">
		<annotation>
			<documentation>The definition of a group of parameters used by an operation method. This complexType is expected to be used or extended for all applicable operation methods, without defining operation-method-specialized element names.  </documentation>
		</annotation>
		<complexContent>
			<extension base="gml:OperationParameterGroupBaseType">
				<sequence>
					<element ref="gml:groupID" minOccurs="0" maxOccurs="unbounded">
						<annotation>
							<documentation>Set of alternative identifications of this operation parameter group. The first groupID, if any, is normally the primary identification code, and any others are aliases. </documentation>
						</annotation>
					</element>
					<element ref="gml:remarks" minOccurs="0">
						<annotation>
							<documentation>Comments on or information about this operation parameter group, including source information. </documentation>
						</annotation>
					</element>
					<element ref="gml:maximumOccurs" minOccurs="0"/>
					<element ref="gml:includesParameter" minOccurs="2" maxOccurs="unbounded">
						<annotation>
							<documentation>Unordered list of associations to the set of operation parameters that are members of this group. </documentation>
						</annotation>
					</element>
				</sequence>
			</extension>
		</complexContent>
	</complexType>
	<!-- =================================================== -->
	<element name="groupID" type="gml:IdentifierType">
		<annotation>
			<documentation>An identification of an operation parameter group. </documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="maximumOccurs" type="positiveInteger">
		<annotation>
			<documentation>The maximum number of times that values for this parameter group can be included. If this attribute is omitted, the maximum number is one. </documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="includesParameter" type="gml:AbstractGeneralOperationParameterRefType">
		<annotation>
			<documentation>Association to an operation parameter that is a member of a group. </documentation>
		</annotation>
	</element>
	<!-- =================================================== -->
	<element name="operationParameterGroupRef" type="gml:OperationParameterRefType"/>
	<!-- =================================================== -->
	<complexType name="OperationParameterGroupRefType">
		<annotation>
			<documentation>Association to an operation parameter, either referencing or containing the definition of that parameter. </documentation>
		</annotation>
		<sequence minOccurs="0">
			<element ref="gml:OperationParameterGroup"/>
		</sequence>
		<attributeGroup ref="gml:AssociationAttributeGroup"/>
	</complexType>
	<!-- =================================================== -->
</schema>

