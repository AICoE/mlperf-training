#!/usr/bin/env bash
./run_and_time.sh 2>&1 | tail -1 >>/tekton/results/current-date-unix-timestamp
      
