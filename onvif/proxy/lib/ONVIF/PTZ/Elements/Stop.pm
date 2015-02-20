
package ONVIF::PTZ::Elements::Stop;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://www.onvif.org/ver20/ptz/wsdl' }

__PACKAGE__->__set_name('Stop');
__PACKAGE__->__set_nillable();
__PACKAGE__->__set_minOccurs();
__PACKAGE__->__set_maxOccurs();
__PACKAGE__->__set_ref();

use base qw(
    SOAP::WSDL::XSD::Typelib::Element
    SOAP::WSDL::XSD::Typelib::ComplexType
);

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %ProfileToken_of :ATTR(:get<ProfileToken>);
my %PanTilt_of :ATTR(:get<PanTilt>);
my %Zoom_of :ATTR(:get<Zoom>);

__PACKAGE__->_factory(
    [ qw(        ProfileToken
        PanTilt
        Zoom

    ) ],
    {
        'ProfileToken' => \%ProfileToken_of,
        'PanTilt' => \%PanTilt_of,
        'Zoom' => \%Zoom_of,
    },
    {
        'ProfileToken' => 'ONVIF::PTZ::Types::ReferenceToken',
        'PanTilt' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'Zoom' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
    },
    {

        'ProfileToken' => 'ProfileToken',
        'PanTilt' => 'PanTilt',
        'Zoom' => 'Zoom',
    }
);

} # end BLOCK







} # end of BLOCK



1;


=pod

=head1 NAME

ONVIF::PTZ::Elements::Stop

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
Stop from the namespace http://www.onvif.org/ver20/ptz/wsdl.







=head1 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * ProfileToken

 $element->set_ProfileToken($data);
 $element->get_ProfileToken();




=item * PanTilt

 $element->set_PanTilt($data);
 $element->get_PanTilt();




=item * Zoom

 $element->set_Zoom($data);
 $element->get_Zoom();





=back


=head1 METHODS

=head2 new

 my $element = ONVIF::PTZ::Elements::Stop->new($data);

Constructor. The following data structure may be passed to new():

 {
   ProfileToken => $some_value, # ReferenceToken
   PanTilt =>  $some_value, # boolean
   Zoom =>  $some_value, # boolean
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut
