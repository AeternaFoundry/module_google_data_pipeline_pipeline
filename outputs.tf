output "data_pipeline_pipelines_id" {
  description = "Map of id values across all data_pipeline_pipelines, keyed the same as var.data_pipeline_pipelines except keys with no id are omitted"
  value       = { for k, v in google_data_pipeline_pipeline.data_pipeline_pipelines : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_pipeline_pipelines_create_time" {
  description = "Map of create_time values across all data_pipeline_pipelines, keyed the same as var.data_pipeline_pipelines except keys with no create_time are omitted"
  value       = { for k, v in google_data_pipeline_pipeline.data_pipeline_pipelines : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "data_pipeline_pipelines_deletion_policy" {
  description = "Map of deletion_policy values across all data_pipeline_pipelines, keyed the same as var.data_pipeline_pipelines except keys with no deletion_policy are omitted"
  value       = { for k, v in google_data_pipeline_pipeline.data_pipeline_pipelines : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "data_pipeline_pipelines_display_name" {
  description = "Map of display_name values across all data_pipeline_pipelines, keyed the same as var.data_pipeline_pipelines except keys with no display_name are omitted"
  value       = { for k, v in google_data_pipeline_pipeline.data_pipeline_pipelines : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "data_pipeline_pipelines_job_count" {
  description = "Map of job_count values across all data_pipeline_pipelines, keyed the same as var.data_pipeline_pipelines except keys with no job_count are omitted"
  value       = { for k, v in google_data_pipeline_pipeline.data_pipeline_pipelines : k => v.job_count if v.job_count != null }
}
output "data_pipeline_pipelines_last_update_time" {
  description = "Map of last_update_time values across all data_pipeline_pipelines, keyed the same as var.data_pipeline_pipelines except keys with no last_update_time are omitted"
  value       = { for k, v in google_data_pipeline_pipeline.data_pipeline_pipelines : k => v.last_update_time if v.last_update_time != null && length(v.last_update_time) > 0 }
}
output "data_pipeline_pipelines_name" {
  description = "Map of name values across all data_pipeline_pipelines, keyed the same as var.data_pipeline_pipelines except keys with no name are omitted"
  value       = { for k, v in google_data_pipeline_pipeline.data_pipeline_pipelines : k => v.name if v.name != null && length(v.name) > 0 }
}
output "data_pipeline_pipelines_pipeline_sources" {
  description = "Map of pipeline_sources values across all data_pipeline_pipelines, keyed the same as var.data_pipeline_pipelines except keys with no pipeline_sources are omitted"
  value       = { for k, v in google_data_pipeline_pipeline.data_pipeline_pipelines : k => v.pipeline_sources if v.pipeline_sources != null && length(v.pipeline_sources) > 0 }
}
output "data_pipeline_pipelines_project" {
  description = "Map of project values across all data_pipeline_pipelines, keyed the same as var.data_pipeline_pipelines except keys with no project are omitted"
  value       = { for k, v in google_data_pipeline_pipeline.data_pipeline_pipelines : k => v.project if v.project != null && length(v.project) > 0 }
}
output "data_pipeline_pipelines_region" {
  description = "Map of region values across all data_pipeline_pipelines, keyed the same as var.data_pipeline_pipelines except keys with no region are omitted"
  value       = { for k, v in google_data_pipeline_pipeline.data_pipeline_pipelines : k => v.region if v.region != null && length(v.region) > 0 }
}
output "data_pipeline_pipelines_schedule_info" {
  description = "Map of schedule_info values across all data_pipeline_pipelines, keyed the same as var.data_pipeline_pipelines except keys with no schedule_info are omitted"
  value       = { for k, v in google_data_pipeline_pipeline.data_pipeline_pipelines : k => one(v.schedule_info) if v.schedule_info != null && length(v.schedule_info) > 0 }
}
output "data_pipeline_pipelines_scheduler_service_account_email" {
  description = "Map of scheduler_service_account_email values across all data_pipeline_pipelines, keyed the same as var.data_pipeline_pipelines except keys with no scheduler_service_account_email are omitted"
  value       = { for k, v in google_data_pipeline_pipeline.data_pipeline_pipelines : k => v.scheduler_service_account_email if v.scheduler_service_account_email != null && length(v.scheduler_service_account_email) > 0 }
}
output "data_pipeline_pipelines_state" {
  description = "Map of state values across all data_pipeline_pipelines, keyed the same as var.data_pipeline_pipelines except keys with no state are omitted"
  value       = { for k, v in google_data_pipeline_pipeline.data_pipeline_pipelines : k => v.state if v.state != null && length(v.state) > 0 }
}
output "data_pipeline_pipelines_type" {
  description = "Map of type values across all data_pipeline_pipelines, keyed the same as var.data_pipeline_pipelines except keys with no type are omitted"
  value       = { for k, v in google_data_pipeline_pipeline.data_pipeline_pipelines : k => v.type if v.type != null && length(v.type) > 0 }
}
output "data_pipeline_pipelines_workload" {
  description = "Map of workload values across all data_pipeline_pipelines, keyed the same as var.data_pipeline_pipelines except keys with no workload are omitted"
  value       = { for k, v in google_data_pipeline_pipeline.data_pipeline_pipelines : k => one(v.workload) if v.workload != null && length(v.workload) > 0 }
}

