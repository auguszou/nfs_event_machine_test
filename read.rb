require "./boot"

EM.run do
    dw = EMDirWatcher.watch(File.expand_path($setting["data_dir"]),
    :include_only => ['*.mdr', '*.mdd', '*.txt', '*.osf'],
    :exclude => ['backup'],
    :grace_period => 0.2) do |paths|
        paths.each do |path|
            if File.exists? path
                puts "Modified: #{path}"
            else
                puts "Deleted: #{path}"
            end
        end
    end
    puts "EventMachine running..."
end
