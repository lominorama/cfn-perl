{
  "Type": "AWS::Route53::HostedZone",
  "Properties": {
    "HostedZoneConfig": {
      "Comment": "My hosted zone for example.com"
    },
    "Name": "example.com",
    "VPCs": [{
      "VPCId": "vpc-abcd1234",
      "VPCRegion": "ap-northeast-1"
    },
    {
      "VPCId": "vpc-efgh5678",
      "VPCRegion": "us-west-2"
    }],
    "HostedZoneTags" : [{
      "Key": "SampleKey1",
      "Value": "SampleValue1"
    },
    {
      "Key": "SampleKey2",
      "Value": "SampleValue2"
    }]
  }
}