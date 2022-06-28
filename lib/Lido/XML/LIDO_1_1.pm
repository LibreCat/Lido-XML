package Lido::XML::LIDO_1_1;

our $VERSION = '0.08';

use Moo;
use Lido::XML::LIDO_1_1::basicTypes;
use Lido::XML::LIDO_1_1::coordinateOperations;
use Lido::XML::LIDO_1_1::coordinateReferenceSystems;
use Lido::XML::LIDO_1_1::coordinateSystems;
use Lido::XML::LIDO_1_1::coverage;
use Lido::XML::LIDO_1_1::dataQuality;
use Lido::XML::LIDO_1_1::datums;
use Lido::XML::LIDO_1_1::defaultStyle;
use Lido::XML::LIDO_1_1::direction;
use Lido::XML::LIDO_1_1::dynamicFeature;
use Lido::XML::LIDO_1_1::feature;
use Lido::XML::LIDO_1_1::geometryAggregates;
use Lido::XML::LIDO_1_1::geometryBasic0d1d;
use Lido::XML::LIDO_1_1::geometryBasic2d;
use Lido::XML::LIDO_1_1::geometryComplexes;
use Lido::XML::LIDO_1_1::geometryPrimitives;
use Lido::XML::LIDO_1_1::gml;
use Lido::XML::LIDO_1_1::gmlBase;
use Lido::XML::LIDO_1_1::grids;
use Lido::XML::LIDO_1_1::lido_v1;
use Lido::XML::LIDO_1_1::measures;
use Lido::XML::LIDO_1_1::observation;
use Lido::XML::LIDO_1_1::referenceSystems;
use Lido::XML::LIDO_1_1::temporal;
use Lido::XML::LIDO_1_1::temporalReferenceSystems;
use Lido::XML::LIDO_1_1::temporalTopology;
use Lido::XML::LIDO_1_1::topology;
use Lido::XML::LIDO_1_1::units;
use Lido::XML::LIDO_1_1::valueObjects;
use Lido::XML::LIDO_1_1::xlink;
use Lido::XML::LIDO_1_1::xml;

sub content {
    my @res;
    for my $pkg (qw( 
          Lido::XML::LIDO_1_1::basicTypes
          Lido::XML::LIDO_1_1::coordinateOperations
          Lido::XML::LIDO_1_1::coordinateReferenceSystems
          Lido::XML::LIDO_1_1::coordinateSystems
          Lido::XML::LIDO_1_1::coverage
          Lido::XML::LIDO_1_1::dataQuality
          Lido::XML::LIDO_1_1::datums
          Lido::XML::LIDO_1_1::defaultStyle
          Lido::XML::LIDO_1_1::direction
          Lido::XML::LIDO_1_1::dynamicFeature
          Lido::XML::LIDO_1_1::feature
          Lido::XML::LIDO_1_1::geometryAggregates
          Lido::XML::LIDO_1_1::geometryBasic0d1d
          Lido::XML::LIDO_1_1::geometryBasic2d
          Lido::XML::LIDO_1_1::geometryComplexes
          Lido::XML::LIDO_1_1::geometryPrimitives
          Lido::XML::LIDO_1_1::gml
          Lido::XML::LIDO_1_1::gmlBase
          Lido::XML::LIDO_1_1::grids
          Lido::XML::LIDO_1_1::lido_v1
          Lido::XML::LIDO_1_1::measures
          Lido::XML::LIDO_1_1::observation
          Lido::XML::LIDO_1_1::referenceSystems
          Lido::XML::LIDO_1_1::temporal
          Lido::XML::LIDO_1_1::temporalReferenceSystems
          Lido::XML::LIDO_1_1::temporalTopology
          Lido::XML::LIDO_1_1::topology
          Lido::XML::LIDO_1_1::units
          Lido::XML::LIDO_1_1::valueObjects
          Lido::XML::LIDO_1_1::xlink
          Lido::XML::LIDO_1_1::xml
    )) {
        push @res , $pkg->new->content;
    }

    @res;
}

1;
