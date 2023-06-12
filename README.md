# terraform_code_1

# The  code is used to create EC2 instance in AWS console through terraform

* In the first block we give the provider. Here the Provider is AWS.
* We need to give the region - It depends on which region you want to launch
* Access key and secret key are generated according to I am role.
* The syntax will differ as the provider changes (GCP, Azure etc)

# Steps to create IAM Role

1. Open the AWS Management Console (https://console.aws.amazon.com/).

2. Sign in to your AWS account with appropriate credentials.

3. Go to the IAM (Identity and Access Management) service by searching for "IAM" in the AWS Management Console search bar and selecting the IAM service.

4. In the IAM console, click on "Roles" in the left navigation pane.

5. Click on the "Create role" button.

6. Choose the service that will use this role. You can either select a service template or choose the service yourself. For example, if you want to create a role for an EC2 instance, select "Amazon EC2" under "Choose a use case". Click on the "Next: Permissions" button.

7. Now, you need to attach policies to the role to define the permissions. You can either choose an existing policy or create a custom policy. To attach an existing policy, search for the policy name in the search box and select it. To create a custom policy, click on the "Create policy" button, configure the necessary permissions, and then attach it to the role.

8. After attaching the policies, review the role summary and provide a name for the role. Optionally, you can add a description for the role.

9. Click on the "Create role" button to create the IAM role.


# Steps to get the Access key and Secret key from the Console Using IAM Role :

* IAM Role - Identity and Access Management

1. Once the role is created, you'll be redirected to the "Roles" page. Search for the role you just created and click on its name to view its details.

2. In the "Permissions" tab, you can see the policies attached to the role.

3. Now, to obtain the access key and secret key, go to the "Security credentials" tab.

4. Click on the "Create access key" button.

5. A dialog box will appear displaying the access key ID and secret access key. You can either copy them or download the .csv file that contains the keys.

6. Store the access key and secret key in a secure location. Make sure you do not share these credentials with anyone as they provide full access to your AWS resources.

7. Remember to follow security best practices and rotate your access keys periodically to enhance security.

# Coming to second block,

* Mentioning Aws_resourrce as we mention .i.e. the services we need is constant in terraform. 
  For Eg, for Ec2 Instance its aws_instance 
          for Security Group its aws_security group so on...

* The name near the resource name is to call Ec2. It can be given as anyone's wish.
* Ami id - Depends on the region we choose.
* Instance Type - Depends on the requirement
* Inside tags we can given value and parameters as available in the terraform registry.

