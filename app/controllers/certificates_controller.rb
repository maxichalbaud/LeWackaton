class CertificatesController < ApplicationController
  def show
    @certificate = Certificate.find(params[:id])
        respond_to do |format|
            format.html
            format.pdf do
                render pdf: "Certificate No. #{@certificate.id}",
                page_size: 'A4',
                template: "certificates/show.html.erb",
                layout: "pdf.html.erb",
                orientation: "Landscape",
                lowquality: true,
                zoom: 1,
                dpi: 75
            end
          end
  end
end
