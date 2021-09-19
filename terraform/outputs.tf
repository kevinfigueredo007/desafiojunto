
output "alb_hostname" {
  value = aws_alb.main.dns_name
}

output "code_build_project" {
  value = aws_codebuild_project.containerAppBuild.arn
}
output "node_app_codepipeline_project" {
  value = aws_codepipeline.node_app_pipeline.arn
}
