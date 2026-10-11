variable "data_pipeline_pipelines" {
  description = <<EOT
Map of data_pipeline_pipelines, attributes below
Required:
    - name
    - state
    - type
Optional:
    - deletion_policy
    - display_name
    - pipeline_sources
    - project
    - region
    - scheduler_service_account_email
    - schedule_info (block):
        - schedule (optional)
        - time_zone (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - workload (block):
        - dataflow_flex_template_request (optional, block):
            - launch_parameter (required, block):
                - container_spec_gcs_path (optional)
                - environment (optional, block):
                    - additional_experiments (optional)
                    - additional_user_labels (optional)
                    - enable_streaming_engine (optional)
                    - flexrs_goal (optional)
                    - ip_configuration (optional)
                    - kms_key_name (optional)
                    - machine_type (optional)
                    - max_workers (optional)
                    - network (optional)
                    - num_workers (optional)
                    - service_account_email (optional)
                    - subnetwork (optional)
                    - temp_location (optional)
                    - worker_region (optional)
                    - worker_zone (optional)
                    - zone (optional)
                - job_name (required)
                - launch_options (optional)
                - parameters (optional)
                - transform_name_mappings (optional)
                - update (optional)
            - location (required)
            - project_id (required)
            - validate_only (optional)
        - dataflow_launch_template_request (optional, block):
            - gcs_path (optional)
            - launch_parameters (optional, block):
                - environment (optional, block):
                    - additional_experiments (optional)
                    - additional_user_labels (optional)
                    - bypass_temp_dir_validation (optional)
                    - enable_streaming_engine (optional)
                    - ip_configuration (optional)
                    - kms_key_name (optional)
                    - machine_type (optional)
                    - max_workers (optional)
                    - network (optional)
                    - num_workers (optional)
                    - service_account_email (optional)
                    - subnetwork (optional)
                    - temp_location (optional)
                    - worker_region (optional)
                    - worker_zone (optional)
                    - zone (optional)
                - job_name (required)
                - parameters (optional)
                - transform_name_mapping (optional)
                - update (optional)
            - location (optional)
            - project_id (required)
            - validate_only (optional)
EOT

  type = map(object({
    name                            = string
    state                           = string
    type                            = string
    deletion_policy                 = optional(string)
    display_name                    = optional(string)
    pipeline_sources                = optional(map(string))
    project                         = optional(string)
    region                          = optional(string)
    scheduler_service_account_email = optional(string)
    schedule_info = optional(object({
      schedule  = optional(string)
      time_zone = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    workload = optional(object({
      dataflow_flex_template_request = optional(object({
        launch_parameter = object({
          container_spec_gcs_path = optional(string)
          environment = optional(object({
            additional_experiments  = optional(list(string))
            additional_user_labels  = optional(map(string))
            enable_streaming_engine = optional(bool)
            flexrs_goal             = optional(string)
            ip_configuration        = optional(string)
            kms_key_name            = optional(string)
            machine_type            = optional(string)
            max_workers             = optional(number)
            network                 = optional(string)
            num_workers             = optional(number)
            service_account_email   = optional(string)
            subnetwork              = optional(string)
            temp_location           = optional(string)
            worker_region           = optional(string)
            worker_zone             = optional(string)
            zone                    = optional(string)
          }))
          job_name                = string
          launch_options          = optional(map(string))
          parameters              = optional(map(string))
          transform_name_mappings = optional(map(string))
          update                  = optional(bool)
        })
        location      = string
        project_id    = string
        validate_only = optional(bool)
      }))
      dataflow_launch_template_request = optional(object({
        gcs_path = optional(string)
        launch_parameters = optional(object({
          environment = optional(object({
            additional_experiments     = optional(list(string))
            additional_user_labels     = optional(map(string))
            bypass_temp_dir_validation = optional(bool)
            enable_streaming_engine    = optional(bool)
            ip_configuration           = optional(string)
            kms_key_name               = optional(string)
            machine_type               = optional(string)
            max_workers                = optional(number)
            network                    = optional(string)
            num_workers                = optional(number)
            service_account_email      = optional(string)
            subnetwork                 = optional(string)
            temp_location              = optional(string)
            worker_region              = optional(string)
            worker_zone                = optional(string)
            zone                       = optional(string)
          }))
          job_name               = string
          parameters             = optional(map(string))
          transform_name_mapping = optional(map(string))
          update                 = optional(bool)
        }))
        location      = optional(string)
        project_id    = string
        validate_only = optional(bool)
      }))
    }))
  }))
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

