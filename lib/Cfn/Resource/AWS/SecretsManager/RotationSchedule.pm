# AWS::SecretsManager::RotationSchedule generated from spec 2.25.0
use Moose::Util::TypeConstraints;

coerce 'Cfn::Resource::Properties::AWS::SecretsManager::RotationSchedule',
  from 'HashRef',
   via { Cfn::Resource::Properties::AWS::SecretsManager::RotationSchedule->new( %$_ ) };

package Cfn::Resource::AWS::SecretsManager::RotationSchedule {
  use Moose;
  extends 'Cfn::Resource';
  has Properties => (isa => 'Cfn::Resource::Properties::AWS::SecretsManager::RotationSchedule', is => 'rw', coerce => 1);
  
  sub AttributeList {
    [  ]
  }
  sub supported_regions {
    [ 'ap-northeast-1','ap-northeast-2','ap-south-1','ap-southeast-1','ap-southeast-2','ca-central-1','eu-central-1','eu-west-1','eu-west-2','eu-west-3','sa-east-1','us-east-1','us-east-2','us-west-1','us-west-2' ]
  }
}



subtype 'Cfn::Resource::Properties::AWS::SecretsManager::RotationSchedule::RotationRules',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::SecretsManager::RotationSchedule::RotationRules',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::SecretsManager::RotationSchedule::RotationRulesValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::SecretsManager::RotationSchedule::RotationRulesValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AutomaticallyAfterDays => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

package Cfn::Resource::Properties::AWS::SecretsManager::RotationSchedule {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Resource::Properties';
  
  has RotationLambdaARN => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RotationRules => (isa => 'Cfn::Resource::Properties::AWS::SecretsManager::RotationSchedule::RotationRules', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SecretId => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
}

1;
