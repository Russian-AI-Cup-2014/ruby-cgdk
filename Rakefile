task :release do
  `zip eureka *.rb`
end

task :start do
  `killall java
   cd ../local-runner
   ./local-runner.sh
   sleep 2
   cd ../ruby-cgdk
   ruby runner.rb`
end