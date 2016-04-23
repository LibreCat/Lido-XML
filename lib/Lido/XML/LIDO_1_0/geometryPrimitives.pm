package Lido::XML::LIDO_1_0::geometryPrimitives;

use Moo;

our $VERSION = '0.04';

sub content {
	my @lines = <DATA>;
	join '' , @lines;
}

1;
__DATA__
<?xml version="1.0" encoding="UTF-8"?>
<!-- edited with XMLSPY v5 rel. 2 U (http://www.xmlspy.com) by Clemens Portele (interactive instruments) -->
<schema targetNamespace="http://www.opengis.net/gml" xmlns="http://www.w3.org/2001/XMLSchema" xmlns:sch="http://www.ascc.net/xml/schematron" xmlns:gml="http://www.opengis.net/gml" xmlns:xlink="http://www.w3.org/1999/xlink" elementFormDefault="qualified"
        version="3.1.1.2">
	<annotation>
		<appinfo source="urn:opengis:specification:gml:schema-xsd:geometryPrimitives:3.1.1">geometryPrimitives.xsd</appinfo>
		<documentation>
			GML is an OGC Standard.
			Copyright (c) 2001,2005,2010 Open Geospatial Consortium.
			To obtain additional rights of use, visit http://www.opengeospatial.org/legal/ .
		</documentation>
	</annotation>
	<!-- =========================================================== -->
	<include schemaLocation="gml.xsd"/>
	<include schemaLocation="geometryBasic2d.xsd"/>
	<!-- =========================================================== -->
	<element name="Curve" type="gml:CurveType" substitutionGroup="gml:_Curve"/>
	<!-- =========================================================== -->
	<complexType name="CurveType">
		<annotation>
			<documentation>Curve is a 1-dimensional primitive. Curves are continuous, connected, and have a measurable length in terms of the coordinate system. 
				A curve is composed of one or more curve segments. Each curve segment within a curve may be defined using a different interpolation method. The curve segments are connected to one another, with the end point of each segment except the last being the start point of the next segment in the segment list.
				The orientation of the curve is positive.</documentation>
		</annotation>
		<complexContent>
			<extension base="gml:AbstractCurveType">
				<sequence>
					<element ref="gml:segments">
						<annotation>
							<documentation>This element encapsulates the segments of the curve.</documentation>
						</annotation>
					</element>
				</sequence>
			</extension>
		</complexContent>
	</complexType>
	<!-- =========================================================== -->
	<element name="baseCurve" type="gml:CurvePropertyType">
		<annotation>
			<appinfo>
				<sch:pattern name="Check either href or content not both">
					<sch:rule context="gml:baseCurve">
						<sch:extends rule="hrefOrContent"/>
					</sch:rule>
				</sch:pattern>
			</appinfo>
			<documentation>This property element either references a curve via the XLink-attributes or contains the curve element. A curve element is any element which is substitutable for "_Curve".</documentation>
		</annotation>
	</element>
	<!-- =========================================================== -->
	<element name="OrientableCurve" type="gml:OrientableCurveType" substitutionGroup="gml:_Curve"/>
	<!-- =========================================================== -->
	<complexType name="OrientableCurveType">
		<annotation>
			<documentation>OrientableCurve consists of a curve and an orientation. If the orientation is "+", then the OrientableCurve is identical to the baseCurve. If the orientation is "-", then the OrientableCurve is related to another _Curve with a parameterization that reverses the sense of the curve traversal.</documentation>
		</annotation>
		<complexContent>
			<extension base="gml:AbstractCurveType">
				<sequence>
					<element ref="gml:baseCurve">
						<annotation>
							<documentation>References or contains the base curve (positive orientation).
NOTE: This definition allows for a nested structure, i.e. an OrientableCurve may use another OrientableCurve as its base curve.</documentation>
						</annotation>
					</element>
				</sequence>
				<attribute name="orientation" type="gml:SignType" default="+">
					<annotation>
						<documentation>If the orientation is "+", then the OrientableCurve is identical to the baseCurve. If the orientation is "-", then the OrientableCurve is related to another _Curve with a parameterization that reverses the sense of the curve traversal. "+" is the default value.</documentation>
					</annotation>
				</attribute>
			</extension>
		</complexContent>
	</complexType>
	<!-- =========================================================== -->
	<!-- curve segments (1-dimensional) -->
	<!-- =========================================================== -->
	<!-- =========================================================== -->
	<element name="_CurveSegment" type="gml:AbstractCurveSegmentType" abstract="true">
		<annotation>
			<documentation>The "_CurveSegment" element is the abstract head of the substituition group for all curve segment elements, i.e. continuous segments of the same interpolation mechanism.</documentation>
		</annotation>
	</element>
	<!-- =========================================================== -->
	<complexType name="AbstractCurveSegmentType" abstract="true">
		<annotation>
			<documentation>Curve segment defines a homogeneous segment of a curve.</documentation>
		</annotation>
		<sequence/>
		<attribute name="numDerivativesAtStart" type="integer" use="optional" default="0">
			<annotation>
				<documentation>The attribute "numDerivativesAtStart" specifies the type of continuity between this curve segment and its predecessor. If this is the first curve segment in the curve, one of these values, as appropriate, is ignored. The default value of "0" means simple continuity, which is a mandatory minimum level of continuity. This level is referred to as "C 0 " in mathematical texts. A value of 1 means that the function and its first derivative are continuous at the appropriate end point: "C 1 " continuity. A value of "n" for any integer means the function and its first n derivatives are continuous: "C n " continuity.
NOTE: Use of these values is only appropriate when the basic curve definition is an underdetermined system. For example, line string segments cannot support continuity above C 0 , since there is no spare control parameter to adjust the incoming angle at the end points of the segment. Spline functions on the other hand often have extra degrees of freedom on end segments that allow them to adjust the values of the derivatives to support C 1 or higher continuity.</documentation>
			</annotation>
		</attribute>
		<attribute name="numDerivativesAtEnd" type="integer" use="optional" default="0">
			<annotation>
				<documentation>The attribute "numDerivativesAtEnd" specifies the type of continuity between this curve segment and its successor. If this is the last curve segment in the curve, one of these values, as appropriate, is ignored. The default value of "0" means simple continuity, which is a mandatory minimum level of continuity. This level is referred to as "C 0 " in mathematical texts. A value of 1 means that the function and its first derivative are continuous at the appropriate end point: "C 1 " continuity. A value of "n" for any integer means the function and its first n derivatives are continuous: "C n " continuity.
NOTE: Use of these values is only appropriate when the basic curve definition is an underdetermined system. For example, line string segments cannot support continuity above C 0 , since there is no spare control parameter to adjust the incoming angle at the end points of the segment. Spline functions on the other hand often have extra degrees of freedom on end segments that allow them to adjust the values of the derivatives to support C 1 or higher continuity.</documentation>
			</annotation>
		</attribute>
		<attribute name="numDerivativeInterior" type="integer" use="optional" default="0">
			<annotation>
				<documentation>The attribute "numDerivativesInterior" specifies the type of continuity that is guaranteed interior to the curve. The default value of "0" means simple continuity, which is a mandatory minimum level of continuity. This level is referred to as "C 0 " in mathematical texts. A value of 1 means that the function and its first derivative are continuous at the appropriate end point: "C 1 " continuity. A value of "n" for any integer means the function and its first n derivatives are continuous: "C n " continuity.
NOTE: Use of these values is only appropriate when the basic curve definition is an underdetermined system. For example, line string segments cannot support continuity above C 0 , since there is no spare control parameter to adjust the incoming angle at the end points of the segment. Spline functions on the other hand often have extra degrees of freedom on end segments that allow them to adjust the values of the derivatives to support C 1 or higher continuity.</documentation>
			</annotation>
		</attribute>
	</complexType>
	<!-- =========================================================== -->
	<element name="segments" type="gml:CurveSegmentArrayPropertyType">
		<annotation>
			<documentation>This property element contains a list of curve segments. The order of the elements is significant and shall be preserved when processing the array.</documentation>
		</annotation>
	</element>
	<!-- =========================================================== -->
	<complexType name="CurveSegmentArrayPropertyType">
		<annotation>
			<documentation>A container for an array of curve segments.</documentation>
		</annotation>
		<sequence>
			<element ref="gml:_CurveSegment" minOccurs="0" maxOccurs="unbounded"/>
		</sequence>
	</complexType>
	<!-- =========== global element in "_CurveSegment" substitution group ================ -->
	<element name="LineStringSegment" type="gml:LineStringSegmentType" substitutionGroup="gml:_CurveSegment"/>
	<!-- =========================================================== -->
	<complexType name="LineStringSegmentType">
		<annotation>
			<documentation>A LineStringSegment is a curve segment that is defined by two or more coordinate tuples, with linear interpolation between them.
				Note: LineStringSegment implements GM_LineString of ISO 19107.</documentation>
		</annotation>
		<complexContent>
			<extension base="gml:AbstractCurveSegmentType">
				<sequence>
					<choice>
						<annotation>
							<documentation>GML supports two different ways to specify the control points of a curve segment.
1. A sequence of "pos" (DirectPositionType) or "pointProperty" (PointPropertyType) elements. "pos" elements are control points that are only part of this curve segment, "pointProperty" elements contain a point that may be referenced from other geometry elements or reference another point defined outside of this curve segment (reuse of existing points).
2. The "posList" element allows for a compact way to specifiy the coordinates of the control points, if all control points are in the same coordinate reference systems and belong to this curve segment only. The number of direct positions in the list must be at least two.</documentation>
						</annotation>
						<choice minOccurs="2" maxOccurs="unbounded">
							<element ref="gml:pos"/>
							<element ref="gml:pointProperty"/>
							<element ref="gml:pointRep">
								<annotation>
									<documentation>Deprecated with GML version 3.1.0. Use "pointProperty" instead. Included for backwards compatibility with GML 3.0.0.</documentation>
								</annotation>
							</element>
						</choice>
						<element ref="gml:posList"/>
						<element ref="gml:coordinates">
							<annotation>
								<documentation>Deprecated with GML version 3.1.0. Use "posList" instead.</documentation>
							</annotation>
						</element>
					</choice>
				</sequence>
				<attribute name="interpolation" type="gml:CurveInterpolationType" fixed="linear">
					<annotation>
						<documentation>The attribute "interpolation" specifies the curve interpolation mechanism used for this segment. This mechanism
uses the control points and control parameters to determine the position of this curve segment. For a LineStringSegment the interpolation is fixed as "linear".</documentation>
					</annotation>
				</attribute>
			</extension>
		</complexContent>
	</complexType>
	<!-- =========== global element in "_CurveSegment" substitution group ================ -->
	<element name="ArcString" type="gml:ArcStringType" substitutionGroup="gml:_CurveSegment"/>
	<!-- =========================================================== -->
	<complexType name="ArcStringType">
		<annotation>
			<documentation>An ArcString is a curve segment that uses three-point circular arc interpolation.</documentation>
		</annotation>
		<complexContent>
			<extension base="gml:AbstractCurveSegmentType">
				<sequence>
					<choice>
						<annotation>
							<documentation>GML supports two different ways to specify the control points of a curve segment.
1. A sequence of "pos" (DirectPositionType) or "pointProperty" (PointPropertyType) elements. "pos" elements are control points that are only part of this curve segment, "pointProperty" elements contain a point that may be referenced from other geometry elements or reference another point defined outside of this curve segment (reuse of existing points).
2. The "posList" element allows for a compact way to specifiy the coordinates of the control points, if all control points are in the same coordinate reference systems and belong to this curve segment only. The number of direct positions in the list must be at least three.</documentation>
						</annotation>
						<choice minOccurs="3" maxOccurs="unbounded">
							<element ref="gml:pos"/>
							<element ref="gml:pointProperty"/>
							<element ref="gml:pointRep">
								<annotation>
									<documentation>Deprecated with GML version 3.1.0. Use "pointProperty" instead. Included for backwards compatibility with GML 3.0.0.</documentation>
								</annotation>
							</element>
						</choice>
						<element ref="gml:posList"/>
						<element ref="gml:coordinates">
							<annotation>
								<documentation>Deprecated with GML version 3.1.0. Use "posList" instead.</documentation>
							</annotation>
						</element>
					</choice>
				</sequence>
				<attribute name="interpolation" type="gml:CurveInterpolationType" fixed="circularArc3Points">
					<annotation>
						<documentation>The attribute "interpolation" specifies the curve interpolation mechanism used for this segment. This mechanism
uses the control points and control parameters to determine the position of this curve segment. For an ArcString the interpolation is fixed as "circularArc3Points".</documentation>
					</annotation>
				</attribute>
				<attribute name="numArc" type="integer" use="optional">
					<annotation>
						<documentation>The number of arcs in the arc string can be explicitly stated in this attribute. The number of control points in the arc string must be 2 * numArc + 1.</documentation>
					</annotation>
				</attribute>
			</extension>
		</complexContent>
	</complexType>
	<!-- =========== global element in "_CurveSegment" substitution group ================ -->
	<element name="Arc" type="gml:ArcType" substitutionGroup="gml:ArcString"/>
	<!-- =========================================================== -->
	<complexType name="ArcType">
		<annotation>
			<documentation>An Arc is an arc string with only one arc unit, i.e. three control points.</documentation>
		</annotation>
		<complexContent>
			<restriction base="gml:ArcStringType">
				<sequence>
					<choice>
						<annotation>
							<documentation>GML supports two different ways to specify the control points of a curve segment.
1. A sequence of "pos" (DirectPositionType) or "pointProperty" (PointPropertyType) elements. "pos" elements are control points that are only part of this curve segment, "pointProperty" elements contain a point that may be referenced from other geometry elements or reference another point defined outside of this curve segment (reuse of existing points).
2. The "posList" element allows for a compact way to specifiy the coordinates of the control points, if all control points are in the same coordinate reference systems and belong to this curve segment only. The number of direct positions in the list must be three.</documentation>
						</annotation>
						<choice minOccurs="3" maxOccurs="3">
							<element ref="gml:pos"/>
							<element ref="gml:pointProperty"/>
							<element ref="gml:pointRep">
								<annotation>
									<documentation>Deprecated with GML version 3.1.0. Use "pointProperty" instead. Included for backwards compatibility with GML 3.0.0.</documentation>
								</annotation>
							</element>
						</choice>
						<element ref="gml:posList"/>
						<element ref="gml:coordinates">
							<annotation>
								<documentation>Deprecated with GML version 3.1.0. Use "posList" instead.</documentation>
							</annotation>
						</element>
					</choice>
				</sequence>
				<attribute name="numArc" type="integer" use="optional" fixed="1">
					<annotation>
						<documentation>An arc is an arc string consiting of a single arc, the attribute is fixed to "1".</documentation>
					</annotation>
				</attribute>
			</restriction>
		</complexContent>
	</complexType>
	<!-- =========== global element in "_CurveSegment" substitution group ================ -->
	<element name="Circle" type="gml:CircleType" substitutionGroup="gml:Arc"/>
	<!-- =========================================================== -->
	<complexType name="CircleType">
		<annotation>
			<documentation>A Circle is an arc whose ends coincide to form a simple closed loop. The "start" and "end" bearing are equal and shall be the bearing for the first controlPoint listed. The three control points must be distinct non-co-linear points for the Circle to be unambiguously defined. The arc is simply extended past the third control point until the first control point is encountered.</documentation>
		</annotation>
		<complexContent>
			<extension base="gml:ArcType"/>
		</complexContent>
	</complexType>
	<!-- =========== global element in "_CurveSegment" substitution group ================ -->
	<element name="ArcStringByBulge" type="gml:ArcStringByBulgeType" substitutionGroup="gml:_CurveSegment"/>
	<!-- =========================================================== -->
	<complexType name="ArcStringByBulgeType">
		<annotation>
			<documentation>This variant of the arc computes the mid points of the arcs instead of storing the coordinates directly. The control point sequence consists of the start and end points of each arc plus the bulge.</documentation>
		</annotation>
		<complexContent>
			<extension base="gml:AbstractCurveSegmentType">
				<sequence>
					<choice>
						<annotation>
							<documentation>GML supports two different ways to specify the control points of a curve segment.
1. A sequence of "pos" (DirectPositionType) or "pointProperty" (PointPropertyType) elements. "pos" elements are control points that are only part of this curve segment, "pointProperty" elements contain a point that may be referenced from other geometry elements or reference another point defined outside of this curve segment (reuse of existing points).
2. The "posList" element allows for a compact way to specifiy the coordinates of the control points, if all control points are in the same coordinate reference systems and belong to this curve segment only. The number of direct positions in the list must be at least two.</documentation>
						</annotation>
						<choice minOccurs="2" maxOccurs="unbounded">
							<element ref="gml:pos"/>
							<element ref="gml:pointProperty"/>
							<element ref="gml:pointRep">
								<annotation>
									<documentation>Deprecated with GML version 3.1.0. Use "pointProperty" instead. Included for backwards compatibility with GML 3.0.0.</documentation>
								</annotation>
							</element>
						</choice>
						<element ref="gml:posList"/>
						<element ref="gml:coordinates">
							<annotation>
								<documentation>Deprecated with GML version 3.1.0. Use "posList" instead.</documentation>
							</annotation>
						</element>
					</choice>
					<element name="bulge" type="double" maxOccurs="unbounded">
						<annotation>
							<documentation>The bulge controls the offset of each arc's midpoint. The "bulge" is the real number multiplier for the normal that determines the offset direction of the midpoint of each arc. The length of the bulge sequence is exactly 1 less than the length of the control point array, since a bulge is needed for each pair of adjacent points in the control point array. The bulge is not given by a distance, since it is simply a multiplier for the normal.
The midpoint of the resulting arc is given by: midPoint = ((startPoint + endPoint)/2.0) + bulge*normal</documentation>
						</annotation>
					</element>
					<element name="normal" type="gml:VectorType" maxOccurs="unbounded">
						<annotation>
							<documentation>The attribute "normal" is a vector normal (perpendicular) to the chord of the arc, the line joining the first and last
point of the arc. In a 2D coordinate system, there are only two possible directions for the normal, and it is often given as a signed real, indicating its length, with a positive sign indicating a left turn angle from the chord line, and a negative sign indicating a right turn from the chord. In 3D, the normal determines the plane of the arc, along with the start and endPoint of the arc.
The normal is usually a unit vector, but this is not absolutely necessary. If the normal is a zero vector, the geometric object becomes equivalent to the straight line between the two end points. The length of the normal sequence is exactly the same as for the bulge sequence, 1 less than the control point sequence length.</documentation>
						</annotation>
					</element>
				</sequence>
				<attribute name="interpolation" type="gml:CurveInterpolationType" fixed="circularArc2PointWithBulge">
					<annotation>
						<documentation>The attribute "interpolation" specifies the curve interpolation mechanism used for this segment. This mechanism
uses the control points and control parameters to determine the position of this curve segment. For an ArcStringByBulge the interpolation is fixed as "circularArc2PointWithBulge".</documentation>
					</annotation>
				</attribute>
				<attribute name="numArc" type="integer" use="optional">
					<annotation>
						<documentation>The number of arcs in the arc string can be explicitly stated in this attribute. The number of control points in the arc string must be numArc + 1.</documentation>
					</annotation>
				</attribute>
			</extension>
		</complexContent>
	</complexType>
	<!-- =========== global element in "_CurveSegment" substitution group ================ -->
	<element name="ArcByBulge" type="gml:ArcByBulgeType" substitutionGroup="gml:ArcStringByBulge"/>
	<!-- =========================================================== -->
	<complexType name="ArcByBulgeType">
		<annotation>
			<documentation>An ArcByBulge is an arc string with only one arc unit, i.e. two control points and one bulge.</documentation>
		</annotation>
		<complexContent>
			<restriction base="gml:ArcStringByBulgeType">
				<sequence>
					<choice>
						<annotation>
							<documentation>GML supports two different ways to specify the control points of a curve segment.
1. A sequence of "pos" (DirectPositionType) or "pointProperty" (PointPropertyType) elements. "pos" elements are control points that are only part of this curve segment, "pointProperty" elements contain a point that may be referenced from other geometry elements or reference another point defined outside of this curve segment (reuse of existing points).
2. The "posList" element allows for a compact way to specifiy the coordinates of the control points, if all control points are in the same coordinate reference systems and belong to this curve segment only. The number of direct positions in the list must be two.</documentation>
						</annotation>
						<choice minOccurs="2" maxOccurs="2">
							<element ref="gml:pos"/>
							<element ref="gml:pointProperty"/>
							<element ref="gml:pointRep">
								<annotation>
									<documentation>Deprecated with GML version 3.1.0. Use "pointProperty" instead. Included for backwards compatibility with GML 3.0.0.</documentation>
								</annotation>
							</element>
						</choice>
						<element ref="gml:posList"/>
						<element ref="gml:coordinates">
							<annotation>
								<documentation>Deprecated with GML version 3.1.0. Use "posList" instead.</documentation>
							</annotation>
						</element>
					</choice>
					<element name="bulge" type="double">
						<annotation>
							<documentation>The bulge controls the offset of each arc's midpoint. The "bulge" is the real number multiplier for the normal that determines the offset direction of the midpoint of each arc. The length of the bulge sequence is exactly 1 less than the length of the control point array, since a bulge is needed for each pair of adjacent points in the control point array. The bulge is not given by a distance, since it is simply a multiplier for the normal.
The midpoint of the resulting arc is given by: midPoint = ((startPoint + endPoint)/2.0) + bulge*normal</documentation>
						</annotation>
					</element>
					<element name="normal" type="gml:VectorType">
						<annotation>
							<documentation>The attribute "normal" is a vector normal (perpendicular) to the chord of the arc, the line joining the first and last
point of the arc. In a 2D coordinate system, there are only two possible directions for the normal, and it is often given as a signed real, indicating its length, with a positive sign indicating a left turn angle from the chord line, and a negative sign indicating a right turn from the chord. In 3D, the normal determines the plane of the arc, along with the start and endPoint of the arc.
The normal is usually a unit vector, but this is not absolutely necessary. If the normal is a zero vector, the geometric object becomes equivalent to the straight line between the two end points. The length of the normal sequence is exactly the same as for the bulge sequence, 1 less than the control point sequence length.</documentation>
						</annotation>
					</element>
				</sequence>
				<attribute name="numArc" type="integer" use="optional" fixed="1">
					<annotation>
						<documentation>An arc is an arc string consiting of a single arc, the attribute is fixed to "1".</documentation>
					</annotation>
				</attribute>
			</restriction>
		</complexContent>
	</complexType>
	<!-- =========== global element in "_CurveSegment" substitution group ================ -->
	<element name="ArcByCenterPoint" type="gml:ArcByCenterPointType" substitutionGroup="gml:_CurveSegment"/>
	<!-- =========================================================== -->
	<complexType name="ArcByCenterPointType">
		<annotation>
			<documentation>This variant of the arc requires that the points on the arc have to be computed instead of storing the coordinates directly. The control point is the center point of the arc plus the radius and the bearing at start and end. This represenation can be used only in 2D.</documentation>
		</annotation>
		<complexContent>
			<extension base="gml:AbstractCurveSegmentType">
				<sequence>
					<choice>
						<annotation>
							<documentation>GML supports two different ways to specify the control points of a curve segment.
1. A "pos" (DirectPositionType) or "pointProperty" (PointPropertyType) element. The "pos" element contains a center point that is only part of this curve segment, a "pointProperty" element contains a point that may be referenced from other geometry elements or reference another point defined outside of this curve segment (reuse of existing points).
2. The "posList" element can be used to specifiy the coordinates of the center point, too. The number of direct positions in the list must be one.</documentation>
						</annotation>
						<choice>
							<element ref="gml:pos"/>
							<element ref="gml:pointProperty"/>
							<element ref="gml:pointRep">
								<annotation>
									<documentation>Deprecated with GML version 3.1.0. Use "pointProperty" instead. Included for backwards compatibility with GML 3.0.0.</documentation>
								</annotation>
							</element>
						</choice>
						<element ref="gml:posList"/>
						<element ref="gml:coordinates">
							<annotation>
								<documentation>Deprecated with GML version 3.1.0. Use "posList" instead.</documentation>
							</annotation>
						</element>
					</choice>
					<element name="radius" type="gml:LengthType">
						<annotation>
							<documentation>The radius of the arc.</documentation>
						</annotation>
					</element>
					<element name="startAngle" type="gml:AngleType" minOccurs="0">
						<annotation>
							<documentation>The bearing of the arc at the start.</documentation>
						</annotation>
					</element>
					<element name="endAngle" type="gml:AngleType" minOccurs="0">
						<annotation>
							<documentation>The bearing of the arc at the end.</documentation>
						</annotation>
					</element>
				</sequence>
				<attribute name="interpolation" type="gml:CurveInterpolationType" fixed="circularArcCenterPointWithRadius">
					<annotation>
						<documentation>The attribute "interpolation" specifies the curve interpolation mechanism used for this segment. This mechanism
uses the control points and control parameters to determine the position of this curve segment. For an ArcByCenterPoint the interpolation is fixed as "circularArcCenterPointWithRadius".</documentation>
					</annotation>
				</attribute>
				<attribute name="numArc" type="integer" use="required" fixed="1">
					<annotation>
						<documentation>Since this type describes always a single arc, the attribute is fixed to "1".</documentation>
					</annotation>
				</attribute>
			</extension>
		</complexContent>
	</complexType>
	<!-- =========== global element in "_CurveSegment" substitution group ================ -->
	<element name="CircleByCenterPoint" type="gml:CircleByCenterPointType" substitutionGroup="gml:ArcByCenterPoint"/>
	<!-- =========================================================== -->
	<complexType name="CircleByCenterPointType">
		<annotation>
			<documentation>A CircleByCenterPoint is an ArcByCenterPoint with identical start and end angle to form a full circle. Again, this represenation can be used only in 2D.</documentation>
		</annotation>
		<complexContent>
			<extension base="gml:ArcByCenterPointType"/>
		</complexContent>
	</complexType>
	<!-- ================================================================================ -->
	<element name="OffsetCurve" type="gml:OffsetCurveType" substitutionGroup="gml:_CurveSegment"/>
	<!-- ================================================================================ -->
	<complexType name="OffsetCurveType">
		<annotation>
			<documentation>An offset curve is a curve at a constant
		 distance from the basis curve. They can be useful as a cheap
		 and simple alternative to constructing curves that are offsets	
		 by definition.</documentation>
		</annotation>
		<complexContent>
			<extension base="gml:AbstractCurveSegmentType">
				<sequence>
					<element name="offsetBase" type="gml:CurvePropertyType">
						<annotation>
							<documentation>offsetBase is a reference to thecurve from which this
							 curve is define	as an offset.</documentation>
						</annotation>
					</element>
					<element name="distance" type="gml:LengthType">
						<annotation>
							<documentation>distance is the distance at which the
							 offset curve is generated from the basis curve. In 2D systems, positive distances
							 are to be to the left of the basis curve, and the negative distances are to be to the 
							 right of the basis curve.</documentation>
						</annotation>
					</element>
					<element name="refDirection" type="gml:VectorType" minOccurs="0">
						<annotation>
							<documentation>refDistance is used to define the vector
       direction of the offset curve from the basis curve. It can
       be omitted in the 2D case, where the distance can be 
       positive or negative. In that case, distance defines left
       side (positive distance) or right side (negative distance)
       with respect to the tangent to the basis curve.

       In 3D the basis curve shall have a well defined tangent 
       direction for every point. The offset curve at any point 
       in 3D, the basis curve shall have a well-defined tangent
       direction for every point. The offset curve at any point
       (parameter) on the basis curve c is in the direction
       -   -   -         -               
       s = v x t  where  v = c.refDirection()  
       and
       -
       t = c.tangent()
                                                    -
       For the offset direction to be well-defined, v shall not
       on any point of the curve be in the same, or opposite, 
       direction as
       - 
       t.

       The default value of the refDirection shall be the local
       co-ordinate axis vector for elevation, which indicates up for
       the curve in a geographic sense.

       NOTE! If the refDirection is the positive tangent to the
       local elevation axis ("points upward"), then the offset
       vector points to the left of the curve when viewed from
       above.</documentation>
						</annotation>
					</element>
				</sequence>
			</extension>
		</complexContent>
	</complexType>
	<!-- ====================================================== -->
	<element name="AffinePlacement" type="gml:AffinePlacementType"/>
	<!-- ====================================================== -->
	<complexType name="AffinePlacementType">
		<annotation>
			<documentation>A placement takes a standard geometric
   construction and places it in geographic space. It defines a
   transformation from a constructive parameter space to the 
   co-ordinate space of the co-ordinate reference system being used.  
   Parameter spaces in formulae in this International Standard are 
   given as (u, v) in 2D and(u, v, w) in 3D. Co-ordinate reference 
   systems positions are given in formulae, in this International 
   Standard, by either (x, y) in 2D, or (x, y, z) in 3D.

   Affine placements are defined by linear transformations from 
   parameter space to the target co-ordiante space. 2-dimensional 
   Cartesian parameter space,(u,v) transforms into 3-dimensional co-
   ordinate reference systems,(x,y,z) by using an affine 
   transformation,(u,v)->(x,y,z) which is defined :

	x	ux vx  	x0
			 u	  
	y =	uy vy   + y0
			 v		
	x	uz vz	z0
	
   Then, given this equation, the location element of the 
   AffinePlacement is the direct position (x0, y0, z0), which is the
   target position of the origin in (u, v). The two reference
   directions (ux, uy, uz) and (vx, vy, vz) are the target     
   directions of the unit vectors at the origin in (u, v).</documentation>
		</annotation>
		<sequence>
			<element name="location" type="gml:DirectPositionType">
				<annotation>
					<documentation>The location property gives 
     the target of the parameter space origin. This is the vector  
    (x0, y0, z0) in the formulae above.</documentation>
				</annotation>
			</element>
			<element name="refDirection" type="gml:VectorType" maxOccurs="unbounded">
				<annotation>
					<documentation>The attribute refDirection gives the    
target directions for the co-ordinate basis vectors of the  
parameter space. These are the columns of the matrix in the 
formulae given above. The number of directions given shall be 
inDimension. The dimension of the directions shall be 
outDimension.</documentation>
				</annotation>
			</element>
			<element name="inDimension" type="positiveInteger">
				<annotation>
					<documentation>Dimension of the constructive parameter 
     space.</documentation>
				</annotation>
			</element>
			<element name="outDimension" type="positiveInteger">
				<annotation>
					<documentation>Dimension of the co-ordinate space.</documentation>
				</annotation>
			</element>
		</sequence>
	</complexType>
	<!-- = global element in "_CurveSegment" substitution group ========================== -->
	<element name="Clothoid" type="gml:ClothoidType" substitutionGroup="gml:_CurveSegment"/>
	<!-- ======================================================================= -->
	<complexType name="ClothoidType">
		<annotation>
			<documentation>A clothoid, or Cornu's spiral, is plane
   curve whose curvature is a fixed function of its length.
   In suitably chosen co-ordinates it is given by Fresnel's
   integrals.

    x(t) = 0-integral-t cos(AT*T/2)dT    
    
    y(t) = 0-integral-t sin(AT*T/2)dT
   
   This geometry is mainly used as a transition curve between
   curves of type straight line to circular arc or circular arc
   to circular arc. With this curve type it is possible to 
   achieve a C2-continous transition between the above mentioned
   curve types. One formula for the Clothoid is A*A = R*t where
   A is constant, R is the varying radius of curvature along the
   the curve and t is the length along and given in the Fresnel 
   integrals.</documentation>
		</annotation>
		<complexContent>
			<extension base="gml:AbstractCurveSegmentType">
				<sequence>
					<element name="refLocation">
						<complexType>
							<sequence>
								<element ref="gml:AffinePlacement">
									<annotation>
										<documentation>The "refLocation" is an affine mapping 
          that places  the curve defined by the Fresnel Integrals  
          into the co-ordinate reference system of this object.</documentation>
									</annotation>
								</element>
							</sequence>
						</complexType>
					</element>
					<element name="scaleFactor" type="decimal">
						<annotation>
							<documentation>The element gives the value for the
       constant in the Fresnel's integrals.</documentation>
						</annotation>
					</element>
					<element name="startParameter" type="double">
						<annotation>
							<documentation>The startParameter is the arc length
       distance from the inflection point that will be the start
       point for this curve segment. This shall be lower limit
       used in the Fresnel integral and is the value of the
       constructive parameter of this curve segment at its start
       point. The startParameter can either be positive or
       negative. 
       NOTE! If 0.0 (zero), lies between the startParameter and
       the endParameter of the clothoid, then the curve goes
       through the clothoid's inflection point, and the direction
       of its radius of curvature, given by the second
       derivative vector, changes sides with respect to the
       tangent vector. The term length distance for the</documentation>
						</annotation>
					</element>
					<element name="endParameter" type="double">
						<annotation>
							<documentation>The endParameter is the arc length
       distance from the inflection point that will be the end
       point for this curve segment. This shall be upper limit
       used in the Fresnel integral and is the value of the
       constructive parameter of this curve segment at its
       start point. The startParameter can either be positive
       or negative.</documentation>
						</annotation>
					</element>
				</sequence>
			</extension>
		</complexContent>
	</complexType>
	<!-- = global element in "_CurveSegment" substitution group = -->
	<element name="GeodesicString" type="gml:GeodesicStringType" substitutionGroup="gml:_CurveSegment"/>
	<!-- ======================================================== -->
	<complexType name="GeodesicStringType">
		<annotation>
			<documentation>A GeodesicString consists of sequence of
   geodesic segments. The type essentially combines a sequence of
   Geodesic into a single object.
   The GeodesicString is computed from two or more positions and an
   interpolation using geodesics defined from the geoid (or 
   ellipsoid) of the co-ordinate reference system being used.</documentation>
		</annotation>
		<complexContent>
			<extension base="gml:AbstractCurveSegmentType">
				<choice>
					<element ref="gml:posList"/>
					<group ref="gml:geometricPositionGroup" minOccurs="2" maxOccurs="unbounded"/>
				</choice>
				<attribute name="interpolation" type="gml:CurveInterpolationType" fixed="geodesic">
					<annotation>
						<documentation>The attribute "interpolation" specifies the
     curve interpolation mechanism used for this segment. This
     mechanism uses the control points and control parameters to
     determine the position of this curve segment. For an 
     GeodesicString the interpolation is fixed as "geodesic".</documentation>
					</annotation>
				</attribute>
			</extension>
		</complexContent>
	</complexType>
	<!-- = global element in "_CurveSegment" substitution group = -->
	<element name="Geodesic" type="gml:GeodesicType" substitutionGroup="gml:GeodesicString"/>
	<!-- ======================================================== -->
	<complexType name="GeodesicType">
		<annotation>
			<documentation>A Geodesic consists of two distinct
   positions joined by a geodesic curve. The control points of
   a Geodesic shall lie on the geodesic between its start
   point and end points. Between these two points, a geodesic
   curve defined from ellipsoid or geoid model used by the
   co-ordinate reference systems may be used to interpolate
   other positions. Any other point in the controlPoint array
   must fall on this geodesic.</documentation>
		</annotation>
		<complexContent>
			<extension base="gml:GeodesicStringType"/>
		</complexContent>
	</complexType>
	<!-- =========== global element in "_CurveSegment" substitution group ================ -->
	<element name="CubicSpline" type="gml:CubicSplineType" substitutionGroup="gml:_CurveSegment"/>
	<!-- =========================================================== -->
	<complexType name="CubicSplineType">
		<annotation>
			<documentation>Cubic splines are similar to line strings in that they are a sequence of segments each with its own defining function. A cubic spline uses the control points and a set of derivative parameters to define a piecewise 3rd degree polynomial interpolation. Unlike line-strings, the parameterization by arc length is not necessarily still a polynomial. 
				The function describing the curve must be C2, that is, have a continuous 1st and 2nd derivative at all points, and pass through the controlPoints in the order given. Between the control points, the curve segment is defined by a cubic polynomial. At each control point, the polynomial changes in such a manner that the 1st and 2nd derivative vectors are the same from either side. The control parameters record must contain vectorAtStart, and vectorAtEnd which are the unit tangent vectors at controlPoint[1] and controlPoint[n] where n = controlPoint.count. 
				Note: only the direction of the vectors is relevant, not their length.</documentation>
		</annotation>
		<complexContent>
			<extension base="gml:AbstractCurveSegmentType">
				<sequence>
					<choice>
						<annotation>
							<documentation>GML supports two different ways to specify the control points of a curve segment.
1. A sequence of "pos" (DirectPositionType) or "pointProperty" (PointPropertyType) elements. "pos" elements are control points that are only part of this curve segment, "pointProperty" elements contain a point that may be referenced from other geometry elements or reference another point defined outside of this curve segment (reuse of existing points).
2. The "posList" element allows for a compact way to specifiy the coordinates of the control points, if all control points are in the same coordinate reference systems and belong to this curve segment only. The number of direct positions in the list must be at least three.</documentation>
						</annotation>
						<choice minOccurs="2" maxOccurs="unbounded">
							<element ref="gml:pos"/>
							<element ref="gml:pointProperty"/>
							<element ref="gml:pointRep">
								<annotation>
									<documentation>Deprecated with GML version 3.1.0. Use "pointProperty" instead. Included for backwards compatibility with GML 3.0.0.</documentation>
								</annotation>
							</element>
						</choice>
						<element ref="gml:posList"/>
						<element ref="gml:coordinates">
							<annotation>
								<documentation>Deprecated with GML version 3.1.0. Use "posList" instead.</documentation>
							</annotation>
						</element>
					</choice>
					<element name="vectorAtStart" type="gml:VectorType">
						<annotation>
							<documentation>"vectorAtStart" is the unit tangent vector at the start point of the spline.</documentation>
						</annotation>
					</element>
					<element name="vectorAtEnd" type="gml:VectorType">
						<annotation>
							<documentation>"vectorAtEnd" is the unit tangent vector at the end point of the spline.</documentation>
						</annotation>
					</element>
				</sequence>
				<attribute name="interpolation" type="gml:CurveInterpolationType" fixed="cubicSpline">
					<annotation>
						<documentation>The attribute "interpolation" specifies the curve interpolation mechanism used for this segment. This mechanism
uses the control points and control parameters to determine the position of this curve segment. For a CubicSpline the interpolation is fixed as "cubicSpline".</documentation>
					</annotation>
				</attribute>
				<attribute name="degree" type="integer" fixed="3">
					<annotation>
						<documentation>The degree for a cubic spline is "3".</documentation>
					</annotation>
				</attribute>
			</extension>
		</complexContent>
	</complexType>
	<!-- =========================================================== -->
	<complexType name="KnotType">
		<annotation>
			<documentation>A knot is a breakpoint on a piecewise spline curve.</documentation>
		</annotation>
		<sequence>
			<element name="value" type="double">
				<annotation>
					<documentation>The property "value" is the value of the parameter at the knot of the spline. The sequence of knots shall be a non-decreasing sequence. That is, each knot's value in the sequence shall be equal to or greater than the previous knot's value. The use of equal consecutive knots is normally handled using the multiplicity.</documentation>
				</annotation>
			</element>
			<element name="multiplicity" type="nonNegativeInteger">
				<annotation>
					<documentation>The property "multiplicity" is the multiplicity of this knot used in the definition of the spline (with the same weight).</documentation>
				</annotation>
			</element>
			<element name="weight" type="double">
				<annotation>
					<documentation>The property "weight" is the value of the averaging weight used for this knot of the spline.</documentation>
				</annotation>
			</element>
		</sequence>
	</complexType>
	<!-- =========================================================== -->
	<complexType name="KnotPropertyType">
		<annotation>
			<documentation>Encapsulates a knot to use it in a geometric type.</documentation>
		</annotation>
		<sequence>
			<element name="Knot" type="gml:KnotType"/>
		</sequence>
	</complexType>
	<!-- =========== global element in "_CurveSegment" substitution group ================ -->
	<element name="BSpline" type="gml:BSplineType" substitutionGroup="gml:_CurveSegment"/>
	<!-- =========================================================== -->
	<complexType name="BSplineType">
		<annotation>
			<documentation>A B-Spline is a piecewise parametric polynomial or rational curve described in terms of control points and basis functions. Knots are breakpoints on the curve that connect its pieces. They are given as a non-decreasing sequence of real numbers. If the weights in the knots are equal then it is a polynomial spline. The degree is the algebraic degree of the basis functions.</documentation>
		</annotation>
		<complexContent>
			<extension base="gml:AbstractCurveSegmentType">
				<sequence>
					<choice>
						<annotation>
							<documentation>GML supports two different ways to specify the control points of a curve segment.
1. A sequence of "pos" (DirectPositionType) or "pointProperty" (PointPropertyType) elements. "pos" elements are control points that are only part of this curve segment, "pointProperty" elements contain a point that may be referenced from other geometry elements or reference another point defined outside of this curve segment (reuse of existing points).
2. The "posList" element allows for a compact way to specifiy the coordinates of the control points, if all control points are in the same coordinate reference systems and belong to this curve segment only.</documentation>
						</annotation>
						<choice minOccurs="0" maxOccurs="unbounded">
							<element ref="gml:pos"/>
							<element ref="gml:pointProperty"/>
							<element ref="gml:pointRep">
								<annotation>
									<documentation>Deprecated with GML version 3.1.0. Use "pointProperty" instead. Included for backwards compatibility with GML 3.0.0.</documentation>
								</annotation>
							</element>
						</choice>
						<element ref="gml:posList"/>
						<element ref="gml:coordinates">
							<annotation>
								<documentation>Deprecated with GML version 3.1.0. Use "posList" instead.</documentation>
							</annotation>
						</element>
					</choice>
					<element name="degree" type="nonNegativeInteger">
						<annotation>
							<documentation>The attribute "degree" shall be the degree of the polynomial used for interpolation in this spline.</documentation>
						</annotation>
					</element>
					<element name="knot" type="gml:KnotPropertyType" minOccurs="2" maxOccurs="unbounded">
						<annotation>
							<documentation>The property "knot" shall be the sequence of distinct knots used to define the spline basis functions.</documentation>
						</annotation>
					</element>
				</sequence>
				<attribute name="interpolation" type="gml:CurveInterpolationType" default="polynomialSpline">
					<annotation>
						<documentation>The attribute "interpolation" specifies the curve interpolation mechanism used for this segment. This mechanism
uses the control points and control parameters to determine the position of this curve segment. For a BSpline the interpolation can be either "polynomialSpline" or "rationalSpline", default is "polynomialSpline".</documentation>
					</annotation>
				</attribute>
				<attribute name="isPolynomial" type="boolean" use="optional">
					<annotation>
						<documentation>The attribute isPolynomial is set to true if this is a polynomial spline.</documentation>
					</annotation>
				</attribute>
				<attribute name="knotType" type="gml:KnotTypesType" use="optional">
					<annotation>
						<documentation>The attribute "knotType" gives the type of knot distribution used in defining this spline. This is for information only
and is set according to the different construction-functions.</documentation>
					</annotation>
				</attribute>
			</extension>
		</complexContent>
	</complexType>
	<!-- =========== global element in "_CurveSegment" substitution group ================ -->
	<element name="Bezier" type="gml:BezierType" substitutionGroup="gml:BSpline"/>
	<!-- =========================================================== -->
	<complexType name="BezierType">
		<annotation>
			<documentation>Bezier curves are polynomial splines that use Bezier or Bernstein polynomials for interpolation purposes. It is a special case of the B-Spline curve with two knots.</documentation>
		</annotation>
		<complexContent>
			<restriction base="gml:BSplineType">
				<sequence>
					<choice>
						<annotation>
							<documentation>GML supports two different ways to specify the control points of a curve segment.
1. A sequence of "pos" (DirectPositionType) or "pointProperty" (PointPropertyType) elements. "pos" elements are control points that are only part of this curve segment, "pointProperty" elements contain a point that may be referenced from other geometry elements or reference another point defined outside of this curve segment (reuse of existing points).
2. The "posList" element allows for a compact way to specifiy the coordinates of the control points, if all control points are in the same coordinate reference systems and belong to this curve segment only.</documentation>
						</annotation>
						<choice minOccurs="0" maxOccurs="unbounded">
							<element ref="gml:pos"/>
							<element ref="gml:pointProperty"/>
							<element ref="gml:pointRep">
								<annotation>
									<documentation>Deprecated with GML version 3.1.0. Use "pointProperty" instead. Included for backwards compatibility with GML 3.0.0.</documentation>
								</annotation>
							</element>
						</choice>
						<element ref="gml:posList"/>
						<element ref="gml:coordinates">
							<annotation>
								<documentation>Deprecated with GML version 3.1.0. Use "posList" instead.</documentation>
							</annotation>
						</element>
					</choice>
					<element name="degree" type="nonNegativeInteger">
						<annotation>
							<documentation>The attribute "degree" shall be the degree of the polynomial used for interpolation in this spline.</documentation>
						</annotation>
					</element>
					<element name="knot" type="gml:KnotPropertyType" minOccurs="2" maxOccurs="2">
						<annotation>
							<documentation>The property "knot" shall be the sequence of distinct knots used to define the spline basis functions.</documentation>
						</annotation>
					</element>
				</sequence>
				<attribute name="interpolation" type="gml:CurveInterpolationType" fixed="polynomialSpline">
					<annotation>
						<documentation>The attribute "interpolation" specifies the curve interpolation mechanism used for this segment. This mechanism
uses the control points and control parameters to determine the position of this curve segment. For a Bezier the interpolation is fixed as "polynomialSpline".</documentation>
					</annotation>
				</attribute>
				<attribute name="isPolynomial" type="boolean" fixed="true">
					<annotation>
						<documentation>The attribute isPolynomial is set to true as this is a polynomial spline.</documentation>
					</annotation>
				</attribute>
				<attribute name="knotType" type="gml:KnotTypesType" use="prohibited">
					<annotation>
						<documentation>The property "knotType" is not relevant for Bezier curve segments.</documentation>
					</annotation>
				</attribute>
			</restriction>
		</complexContent>
	</complexType>
	<!-- =========================================================== -->
	<element name="Surface" type="gml:SurfaceType" substitutionGroup="gml:_Surface"/>
	<!-- =========================================================== -->
	<complexType name="SurfaceType">
		<annotation>
			<documentation>A Surface is a 2-dimensional primitive and is composed of one or more surface patches. The surface patches are connected to one another.
				The orientation of the surface is positive ("up"). The orientation of a surface chooses an "up" direction through the choice of the upward normal, which, if the surface is not a cycle, is the side of the surface from which the exterior boundary appears counterclockwise. Reversal of the surface orientation reverses the curve orientation of each boundary component, and interchanges the conceptual "up" and "down" direction of the surface. If the surface is the boundary of a solid, the "up" direction is usually outward. For closed surfaces, which have no boundary, the up direction is that of the surface patches, which must be consistent with one another. Its included surface patches describe the interior structure of the Surface.</documentation>
		</annotation>
		<complexContent>
			<extension base="gml:AbstractSurfaceType">
				<sequence>
					<element ref="gml:patches">
						<annotation>
							<documentation>This element encapsulates the patches of the surface.</documentation>
						</annotation>
					</element>
				</sequence>
			</extension>
		</complexContent>
	</complexType>
	<!-- =========================================================== -->
	<element name="baseSurface" type="gml:SurfacePropertyType">
		<annotation>
			<appinfo>
				<sch:pattern name="Check either href or content not both">
					<sch:rule context="gml:baseSurface">
						<sch:extends rule="hrefOrContent"/>
					</sch:rule>
				</sch:pattern>
			</appinfo>
			<documentation>This property element either references a surface via the XLink-attributes or contains the surface element. A surface element is any element which is substitutable for "_Surface".</documentation>
		</annotation>
	</element>
	<!-- =========================================================== -->
	<element name="OrientableSurface" type="gml:OrientableSurfaceType" substitutionGroup="gml:_Surface"/>
	<!-- =========================================================== -->
	<complexType name="OrientableSurfaceType">
		<annotation>
			<documentation>OrientableSurface consists of a surface and an orientation. If the orientation is "+", then the OrientableSurface is identical to the baseSurface. If the orientation is "-", then the OrientableSurface is a reference to a Surface with an up-normal that reverses the direction for this OrientableSurface, the sense of "the top of the surface".</documentation>
		</annotation>
		<complexContent>
			<extension base="gml:AbstractSurfaceType">
				<sequence>
					<element ref="gml:baseSurface">
						<annotation>
							<documentation>References or contains the base surface (positive orientation).</documentation>
						</annotation>
					</element>
				</sequence>
				<attribute name="orientation" type="gml:SignType" default="+">
					<annotation>
						<documentation>If the orientation is "+", then the OrientableSurface is identical to the baseSurface. If the orientation is "-", then the OrientableSurface is a reference to a Surface with an up-normal that reverses the direction for this OrientableSurface, the sense of "the top of the surface". "+" is the default value.</documentation>
					</annotation>
				</attribute>
			</extension>
		</complexContent>
	</complexType>
	<!-- =========================================================== -->
	<!-- surface patches (2-dimensional) -->
	<!-- =========================================================== -->
	<!-- =========================================================== -->
	<element name="_SurfacePatch" type="gml:AbstractSurfacePatchType" abstract="true">
		<annotation>
			<documentation>The "_SurfacePatch" element is the abstract head of the substituition group for all surface pach elements describing a continuous portion of a surface.</documentation>
		</annotation>
	</element>
	<!-- =========================================================== -->
	<complexType name="AbstractSurfacePatchType" abstract="true">
		<annotation>
			<documentation>A surface patch defines a homogenuous portion of a surface.</documentation>
		</annotation>
		<sequence/>
	</complexType>
	<!-- =========================================================== -->
	<element name="patches" type="gml:SurfacePatchArrayPropertyType">
		<annotation>
			<documentation>This property element contains a list of surface patches. The order of the elements is significant and shall be preserved when processing the array.</documentation>
		</annotation>
	</element>
	<!-- =========================================================== -->
	<complexType name="SurfacePatchArrayPropertyType">
		<annotation>
			<documentation>A container for an array of surface patches.</documentation>
		</annotation>
		<sequence minOccurs="0" maxOccurs="unbounded">
			<element ref="gml:_SurfacePatch"/>
		</sequence>
	</complexType>
	<!-- =========================================================== -->
	<element name="PolygonPatch" type="gml:PolygonPatchType" substitutionGroup="gml:_SurfacePatch"/>
	<!-- =========================================================== -->
	<complexType name="PolygonPatchType">
		<annotation>
			<documentation>A PolygonPatch is a surface patch that is defined by a set of boundary curves and an underlying surface to which these curves adhere. The curves are coplanar and the polygon uses planar interpolation in its interior. Implements GM_Polygon of ISO 19107.</documentation>
		</annotation>
		<complexContent>
			<extension base="gml:AbstractSurfacePatchType">
				<sequence>
					<element ref="gml:exterior" minOccurs="0"/>
					<element ref="gml:interior" minOccurs="0" maxOccurs="unbounded"/>
				</sequence>
				<attribute name="interpolation" type="gml:SurfaceInterpolationType" fixed="planar">
					<annotation>
						<documentation>The attribute "interpolation" specifies the interpolation mechanism used for this surface patch. Currently only planar surface patches are defined in GML 3, the attribute is fixed to "planar", i.e. the interpolation method shall return points on a single plane. The boundary of the patch shall be contained within that plane.</documentation>
					</annotation>
				</attribute>
			</extension>
		</complexContent>
	</complexType>
	<!-- =========================================================== -->
	<element name="Triangle" type="gml:TriangleType" substitutionGroup="gml:_SurfacePatch"/>
	<!-- =========================================================== -->
	<complexType name="TriangleType">
		<annotation>
			<documentation>Represents a triangle as a surface with an outer boundary consisting of a linear ring. Note that this is a polygon (subtype) with no inner boundaries. The number of points in the linear ring must be four.</documentation>
		</annotation>
		<complexContent>
			<extension base="gml:AbstractSurfacePatchType">
				<sequence>
					<element ref="gml:exterior">
						<annotation>
							<documentation>Constraint: The Ring shall be a LinearRing and must form a triangle, the first and the last position must be co-incident.</documentation>
						</annotation>
					</element>
				</sequence>
				<attribute name="interpolation" type="gml:SurfaceInterpolationType" fixed="planar">
					<annotation>
						<documentation>The attribute "interpolation" specifies the interpolation mechanism used for this surface patch. Currently only planar surface patches are defined in GML 3, the attribute is fixed to "planar", i.e. the interpolation method shall return points on a single plane. The boundary of the patch shall be contained within that plane.</documentation>
					</annotation>
				</attribute>
			</extension>
		</complexContent>
	</complexType>
	<!-- =========================================================== -->
	<element name="Rectangle" type="gml:RectangleType" substitutionGroup="gml:_SurfacePatch"/>
	<!-- =========================================================== -->
	<complexType name="RectangleType">
		<annotation>
			<documentation>Represents a rectangle as a surface with an outer boundary consisting of a linear ring. Note that this is a polygon (subtype) with no inner boundaries. The number of points in the linear ring must be five.</documentation>
		</annotation>
		<complexContent>
			<extension base="gml:AbstractSurfacePatchType">
				<sequence>
					<element ref="gml:exterior">
						<annotation>
							<documentation>Constraint: The Ring shall be a LinearRing and must form a rectangle; the first and the last position must be co-incident.</documentation>
						</annotation>
					</element>
				</sequence>
				<attribute name="interpolation" type="gml:SurfaceInterpolationType" fixed="planar">
					<annotation>
						<documentation>The attribute "interpolation" specifies the interpolation mechanism used for this surface patch. Currently only planar surface patches are defined in GML 3, the attribute is fixed to "planar", i.e. the interpolation method shall return points on a single plane. The boundary of the patch shall be contained within that plane.</documentation>
					</annotation>
				</attribute>
			</extension>
		</complexContent>
	</complexType>
	<!-- =========================================================== -->
	<element name="curveMember" type="gml:CurvePropertyType">
		<annotation>
			<documentation>This property element either references a curve via the XLink-attributes or contains the curve element. A curve element is any element which is substitutable for "_Curve".</documentation>
		</annotation>
	</element>
	<!-- =========================================================== -->
	<element name="Ring" type="gml:RingType" substitutionGroup="gml:_Ring"/>
	<!-- =========================================================== -->
	<complexType name="RingType">
		<annotation>
			<documentation>A Ring is used to represent a single connected component of a surface boundary. It consists of a sequence of curves connected in a cycle (an object whose boundary is empty).
A Ring is structurally similar to a composite curve in that the endPoint of each curve in the sequence is the startPoint of the next curve in the Sequence. Since the sequence is circular, there is no exception to this rule. Each ring, like all boundaries, is a cycle and each ring is simple.
NOTE: Even though each Ring is simple, the boundary need not be simple. The easiest case of this is where one of the interior rings of a surface is tangent to its exterior ring.</documentation>
		</annotation>
		<complexContent>
			<extension base="gml:AbstractRingType">
				<sequence>
					<element ref="gml:curveMember" maxOccurs="unbounded">
						<annotation>
							<documentation>This element references or contains one curve in the composite curve. The curves are contiguous, the collection of curves is ordered.
NOTE: This definition allows for a nested structure, i.e. a CompositeCurve may use, for example, another CompositeCurve as a curve member.</documentation>
						</annotation>
					</element>
				</sequence>
			</extension>
		</complexContent>
	</complexType>
	<!-- =========================================================== -->
	<complexType name="RingPropertyType">
		<annotation>
			<documentation>Encapsulates a ring to represent properties in features or geometry collections.</documentation>
		</annotation>
		<sequence>
			<element ref="gml:Ring"/>
		</sequence>
	</complexType>
	<!-- =========================================================== -->
	<group name="PointGrid">
		<annotation>
			<documentation>Reference points which are organised
   into sequences or grids(sequences of equal length sequences).</documentation>
		</annotation>
		<sequence>
			<element name="row" maxOccurs="unbounded">
				<complexType>
					<sequence>
						<group ref="gml:geometricPositionListGroup"/>
					</sequence>
				</complexType>
			</element>
		</sequence>
	</group>
	<!-- ====================================================== -->
	<element name="_ParametricCurveSurface" type="gml:AbstractParametricCurveSurfaceType" abstract="true" substitutionGroup="gml:_SurfacePatch"/>
	<!-- ====================================================== -->
	<complexType name="AbstractParametricCurveSurfaceType">
		<annotation>
			<documentation>
			</documentation>
		</annotation>
		<complexContent>
			<extension base="gml:AbstractSurfacePatchType"/>
		</complexContent>
	</complexType>
	<!-- ======================================================== -->
	<element name="_GriddedSurface" type="gml:AbstractGriddedSurfaceType" abstract="true" substitutionGroup="gml:_ParametricCurveSurface"/>
	<!-- ======================================================== -->
	<complexType name="AbstractGriddedSurfaceType">
		<annotation>
			<documentation>A gridded surface is a parametric curve
   surface derived from a rectangular grid in the parameter
   space. The rows from this grid are control points for
   horizontal surface curves; the columns are control points
   for vertical surface curves. The working assumption is that
   for a pair of parametric co-ordinates (s, t) that the
   horizontal curves for each integer offset are calculated
   and evaluated at "s". The defines a sequence of control
   points:
   
   cn(s) : s  1 .....columns 

   From this sequence a vertical curve is calculated for "s",
   and evaluated at "t". In most cases, the order of
   calculation (horizontal-vertical vs. vertical-horizontal)
   does not make a difference. Where it does, the horizontal-   
   vertical order shall be the one used.

   Logically, any pair of curve interpolation types can lead
   to a subtype of GriddedSurface. The following clauses
   define some most commonly encountered surfaces that can
   be represented in this manner.</documentation>
		</annotation>
		<complexContent>
			<extension base="gml:AbstractParametricCurveSurfaceType">
				<sequence>
					<group ref="gml:PointGrid">
						<annotation>
							<documentation>This is the double indexed sequence
       of control points, given in row major form. 
       NOTE! There in no assumption made about the shape
       of the grid. 
       For example, the positions need not effect a "21/2D"
       surface, consecutive points may be equal in any or all
       of the ordinates. Further, the curves in either or both
       directions may close.</documentation>
						</annotation>
					</group>
					<element name="rows" type="integer" minOccurs="0">
						<annotation>
							<documentation>The attribute rows gives the number
         of rows in the parameter grid.</documentation>
						</annotation>
					</element>
					<element name="columns" type="integer" minOccurs="0">
						<annotation>
							<documentation>The attribute columns gives the number
        of columns in the parameter grid.</documentation>
						</annotation>
					</element>
				</sequence>
			</extension>
		</complexContent>
	</complexType>
	<!-- ======================================================== -->
	<element name="Cone" type="gml:ConeType" substitutionGroup="gml:_GriddedSurface"/>
	<!-- ======================================================== -->
	<complexType name="ConeType">
		<annotation>
			<documentation>A cone is a gridded surface given as a
   family of conic sections whose control points vary linearly.
   NOTE! A 5-point ellipse with all defining positions identical
   is a point. Thus, a truncated elliptical cone can be given as a
   2x5 set of control points
   ((P1, P1, P1, P1, P1), (P2, P3, P4, P5, P6)). P1 is the apex 
   of the cone. P2, P3,P4, P5 and P6 are any five distinct points
   around the base ellipse of the cone. If the horizontal curves
   are circles as opposed to ellipses, the a circular cone can
   be constructed using ((P1, P1, P1),(P2, P3, P4)). The apex most     
   not coinside with the other plane.</documentation>
		</annotation>
		<complexContent>
			<extension base="gml:AbstractGriddedSurfaceType">
				<attribute name="horizontalCurveType" type="gml:CurveInterpolationType" fixed="circularArc3Points"/>
				<attribute name="verticalCurveType" type="gml:CurveInterpolationType" fixed="linear"/>
			</extension>
		</complexContent>
	</complexType>
	<!-- ======================================================== -->
	<element name="Cylinder" type="gml:CylinderType" substitutionGroup="gml:_GriddedSurface"/>
	<!-- ======================================================== -->
	<complexType name="CylinderType">
		<annotation>
			<documentation>A cylinder is a gridded surface given as a
   family of circles whose positions vary along a set of parallel
   lines, keeping the cross sectional horizontal curves of a
   constant shape.
   NOTE! Given the same working assumptions as in the previous
   note, a Cylinder can be given by two circles, giving us the
   control points of the form ((P1, P2, P3),(P4, P5, P6)).</documentation>
		</annotation>
		<complexContent>
			<extension base="gml:AbstractGriddedSurfaceType">
				<attribute name="horizontalCurveType" type="gml:CurveInterpolationType" fixed="circularArc3Points"/>
				<attribute name="verticalCurveType" type="gml:CurveInterpolationType" fixed="linear"/>
			</extension>
		</complexContent>
	</complexType>
	<!-- ======================================================== -->
	<element name="Sphere" type="gml:SphereType" substitutionGroup="gml:_GriddedSurface"/>
	<!-- ======================================================== -->
	<complexType name="SphereType">
		<annotation>
			<documentation>A sphere is a gridded surface given as a
   family of circles whose positions vary linearly along the
   axis of the sphere, and whise radius varies in proportions to
   the cosine function of the central angle. The horizontal 
   circles resemble lines of constant latitude, and the vertical
   arcs resemble lines of constant longitude. 
   NOTE! If the control points are sorted in terms of increasing
   longitude, and increasing latitude, the upNormal of a sphere
   is the outward normal.
   EXAMPLE If we take a gridded set of latitudes and longitudes
   in degrees,(u,v) such as

	(-90,-180)  (-90,-90)  (-90,0)  (-90,  90) (-90, 180) 
	(-45,-180)  (-45,-90)  (-45,0)  (-45,  90) (-45, 180) 
	(  0,-180)  (  0,-90)  (  0,0)  (  0,  90) (  0, 180)
	( 45,-180)  ( 45,-90)  ( 45,0)  ( 45, -90) ( 45, 180)
	( 90,-180)  ( 90,-90)  ( 90,0)  ( 90, -90) ( 90, 180)
   
   And map these points to 3D using the usual equations (where R
   is the radius of the required sphere).

    z = R sin u
    x = (R cos u)(sin v)
    y = (R cos u)(cos v)

   We have a sphere of Radius R, centred at (0,0), as a gridded
   surface. Notice that the entire first row and the entire last
   row of the control points map to a single point in each 3D
   Euclidean space, North and South poles respectively, and that
   each horizontal curve closes back on itself forming a 
   geometric cycle. This gives us a metrically bounded (of finite
   size), topologically unbounded (not having a boundary, a
   cycle) surface.</documentation>
		</annotation>
		<complexContent>
			<extension base="gml:AbstractGriddedSurfaceType">
				<attribute name="horizontalCurveType" type="gml:CurveInterpolationType" fixed="circularArc3Points"/>
				<attribute name="verticalCurveType" type="gml:CurveInterpolationType" fixed="circularArc3Points"/>
			</extension>
		</complexContent>
	</complexType>
	<!-- ======================================================== -->
	<element name="PolyhedralSurface" type="gml:PolyhedralSurfaceType" substitutionGroup="gml:Surface"/>
	<!-- ======================================================== -->
	<complexType name="PolyhedralSurfaceType">
		<annotation>
			<documentation>A polyhedral surface is a surface composed
   of polygon surfaces connected along their common boundary 
   curves. This differs from the surface type only in the
   restriction on the types of surface patches acceptable.</documentation>
		</annotation>
		<complexContent>
			<restriction base="gml:SurfaceType">
				<sequence>
					<group ref="gml:StandardObjectProperties"/>
					<element ref="gml:polygonPatches">
						<annotation>
							<documentation>This property encapsulates the patches of 
      the polyhedral surface.</documentation>
						</annotation>
					</element>
				</sequence>
			</restriction>
		</complexContent>
	</complexType>
	<!-- ======================================================== -->
	<element name="polygonPatches" type="gml:PolygonPatchArrayPropertyType" substitutionGroup="gml:patches">
		<annotation>
			<documentation>This property element contains a list of
   polygon patches. The order of the patches is significant and 
   shall be preserved when processing the list.</documentation>
		</annotation>
	</element>
	<!-- ======================================================== -->
	<complexType name="PolygonPatchArrayPropertyType">
		<annotation>
			<documentation>This type defines a container for an array of 
   polygon patches.</documentation>
		</annotation>
		<complexContent>
			<restriction base="gml:SurfacePatchArrayPropertyType">
				<sequence minOccurs="0" maxOccurs="unbounded">
					<element ref="gml:PolygonPatch"/>
				</sequence>
			</restriction>
		</complexContent>
	</complexType>
	<!-- ======================================================== -->
	<element name="trianglePatches" type="gml:TrianglePatchArrayPropertyType" substitutionGroup="gml:patches">
		<annotation>
			<documentation>This property element contains a list of
   triangle patches. The order of the patches is significant and 
   shall be preserved when processing the list.</documentation>
		</annotation>
	</element>
	<!-- ======================================================== -->
	<complexType name="TrianglePatchArrayPropertyType">
		<annotation>
			<documentation>This type defines a container for an array of 
     triangle patches.</documentation>
		</annotation>
		<complexContent>
			<restriction base="gml:SurfacePatchArrayPropertyType">
				<sequence minOccurs="0" maxOccurs="unbounded">
					<element ref="gml:Triangle"/>
				</sequence>
			</restriction>
		</complexContent>
	</complexType>
	<!-- ======================================================== -->
	<element name="TriangulatedSurface" type="gml:TriangulatedSurfaceType" substitutionGroup="gml:Surface"/>
	<!-- ======================================================== -->
	<complexType name="TriangulatedSurfaceType">
		<annotation>
			<documentation>A triangulated surface is a polyhedral 
   surface that is composed only of triangles. There is no
   restriction on how the triangulation is derived.</documentation>
		</annotation>
		<complexContent>
			<restriction base="gml:SurfaceType">
				<sequence>
					<group ref="gml:StandardObjectProperties"/>
					<element ref="gml:trianglePatches">
						<annotation>
							<documentation>This property encapsulates the patches of 
      the triangulated surface.</documentation>
						</annotation>
					</element>
				</sequence>
			</restriction>
		</complexContent>
	</complexType>
	<!-- ======================================================== -->
	<element name="Tin" type="gml:TinType" substitutionGroup="gml:TriangulatedSurface"/>
	<!-- ======================================================== -->
	<complexType name="TinType">
		<annotation>
			<documentation>A tin is a triangulated surface that uses
   the Delauny algorithm or a similar algorithm complemented with
   consideration of breaklines, stoplines, and maximum length of 
   triangle sides. These networks satisfy the Delauny's criterion
   away from the modifications: Fore each triangle in the 
   network, the circle passing through its vertices does not
   contain, in its interior, the vertex of any other triangle.</documentation>
		</annotation>
		<complexContent>
			<extension base="gml:TriangulatedSurfaceType">
				<sequence>
					<element name="stopLines" type="gml:LineStringSegmentArrayPropertyType" minOccurs="0" maxOccurs="unbounded">
						<annotation>
							<documentation>Stoplines are lines where the local
       continuity or regularity of the surface is questionable.
       In the area of these pathologies, triangles intersecting
       a stopline shall be removed from the tin surface, leaving
       holes in the surface. If coincidence occurs on surface
       boundary triangles, the result shall be a change of the 
       surface boundary. Stoplines contains all these
       pathological segments as a set of line strings.</documentation>
						</annotation>
					</element>
					<element name="breakLines" type="gml:LineStringSegmentArrayPropertyType" minOccurs="0" maxOccurs="unbounded">
						<annotation>
							<documentation>Breaklines are lines of a critical
       nature to the shape of the surface, representing local
       ridges, or depressions (such as drainage lines) in the
       surface. As such their constituent segments must be
       included in the tin eve if doing so
       violates the Delauny criterion. Break lines contains these
       critical segments as a set of line strings.</documentation>
						</annotation>
					</element>
					<element name="maxLength" type="gml:LengthType">
						<annotation>
							<documentation>Areas of the surface where data is not 
       sufficiently dense to assure reasonable calculation shall be    
       removed by adding a retention criterion for triangles based 
       on the length of their sides. For many triangle sides  
       exceeding maximum length, the adjacent triangles to that 
       triangle side shall be removed from the surface.</documentation>
						</annotation>
					</element>
					<element name="controlPoint">
						<annotation>
							<documentation>The corners of the triangles in the TIN 
  are often referred to as pots. ControlPoint shall contain a 
  set of the GM_Position used as posts for this TIN. Since each  
  TIN contains triangles, there must be at least 3 posts. The 
       order in which these points are given does not affect the 
       surface that is represented. Application schemas may add 
       information based on ordering of control points to facilitate 
       the reconstruction of the TIN from the control points.</documentation>
						</annotation>
						<complexType>
							<choice>
								<element ref="gml:posList"/>
								<group ref="gml:geometricPositionGroup" minOccurs="3" maxOccurs="unbounded"/>
							</choice>
						</complexType>
					</element>
				</sequence>
			</extension>
		</complexContent>
	</complexType>
	<complexType name="LineStringSegmentArrayPropertyType">
		<sequence>
			<element ref="gml:LineStringSegment" minOccurs="0" maxOccurs="unbounded"/>
		</sequence>
	</complexType>
	<!-- =========================================================== -->
	<!-- primitive geometry objects (3-dimensional) -->
	<!-- =========================================================== -->
	<!-- =========================================================== -->
	<element name="_Solid" type="gml:AbstractSolidType" abstract="true" substitutionGroup="gml:_GeometricPrimitive">
		<annotation>
			<documentation>The "_Solid" element is the abstract head of the substituition group for all (continuous) solid elements.</documentation>
		</annotation>
	</element>
	<!-- =========================================================== -->
	<complexType name="AbstractSolidType">
		<annotation>
			<documentation>An abstraction of a solid to support the different levels of complexity. A solid is always contiguous.</documentation>
		</annotation>
		<complexContent>
			<extension base="gml:AbstractGeometricPrimitiveType"/>
		</complexContent>
	</complexType>
	<!-- =========================================================== -->
	<element name="solidProperty" type="gml:SolidPropertyType">
		<annotation>
			<appinfo>
				<sch:pattern name="Check either href or content not both">
					<sch:rule context="gml:solidProperty">
						<sch:extends rule="hrefOrContent"/>
					</sch:rule>
				</sch:pattern>
			</appinfo>
			<documentation>This property element either references a solid via the XLink-attributes or contains the solid element. solidProperty is the predefined property which can be used by GML Application Schemas whenever a GML Feature has a property with a value that is substitutable for _Solid.</documentation>
		</annotation>
	</element>
	<!-- =========================================================== -->
	<complexType name="SolidPropertyType">
		<annotation>
			<documentation>A property that has a solid as its value domain can either be an appropriate geometry element encapsulated in an element of this type or an XLink reference to a remote geometry element (where remote includes geometry elements located elsewhere in the same document). Either the reference or the contained element must be given, but neither both nor none.</documentation>
		</annotation>
		<sequence minOccurs="0">
			<element ref="gml:_Solid"/>
		</sequence>
		<attributeGroup ref="gml:AssociationAttributeGroup">
			<annotation>
				<documentation>This attribute group includes the XLink attributes (see xlinks.xsd). XLink is used in GML to reference remote resources (including those elsewhere in the same document). A simple link element can be constructed by including a specific set of XLink attributes. The XML Linking Language (XLink) is currently a Proposed Recommendation of the World Wide Web Consortium. XLink allows elements to be inserted into XML documents so as to create sophisticated links between resources; such links can be used to reference remote properties.
A simple link element can be used to implement pointer functionality, and this functionality has been built into various GML 3 elements by including the gml:AssociationAttributeGroup.</documentation>
			</annotation>
		</attributeGroup>
	</complexType>
	<!-- =========================================================== -->
	<element name="solidArrayProperty" type="gml:SolidArrayPropertyType"/>
	<!-- =========================================================== -->
	<complexType name="SolidArrayPropertyType">
		<annotation>
			<documentation>A container for an array of solids. The elements are always contained in the array property, referencing geometry elements or arrays of geometry elements is not supported.</documentation>
		</annotation>
		<sequence minOccurs="0" maxOccurs="unbounded">
			<element ref="gml:_Solid"/>
		</sequence>
	</complexType>
	<!-- =========================================================== -->
	<element name="Solid" type="gml:SolidType" substitutionGroup="gml:_Solid"/>
	<!-- =========================================================== -->
	<complexType name="SolidType">
		<annotation>
			<documentation>A solid is the basis for 3-dimensional geometry. The extent of a solid is defined by the boundary surfaces (shells). A shell is represented by a composite surface, where every  shell is used to represent a single connected component of the boundary of a solid. It consists of a composite surface (a list of orientable surfaces) connected in a topological cycle (an object whose boundary is empty). Unlike a Ring, a Shell's elements have no natural sort order. Like Rings, Shells are simple.</documentation>
		</annotation>
		<complexContent>
			<extension base="gml:AbstractSolidType">
				<sequence>
					<element name="exterior" type="gml:SurfacePropertyType" minOccurs="0">
						<annotation>
							<appinfo>
								<sch:pattern name="Check either href or content not both">
									<sch:rule context="gml:exterior">
										<sch:extends rule="hrefOrContent"/>
									</sch:rule>
								</sch:pattern>
							</appinfo>
							<documentation>Boundaries of solids are similar to surface boundaries. In normal 3-dimensional Euclidean space, one (composite) surface is distinguished as the exterior. In the more general case, this is not always possible.</documentation>
						</annotation>
					</element>
					<element name="interior" type="gml:SurfacePropertyType" minOccurs="0" maxOccurs="unbounded">
						<annotation>
							<appinfo>
								<sch:pattern name="Check either href or content not both">
									<sch:rule context="gml:interior">
										<sch:extends rule="hrefOrContent"/>
									</sch:rule>
								</sch:pattern>
							</appinfo>
							<documentation>Boundaries of solids are similar to surface boundaries.</documentation>
						</annotation>
					</element>
				</sequence>
			</extension>
		</complexContent>
	</complexType>
	<!-- =========================================================== -->
	<!-- predefined simple types (enumerations, simple typed arrays) -->
	<!-- =========================================================== -->
	<simpleType name="CurveInterpolationType">
		<annotation>
			<documentation>CurveInterpolationType is a list of codes that may be used to identify the interpolation mechanisms specified by an
application schema.</documentation>
		</annotation>
		<restriction base="string">
			<enumeration value="linear"/>
			<enumeration value="geodesic"/>
			<enumeration value="circularArc3Points"/>
			<enumeration value="circularArc2PointWithBulge"/>
			<enumeration value="circularArcCenterPointWithRadius"/>
			<enumeration value="elliptical"/>
			<enumeration value="clothoid"/>
			<enumeration value="conic"/>
			<enumeration value="polynomialSpline"/>
			<enumeration value="cubicSpline"/>
			<enumeration value="rationalSpline"/>
		</restriction>
	</simpleType>
	<!-- =========================================================== -->
	<simpleType name="SurfaceInterpolationType">
		<annotation>
			<documentation>SurfaceInterpolationType is a list of codes that may be used to identify the interpolation mechanisms specified by an
application schema.</documentation>
		</annotation>
		<restriction base="string">
			<enumeration value="none"/>
			<enumeration value="planar"/>
			<enumeration value="spherical"/>
			<enumeration value="elliptical"/>
			<enumeration value="conic"/>
			<enumeration value="tin"/>
			<enumeration value="parametricCurve"/>
			<enumeration value="polynomialSpline"/>
			<enumeration value="rationalSpline"/>
			<enumeration value="triangulatedSpline"/>
		</restriction>
	</simpleType>
	<!-- =========================================================== -->
	<simpleType name="KnotTypesType">
		<annotation>
			<documentation>Defines allowed values for the knots` type. Uniform knots implies that all knots are of multiplicity 1 and they differ by a positive constant from the preceding knot. Knots are quasi-uniform iff they are of multiplicity (degree + 1) at the ends, of multiplicity 1 elsewhere, and they differ by a positive constant from the preceding knot.</documentation>
		</annotation>
		<restriction base="string">
			<enumeration value="uniform"/>
			<enumeration value="quasiUniform"/>
			<enumeration value="piecewiseBezier"/>
		</restriction>
	</simpleType>
	<!-- =========================================================== -->
</schema>
