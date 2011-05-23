module Excelr
  module TemplateHandler
    class Xlsr < ActionView::TemplateHandler
      include ActionView::TemplateHandlers::Compilable
      
      def compile template
        %{
          _excelr_setup
          io = StringIO.new
          xls = WriteExcel.new(io)
          #{template.source}
          @_excelr_options.set_disposition(__filename ||= nil)
          xls.close
          io.string
        }
      end
    end
  end
end