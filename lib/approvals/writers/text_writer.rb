module Approvals
  module Writers
    class TextWriter
      include Singleton

      def extension
        'txt'
      end

      def write(data, path)
        File.open(path, 'w') do |f|
          f.write format(data)
        end
      end

      def format(data)
        data.inspect
      end

      def touch(path)
        FileUtils.touch(path)
      end

    end
  end
end