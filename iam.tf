resource "aws_iam_group" "demo" {
  name = "demo-group"
}

resource "aws_iam_user" "demo" {
  name = "demo-user-${var.environment}"
  tags = {
    Environment = var.environment
    Project     = var.project
  }
}

resource "aws_iam_group_membership" "demo" {
  name = "demo-group-members"
  users = [
    aws_iam_user.demo.name
  ]
  group = aws_iam_group.demo.name
}

resource "aws_iam_user_policy" "demo" {
  name   = "demo-user-policy"
  user   = aws_iam_user.demo.name
  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
POLICY
}
