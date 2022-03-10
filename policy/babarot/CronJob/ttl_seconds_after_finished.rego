package babarot.cronjob.ttl_seconds_after_finished

deny_cronjob[msg] {
    input.kind == "CronJob"
    not input.spec.jobTemplate.spec.ttlSecondsAfterFinished
    msg := "spec.jobTemplate.spec.ttlSecondsAfterFinished should be set"
}
