import boto3

# Initialize a session using Boto3
ec2 = boto3.resource('ec2', region_name='us-east-1')

# Create an EC2 instance
instance = ec2.create_instances(
    ImageId='ami-0c02fb55956c7d316',  # Amazon Linux 2 AMI (Free Tier Eligible)
    MinCount=1,
    MaxCount=1,
    InstanceType='t2.micro',
    KeyName='MyKeyPair',  # Ensure you have created this key pair
    TagSpecifications=[
        {
            'ResourceType': 'instance',
            'Tags': [{'Key': 'Name', 'Value': 'MyPythonEC2Instance'}]
        }
    ]
)

# Get the instance ID
instance_id = instance[0].id
print(f'Created instance with ID: {instance_id}')

# Save instance ID for later termination
with open("instance_id.txt", "w") as f:
    f.write(instance_id)
