require 'writeexcel'
require 'template_handler/xlsr'
require 'template_handler/options'

class ActionView::Base
  private
  def _excelr_setup
    @_excelr_options = Excelr::TemplateHandler::Options.new controller
  end
end