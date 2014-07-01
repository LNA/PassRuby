configs = { all_after_pass: true,
            cmd: 'bundle exec rspec --fail-fast --order defined' }

guard :rspec, configs do
  watch (%r{^lib/(.+)/(.+).rb$}) do |m|
    "spec/#{m[1]}/#{m[2]}_spec.rb"
  end

  watch (%r{^spec/(.+)/(.+).rb$}) do |m|
    "spec/#{m[1]}/#{m[2]}.rb"
  end
end
