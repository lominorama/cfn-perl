# AWS::StepFunctions::StateMachine generated from spec 2.28.0
use Moose::Util::TypeConstraints;

coerce 'Cfn::Resource::Properties::AWS::StepFunctions::StateMachine',
  from 'HashRef',
   via { Cfn::Resource::Properties::AWS::StepFunctions::StateMachine->new( %$_ ) };

package Cfn::Resource::AWS::StepFunctions::StateMachine {
  use Moose;
  extends 'Cfn::Resource';
  has Properties => (isa => 'Cfn::Resource::Properties::AWS::StepFunctions::StateMachine', is => 'rw', coerce => 1);
  
  sub AttributeList {
    [ 'Name' ]
  }
  sub supported_regions {
    [ 'ap-northeast-1','eu-central-1','eu-west-1','us-east-1','us-east-2','us-west-2' ]
  }
}


subtype 'ArrayOfCfn::Resource::Properties::AWS::StepFunctions::StateMachine::TagsEntry',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::StepFunctions::StateMachine::TagsEntry',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       die 'Only accepts functions'; 
     }
   },
  from 'ArrayRef',
   via {
     Cfn::Value::Array->new(Value => [
       map { 
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::StepFunctions::StateMachine::TagsEntry')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::StepFunctions::StateMachine::TagsEntry',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::StepFunctions::StateMachine::TagsEntry',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::StepFunctions::StateMachine::TagsEntryValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::StepFunctions::StateMachine::TagsEntryValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Key => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Value => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

package Cfn::Resource::Properties::AWS::StepFunctions::StateMachine {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Resource::Properties';
  
  has DefinitionString => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RoleArn => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has StateMachineName => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has Tags => (isa => 'ArrayOfCfn::Resource::Properties::AWS::StepFunctions::StateMachine::TagsEntry', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

1;
