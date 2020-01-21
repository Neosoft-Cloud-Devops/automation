#!/bin/bash

# declare STRING variable
STRING="Hello World"
#print variable on a screen
echo $STRING

# Hosted Zone ID
ZONEID="Z24*************"


#Comment
COMMENT="Add new entry to the zone"

# The Time-To-Live of this recordset
TTL=300

# Type
TYPE="A"

# Input File Name
FILENAME=/home/ec2-user/awscli/route53/scripts/test.json



cat >> $FILENAME << EOF
    {
      "Comment":"$COMMENT",
      "Changes":[
        {
          "Action":"CREATE",
          "ResourceRecordSet":{
            "ResourceRecords":[
              {
                "Value":"$IP"
              }
            ],
            "Name":"$RECORDSET",
            "Type":"$TYPE",
            "TTL":$TTL
          }
        }
      ]
    }
EOF

echo $FILENAME
