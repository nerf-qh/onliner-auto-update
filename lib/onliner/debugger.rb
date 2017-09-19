module Onliner
  class Debugger
    class << self
      def save(data, name = nil)
        name = tmp_name if !name.nil? && File.exist?(file_path(name))
        path = file_path(name)
        FileUtils.mkdir_p(File.dirname(path))

        File.write(path, data)
      end

      def init_directory
        @directory = Time.now.strftime('%Y_%m_%d_%H_%M_%S')
      end

      private

      def tmp_name
        i = 0
        name = 'tmp_(0).txt'
        while File.exist? file_path(name)
          i += 1
          name = "tmp_(#{i}).txt"
        end
        name
      end

      def file_path(name)
        init_directory if @directory.nil?
        File.join('debug', @directory, name)
      end
    end
  end
end
