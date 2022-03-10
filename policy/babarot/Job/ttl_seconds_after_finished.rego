package babarot.job.ttl_seconds_after_finished

deny_job[msg] {
    input.kind == "Job"
    not input.spec.ttlSecondsAfterFinished
    msg := "spec.ttlSecondsAfterFinished should be set"
}
