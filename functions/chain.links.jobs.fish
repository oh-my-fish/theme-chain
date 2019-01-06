function chain.links.jobs
  # Check if there are any jobs running.
  if jobs -l > /dev/null 2>&1
    set -l job_count (jobs -l | cut -f1)

    echo white
    echo "%$job_count"
  end
end
