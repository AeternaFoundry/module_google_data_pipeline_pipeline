resource "google_data_pipeline_pipeline" "data_pipeline_pipelines" {
  for_each = var.data_pipeline_pipelines

  name                            = each.value.name
  state                           = each.value.state
  type                            = each.value.type
  deletion_policy                 = each.value.deletion_policy
  display_name                    = each.value.display_name
  pipeline_sources                = each.value.pipeline_sources
  project                         = each.value.project
  region                          = each.value.region
  scheduler_service_account_email = each.value.scheduler_service_account_email

  dynamic "schedule_info" {
    for_each = each.value.schedule_info != null ? [each.value.schedule_info] : []
    content {
      schedule  = schedule_info.value.schedule
      time_zone = schedule_info.value.time_zone
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "workload" {
    for_each = each.value.workload != null ? [each.value.workload] : []
    content {
      dynamic "dataflow_flex_template_request" {
        for_each = workload.value.dataflow_flex_template_request != null ? [workload.value.dataflow_flex_template_request] : []
        content {
          launch_parameter {
            container_spec_gcs_path = dataflow_flex_template_request.value.launch_parameter.container_spec_gcs_path
            dynamic "environment" {
              for_each = dataflow_flex_template_request.value.launch_parameter.environment != null ? [dataflow_flex_template_request.value.launch_parameter.environment] : []
              content {
                additional_experiments  = environment.value.additional_experiments
                additional_user_labels  = environment.value.additional_user_labels
                enable_streaming_engine = environment.value.enable_streaming_engine
                flexrs_goal             = environment.value.flexrs_goal
                ip_configuration        = environment.value.ip_configuration
                kms_key_name            = environment.value.kms_key_name
                machine_type            = environment.value.machine_type
                max_workers             = environment.value.max_workers
                network                 = environment.value.network
                num_workers             = environment.value.num_workers
                service_account_email   = environment.value.service_account_email
                subnetwork              = environment.value.subnetwork
                temp_location           = environment.value.temp_location
                worker_region           = environment.value.worker_region
                worker_zone             = environment.value.worker_zone
                zone                    = environment.value.zone
              }
            }
            job_name                = dataflow_flex_template_request.value.launch_parameter.job_name
            launch_options          = dataflow_flex_template_request.value.launch_parameter.launch_options
            parameters              = dataflow_flex_template_request.value.launch_parameter.parameters
            transform_name_mappings = dataflow_flex_template_request.value.launch_parameter.transform_name_mappings
            update                  = dataflow_flex_template_request.value.launch_parameter.update
          }
          location      = dataflow_flex_template_request.value.location
          project_id    = dataflow_flex_template_request.value.project_id
          validate_only = dataflow_flex_template_request.value.validate_only
        }
      }
      dynamic "dataflow_launch_template_request" {
        for_each = workload.value.dataflow_launch_template_request != null ? [workload.value.dataflow_launch_template_request] : []
        content {
          gcs_path = dataflow_launch_template_request.value.gcs_path
          dynamic "launch_parameters" {
            for_each = dataflow_launch_template_request.value.launch_parameters != null ? [dataflow_launch_template_request.value.launch_parameters] : []
            content {
              dynamic "environment" {
                for_each = launch_parameters.value.environment != null ? [launch_parameters.value.environment] : []
                content {
                  additional_experiments     = environment.value.additional_experiments
                  additional_user_labels     = environment.value.additional_user_labels
                  bypass_temp_dir_validation = environment.value.bypass_temp_dir_validation
                  enable_streaming_engine    = environment.value.enable_streaming_engine
                  ip_configuration           = environment.value.ip_configuration
                  kms_key_name               = environment.value.kms_key_name
                  machine_type               = environment.value.machine_type
                  max_workers                = environment.value.max_workers
                  network                    = environment.value.network
                  num_workers                = environment.value.num_workers
                  service_account_email      = environment.value.service_account_email
                  subnetwork                 = environment.value.subnetwork
                  temp_location              = environment.value.temp_location
                  worker_region              = environment.value.worker_region
                  worker_zone                = environment.value.worker_zone
                  zone                       = environment.value.zone
                }
              }
              job_name               = launch_parameters.value.job_name
              parameters             = launch_parameters.value.parameters
              transform_name_mapping = launch_parameters.value.transform_name_mapping
              update                 = launch_parameters.value.update
            }
          }
          location      = dataflow_launch_template_request.value.location
          project_id    = dataflow_launch_template_request.value.project_id
          validate_only = dataflow_launch_template_request.value.validate_only
        }
      }
    }
  }
}

