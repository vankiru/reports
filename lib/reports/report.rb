module Reports
  class Report
    extend Syntax::Data
    extend Syntax::Formatter
    extend Syntax::Worksheet
    extend Syntax::Table
    extend Syntax::Column
    extend Syntax::Row
    extend Syntax::Cell

    class << self
      def structure
        @structure ||= Structure::Report.new
      end
    end

    attr_reader :params

    def initialize(params)
      @params = params
    end

    def render(options)
      Renderer.new(self).render(options)
    end
  end
end
