require 'excelr'

Mime::Type.register "application/vnd.ms-excel", :xls
ActionView::Template.register_template_handler 'xlsr', Excelr::TemplateHandler::Xlsr