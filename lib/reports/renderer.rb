module Reports
  class Renderer
    attr_reader :report

    def initialize(report)
      @report = report
    end

    def render(options)
      report.structure.traverse do |node|
      end
    end
  end
end
 
