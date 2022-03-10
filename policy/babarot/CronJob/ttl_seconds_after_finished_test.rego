package babarot.cronjob.ttl_seconds_after_finished

test_deny_cronjob {
    inputs = [
        input_no_ttl_cronjob,
    ]
    some i
    input := inputs[i]
    result := deny_cronjob with input as input.manifest
    result == input.result
}

input_no_ttl_cronjob = {
    "manifest": {
        "kind": "CronJob",
        "spec": {
            "jobTemplate": {
                "spec": {
                    "backoffLimit": 1,
                }
            }
        }
    },
    "result" : {"spec.jobTemplate.spec.ttlSecondsAfterFinished should be set"},
}
