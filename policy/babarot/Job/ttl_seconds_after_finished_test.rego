package babarot.job.ttl_seconds_after_finished

test_deny_job {
    inputs = [
        input_no_ttl_job,
    ]
    some i
    input := inputs[i]
    result := deny_job with input as input.manifest
    result == input.result
}

input_no_ttl_job = {
    "manifest": {
        "kind": "Job",
        "spec": {}
    },
    "result" : {"spec.ttlSecondsAfterFinished should be set"},
}
