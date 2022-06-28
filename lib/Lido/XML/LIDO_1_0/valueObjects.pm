package Lido::XML::LIDO_1_0::valueObjects;

use Moo;

our $VERSION = '0.08';

sub content {
	my @lines = <DATA>;
	join '' , @lines;
}

1;
__DATA__
<?xml version="1.0" encoding="UTF-8"?>
<schema targetNamespace="http://www.opengis.net/gml" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:gml="http://www.opengis.net/gml" xmlns:sch="http://www.ascc.net/xml/schematron" xmlns="http://www.w3.org/2001/XMLSchema" elementFormDefault="qualified"
        attributeFormDefault="unqualified" version="3.1.1.2">
	<annotation>
		<appinfo source="urn:opengis:specification:gml:schema-xsd:valueObjects:3.1.1">valueObjects.xsd</appinfo>
		<documentation>GML conformant schema for Values in which the  
		    * scalar Value types and lists have their values recorded in simpleContent elements 
		    * complex Value types are built recursively
		    
		    GML is an OGC Standard.
		    Copyright (c) 2001,2005,2010 Open Geospatial Consortium.
		    To obtain additional rights of use, visit http://www.opengeospatial.org/legal/ .
		</documentation>
	</annotation>
	<!-- ====================================================================== -->
	<!-- geometry and temporal included so that _Geometry and _TimeObject can be added to Value choice group -->
	<include schemaLocation="gml.xsd"/>
	<include schemaLocation="geometryBasic0d1d.xsd"/>
	<include schemaLocation="temporal.xsd"/>
	<!-- ====================================================================== -->
	<group name="Value">
		<annotation>
			<documentation>Utility choice group which unifies generic Values defined in this schema document with 
			Geometry and Temporal objects and the Measures described above, 
			so that any of these may be used within aggregate Values.</documentation>
		</annotation>
		<choice>
			<!-- <element ref="gml:_Value"/> -->
			<group ref="gml:ValueObject"/>
			<element ref="gml:_Object"/>
			<!--			<element ref="gml:_Geometry"/>
			<element ref="gml:_TimeObject"/> -->
			<element ref="gml:Null"/>
		</choice>
	</group>
	<!-- ====================================================================== -->
	<group name="ValueObject">
		<choice>
			<group ref="gml:ScalarValue"/>
			<group ref="gml:ScalarValueList"/>
			<group ref="gml:ValueExtent"/>
			<element ref="gml:CompositeValue"/>
		</choice>
	</group>
	<!-- ======================================================================
	<element name="_Value" abstract="true" substitutionGroup="gml:_Object">
		<annotation>
			<documentation>Abstract element which acts as the head of a substitution group which contains _ScalarValue, _ScalarValueList and CompositeValue and (transitively) the elements in their substitution groups.  This element may be used in an application schema as a variable, so that in an XML instance document any member of its substitution group may occur.</documentation>
		</annotation>
	</element> -->
	<!-- ====================================================================== -->
	<!-- ================== Scalar Values =========================
	<element name="_ScalarValue" abstract="true" substitutionGroup="gml:_Value">
		<annotation>
			<documentation>Abstract element which acts as the head of a substitution group which contains Boolean, Category, Count and Quantity, and (transitively) the elements in their substitution groups.  This element may be used in an application schema as a variable, so that in an XML instance document any member of its substitution group may occur.</documentation>
		</annotation>
	</element> -->
	<group name="ScalarValue">
		<choice>
			<element ref="gml:Boolean"/>
			<element ref="gml:Category"/>
			<element ref="gml:Quantity"/>
			<element ref="gml:Count"/>
		</choice>
	</group>
	<!-- ======================================================================
	<element name="_ScalarValueList" abstract="true" substitutionGroup="gml:_Value">
		<annotation>
			<documentation>Abstract element which acts as the head of a substitution group which contains the compact encodings BooleanList, CategoryList, CountList and QuantityList, and (transitively) the elements in their substitution groups.  This element may be used in an application schema as a variable, so that in an XML instance document any member of its substitution group may occur.</documentation>
		</annotation>
	</element> -->
	<group name="ScalarValueList">
		<choice>
			<element ref="gml:BooleanList"/>
			<element ref="gml:CategoryList"/>
			<element ref="gml:QuantityList"/>
			<element ref="gml:CountList"/>
		</choice>
	</group>
	<!-- ====================================================================== -->
	<!-- ======================= Boolean ========================
	<element name="Boolean" type="boolean" substitutionGroup="gml:_ScalarValue"> -->
	<element name="Boolean" type="boolean">
		<annotation>
			<documentation>A value from two-valued logic, using the XML Schema boolean type.  An instance may take the values {true, false, 1, 0}.</documentation>
		</annotation>
	</element>
	<!--
	<element name="BooleanList" type="gml:booleanOrNullList" substitutionGroup="gml:_ScalarValueList"> -->
	<element name="BooleanList" type="gml:booleanOrNullList">
		<annotation>
			<documentation>XML List based on XML Schema boolean type.  An element of this type contains a space-separated list of boolean values {0,1,true,false}</documentation>
		</annotation>
	</element>
	<!-- ====================================================================== -->
	<!-- ======================= Category ==========================
	<element name="Category" type="gml:CodeType" substitutionGroup="gml:_ScalarValue"> -->
	<element name="Category" type="gml:CodeType">
		<annotation>
			<documentation>A term representing a classification.  It has an optional XML attribute codeSpace, whose value is a URI which identifies a dictionary, codelist or authority for the term.</documentation>
		</annotation>
	</element>
	<!--
	<element name="CategoryList" type="gml:CodeOrNullListType" substitutionGroup="gml:_ScalarValueList"> -->
	<element name="CategoryList" type="gml:CodeOrNullListType">
		<annotation>
			<documentation>A space-separated list of terms or nulls.  A single XML attribute codeSpace may be provided, which authorises all the terms in the list.</documentation>
		</annotation>
	</element>
	<!-- ====================================================================== -->
	<!-- =========================== Quantity ============================
	<element name="Quantity" type="gml:MeasureType" substitutionGroup="gml:_ScalarValue"> -->
	<element name="Quantity" type="gml:MeasureType">
		<annotation>
			<documentation>A numeric value with a scale.  The content of the element is an amount using the XML Schema type double which permits decimal or scientific notation.  An XML attribute uom (unit of measure) is required, whose value is a URI which identifies the definition of the scale or units by which the numeric value must be multiplied.</documentation>
		</annotation>
	</element>
	<!--
	<element name="QuantityList" type="gml:MeasureOrNullListType" substitutionGroup="gml:_ScalarValueList"> -->
	<element name="QuantityList" type="gml:MeasureOrNullListType">
		<annotation>
			<documentation>A space separated list of amounts or nulls.  The amounts use the XML Schema type double.  A single XML attribute uom (unit of measure) is required, whose value is a URI which identifies the definition of the scale or units by which all the amounts in the list must be multiplied.</documentation>
		</annotation>
	</element>
	<!-- ====================================================================== -->
	<!-- ========================== Count ==========================
	<element name="Count" type="integer" substitutionGroup="gml:_ScalarValue"> -->
	<element name="Count" type="integer">
		<annotation>
			<documentation>An integer representing a frequency of occurrence.</documentation>
		</annotation>
	</element>
	<!--
	<element name="CountList" type="gml:integerOrNullList" substitutionGroup="gml:_ScalarValueList"> -->
	<element name="CountList" type="gml:integerOrNullList">
		<annotation>
			<documentation>A space-separated list of integers or nulls.</documentation>
		</annotation>
	</element>
	<!-- ====================================================================== -->
	<!--                    aggregate Value types                      -->
	<!-- ====================================================================== -->
	<!-- ===================== ValueCollection ========================== -->
	<complexType name="CompositeValueType">
		<annotation>
			<documentation>Aggregate value built from other Values using the Composite pattern. It contains zero or an arbitrary number of valueComponent elements, and zero or one valueComponents elements.  It may be used for strongly coupled aggregates (vectors, tensors) or for arbitrary collections of values.</documentation>
		</annotation>
		<complexContent>
			<extension base="gml:AbstractGMLType">
				<sequence>
					<element ref="gml:valueComponent" minOccurs="0" maxOccurs="unbounded"/>
					<element ref="gml:valueComponents" minOccurs="0"/>
				</sequence>
			</extension>
		</complexContent>
	</complexType>
	<!-- <element name="CompositeValue" type="gml:CompositeValueType" substitutionGroup="gml:_Value"> -->
	<element name="CompositeValue" type="gml:CompositeValueType">
		<annotation>
			<documentation>Aggregate value built using the Composite pattern.</documentation>
		</annotation>
	</element>
	<!-- ====================================================================== -->
	<!-- ========================= ValueArray ========================== -->
	<complexType name="ValueArrayType">
		<annotation>
			<documentation>A Value Array is used for homogeneous arrays of primitive and aggregate values.  The member values may be scalars, composites, arrays or lists.  ValueArray has the same content model as CompositeValue, but the member values must be homogeneous.  The element declaration contains a Schematron constraint which expresses this restriction precisely.            Since the members are homogeneous, the referenceSystem (uom, codeSpace) may be specified on the ValueArray itself and implicitly inherited by all the members if desired.    Note that a_ScalarValueList is preferred for arrays of Scalar Values since this is a more efficient encoding.</documentation>
		</annotation>
		<complexContent>
			<extension base="gml:CompositeValueType">
				<attributeGroup ref="gml:referenceSystem"/>
			</extension>
		</complexContent>
	</complexType>
	<!-- -->
	<element name="ValueArray" type="gml:ValueArrayType" substitutionGroup="gml:CompositeValue">
		<annotation>
			<appinfo>
				<sch:pattern name="Check either codeSpace or uom not both">
					<sch:rule context="gml:ValueArray">
						<sch:report test="@codeSpace and @uom">ValueArray may not carry both a reference to a codeSpace and a uom</sch:report>
					</sch:rule>
				</sch:pattern>
				<sch:pattern name="Check components are homogeneous">
					<sch:rule context="gml:ValueArray">
						<sch:assert test="count(gml:valueComponent/*) = count(gml:valueComponent/*[name() = name(../../gml:valueComponent[1]/*[1])])">All components of <sch:name/> must be of the same type</sch:assert>
						<sch:assert test="count(gml:valueComponents/*) = count(gml:valueComponents/*[name() = name(../*[1])])">All components of <sch:name/> must be of the same type</sch:assert>
					</sch:rule>
				</sch:pattern>
			</appinfo>
			<documentation>A Value Array is used for homogeneous arrays of primitive and aggregate values.   _ScalarValueList is preferred for arrays of Scalar Values since this is more efficient.  Since "choice" is not available for attribute groups, an external constraint (e.g. Schematron) would be required to enforce the selection of only one of these through schema validation</documentation>
		</annotation>
	</element>
	<!-- attribute group required for ValueArray -->
	<attributeGroup name="referenceSystem">
		<attribute name="codeSpace" type="anyURI" use="optional"/>
		<attribute name="uom" type="anyURI" use="optional"/>
	</attributeGroup>
	<!-- ====================================================================== -->
	<!-- ====================== Typed ValueExtents ============================ -->
	<group name="ValueExtent">
		<choice>
			<element ref="gml:CategoryExtent"/>
			<element ref="gml:QuantityExtent"/>
			<element ref="gml:CountExtent"/>
		</choice>
	</group>
	<!-- ======================================================================
	<element name="QuantityExtent" type="gml:QuantityExtentType" substitutionGroup="gml:_Value"> -->
	<element name="QuantityExtent" type="gml:QuantityExtentType">
		<annotation>
			<documentation>Utility element to store a 2-point range of numeric values. If one member is a null, then this is a single ended interval.</documentation>
		</annotation>
	</element>
	<!-- -->
	<complexType name="QuantityExtentType">
		<annotation>
			<documentation>Restriction of list type to store a 2-point range of numeric values. If one member is a null, then this is a single ended interval.</documentation>
		</annotation>
		<simpleContent>
			<restriction base="gml:MeasureOrNullListType">
				<length value="2"/>
			</restriction>
		</simpleContent>
	</complexType>
	<!-- ======================================================================
	<element name="CategoryExtent" type="gml:CategoryExtentType" substitutionGroup="gml:_Value"> -->
	<element name="CategoryExtent" type="gml:CategoryExtentType">
		<annotation>
			<documentation>Utility element to store a 2-point range of ordinal values. If one member is a null, then this is a single ended interval.</documentation>
		</annotation>
	</element>
	<!-- -->
	<complexType name="CategoryExtentType">
		<annotation>
			<documentation>Restriction of list type to store a 2-point range of ordinal values. If one member is a null, then this is a single ended interval.</documentation>
		</annotation>
		<simpleContent>
			<restriction base="gml:CodeOrNullListType">
				<length value="2"/>
			</restriction>
		</simpleContent>
	</complexType>
	<!-- ======================================================================
	<element name="CountExtent" type="gml:CountExtentType" substitutionGroup="gml:_Value"> -->
	<element name="CountExtent" type="gml:CountExtentType">
		<annotation>
			<documentation>Utility element to store a 2-point range of frequency values. If one member is a null, then this is a single ended interval.</documentation>
		</annotation>
	</element>
	<!-- -->
	<simpleType name="CountExtentType">
		<annotation>
			<documentation>Restriction of list type to store a 2-point range of frequency values. If one member is a null, then this is a single ended interval.</documentation>
		</annotation>
		<restriction base="gml:integerOrNullList">
			<length value="2"/>
		</restriction>
	</simpleType>
	<!-- ====================================================================== -->
	<!-- ===================== pieces needed for compositing ==================== -->
	<element name="valueProperty" type="gml:ValuePropertyType">
		<annotation>
			<documentation>Element which refers to, or contains, a Value</documentation>
		</annotation>
	</element>
	<!-- ====================================================================== -->
	<element name="valueComponent" type="gml:ValuePropertyType">
		<annotation>
			<documentation>Element which refers to, or contains, a Value.  This version is used in CompositeValues.</documentation>
		</annotation>
	</element>
	<!-- ====================================================================== -->
	<complexType name="ValuePropertyType">
		<annotation>
			<documentation>GML property which refers to, or contains, a Value</documentation>
		</annotation>
		<sequence minOccurs="0">
			<group ref="gml:Value"/>
		</sequence>
		<attributeGroup ref="gml:AssociationAttributeGroup"/>
	</complexType>
	<!-- ====================================================================== -->
	<!-- ====================================================================== -->
	<element name="valueComponents" type="gml:ValueArrayPropertyType">
		<annotation>
			<documentation>Element which refers to, or contains, a set of homogeneously typed Values.</documentation>
		</annotation>
	</element>
	<!-- ====================================================================== -->
	<complexType name="ValueArrayPropertyType">
		<annotation>
			<documentation>GML property which refers to, or contains, a set of homogeneously typed Values.</documentation>
		</annotation>
		<sequence>
			<group ref="gml:Value" maxOccurs="unbounded"/>
		</sequence>
	</complexType>
	<!-- ====================== utility typed valueProperty types ===================  -->
	<complexType name="ScalarValuePropertyType">
		<annotation>
			<documentation>Property whose content is a scalar value.</documentation>
		</annotation>
		<complexContent>
			<restriction base="gml:ValuePropertyType">
				<sequence minOccurs="0">
					<!-- <element ref="gml:_ScalarValue"/> -->
					<group ref="gml:ScalarValue"/>
				</sequence>
			</restriction>
		</complexContent>
	</complexType>
	<complexType name="BooleanPropertyType">
		<annotation>
			<documentation>Property whose content is a Boolean value.</documentation>
		</annotation>
		<complexContent>
			<restriction base="gml:ValuePropertyType">
				<sequence minOccurs="0">
					<element ref="gml:Boolean"/>
				</sequence>
			</restriction>
		</complexContent>
	</complexType>
	<complexType name="CategoryPropertyType">
		<annotation>
			<documentation>Property whose content is a Category.</documentation>
		</annotation>
		<complexContent>
			<restriction base="gml:ValuePropertyType">
				<sequence minOccurs="0">
					<element ref="gml:Category"/>
				</sequence>
			</restriction>
		</complexContent>
	</complexType>
	<complexType name="QuantityPropertyType">
		<annotation>
			<documentation>Property whose content is a Quantity.</documentation>
		</annotation>
		<complexContent>
			<restriction base="gml:ValuePropertyType">
				<sequence minOccurs="0">
					<element ref="gml:Quantity"/>
				</sequence>
			</restriction>
		</complexContent>
	</complexType>
	<complexType name="CountPropertyType">
		<annotation>
			<documentation>Property whose content is a Count.</documentation>
		</annotation>
		<complexContent>
			<restriction base="gml:ValuePropertyType">
				<sequence minOccurs="0">
					<element ref="gml:Count"/>
				</sequence>
			</restriction>
		</complexContent>
	</complexType>
	<!-- ====================================================================== -->
</schema>
