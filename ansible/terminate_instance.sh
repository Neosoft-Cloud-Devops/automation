- name: Terminate instances
  hosts: localhost
  tasks:
    - name: Terminate instances that were previously launched
      ec2:
        state: 'absent'
	region: 'us-east-2'
        instance_ids: 'i-0e01423319934007b'
