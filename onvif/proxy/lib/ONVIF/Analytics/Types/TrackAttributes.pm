package ONVIF::Analytics::Types::TrackAttributes;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %TrackInformation_of :ATTR(:get<TrackInformation>);
my %VideoAttributes_of :ATTR(:get<VideoAttributes>);
my %AudioAttributes_of :ATTR(:get<AudioAttributes>);
my %MetadataAttributes_of :ATTR(:get<MetadataAttributes>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        TrackInformation
        VideoAttributes
        AudioAttributes
        MetadataAttributes
        Extension

    ) ],
    {
        'TrackInformation' => \%TrackInformation_of,
        'VideoAttributes' => \%VideoAttributes_of,
        'AudioAttributes' => \%AudioAttributes_of,
        'MetadataAttributes' => \%MetadataAttributes_of,
        'Extension' => \%Extension_of,
    },
    {
        'TrackInformation' => 'ONVIF::Analytics::Types::TrackInformation',
        'VideoAttributes' => 'ONVIF::Analytics::Types::VideoAttributes',
        'AudioAttributes' => 'ONVIF::Analytics::Types::AudioAttributes',
        'MetadataAttributes' => 'ONVIF::Analytics::Types::MetadataAttributes',
        'Extension' => 'ONVIF::Analytics::Types::TrackAttributesExtension',
    },
    {

        'TrackInformation' => 'TrackInformation',
        'VideoAttributes' => 'VideoAttributes',
        'AudioAttributes' => 'AudioAttributes',
        'MetadataAttributes' => 'MetadataAttributes',
        'Extension' => 'Extension',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Analytics::Types::TrackAttributes

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
TrackAttributes from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * TrackInformation


=item * VideoAttributes


=item * AudioAttributes


=item * MetadataAttributes


=item * Extension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Analytics::Types::TrackAttributes
   TrackInformation =>  { # ONVIF::Analytics::Types::TrackInformation
     TrackToken => $some_value, # TrackReference
     TrackType => $some_value, # TrackType
     Description => $some_value, # Description
     DataFrom =>  $some_value, # dateTime
     DataTo =>  $some_value, # dateTime
   },
   VideoAttributes =>  { # ONVIF::Analytics::Types::VideoAttributes
     Bitrate =>  $some_value, # int
     Width =>  $some_value, # int
     Height =>  $some_value, # int
     Encoding => $some_value, # VideoEncoding
     Framerate =>  $some_value, # float
   },
   AudioAttributes =>  { # ONVIF::Analytics::Types::AudioAttributes
     Bitrate =>  $some_value, # int
     Encoding => $some_value, # AudioEncoding
     Samplerate =>  $some_value, # int
   },
   MetadataAttributes =>  { # ONVIF::Analytics::Types::MetadataAttributes
     CanContainPTZ =>  $some_value, # boolean
     CanContainAnalytics =>  $some_value, # boolean
     CanContainNotifications =>  $some_value, # boolean
   },
   Extension =>  { # ONVIF::Analytics::Types::TrackAttributesExtension
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

