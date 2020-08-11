class CertificatesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @certificates = Certificate.all
  end

  def show
    @certificate = Certificate.find(params[:id])
        respond_to do |format|
            format.html
            format.pdf do
                render pdf: "Certificate No. #{@certificate.id}",
                # page_size: 'A4',
                page_height: '320mm',
                page_width: '170mm',
                template: "certificates/show.html.erb",
                layout: "pdf.html.erb",
                orientation: "Landscape",
                lowquality: false,
                zoom: 1,
                dpi: 75
            end
          end
  end
end
