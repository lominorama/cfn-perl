# AWS::Inspector::ResourceGroup generated from spec 3.0.0
use Moose::Util::TypeConstraints;

coerce 'Cfn::Resource::Properties::AWS::Inspector::ResourceGroup',
  from 'HashRef',
   via { Cfn::Resource::Properties::AWS::Inspector::ResourceGroup->new( %$_ ) };

package Cfn::Resource::AWS::Inspector::ResourceGroup {
  use Moose;
  extends 'Cfn::Resource';
  has Properties => (isa => 'Cfn::Resource::Properties::AWS::Inspector::ResourceGroup', is => 'rw', coerce => 1);
  
  sub AttributeList {
    [ 'Arn' ]
  }
  sub supported_regions {
    [ 'ap-northeast-1','ap-northeast-2','ap-south-1','ap-southeast-2','eu-central-1','eu-west-1','us-east-1','us-east-2','us-west-1','us-west-2' ]
  }
}



package Cfn::Resource::Properties::AWS::Inspector::ResourceGroup {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Resource::Properties';
  
  has ResourceGroupTags => (isa => 'ArrayOfCfn::Resource::Properties::TagType', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
}

1;
