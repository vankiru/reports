module Reports
  class Renderer
    class Worksheet
      attr_reader :report

      def initialize(report)
        @report = report
      end

      def render(options)
        report.structure
      end
    end
  end
end
 
