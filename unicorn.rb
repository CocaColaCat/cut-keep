worker_processes 2

working_directory Dir.pwd

listen 9292, :tcp_nopush => true

stderr_path "/var/log/unicorn/unicorn.stderr.log"
stdout_path "/var/log/unicorn/unicorn.stdout.log"

timeout 30

pid '/var/run/unicorn.rb'
preload_app true
