aws ec2 run-instances \
    --image-id ami-00068cd7555f543d5  \
    --count 1 \
    --instance-type t2.micro \
    --key-name Cent \
    --security-group-ids sg-03f48af8d10ed64d3 \
    --subnet-id subnet-40722e6e



#aws ec2 run-instances --image-id ami-00068cd7555f543d5 --count 1 --instance-type t2.micro --key-name shell --security-group-ids sg-03f48af8d10ed64d3 --subnet-id subnet-40722e6e
