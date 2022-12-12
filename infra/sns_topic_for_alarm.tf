resource "aws_cloudwatch_metric_alarm" "over5alarm" {
  alarm_name                = "cartk-sum-must-be-over-5"
  namespace                 = var.candidate_id
  metric_name               = "cart.value"

  comparison_operator       = "GreaterThanThreshold"
  threshold                 = "0"
  evaluation_periods        = "3"
  period                    = "300"

  statistic                 = "Maximum"

  alarm_description         = "This alarm goes off as soon as the total cart exceeds 5 for a period of 15 minutes 3 times"
  insufficient_data_actions = []
  alarm_actions       = [aws_sns_topic.alarms.arn]
}

resource "aws_sns_topic" "alarms" {
  name = "alarm-topic-${var.candidate_id}"
}

resource "aws_sns_topic_subscription" "user_updates_sqs_target" {
  topic_arn = aws_sns_topic.alarms.arn
  protocol  = "email"
  endpoint  = var.candidate_email
}