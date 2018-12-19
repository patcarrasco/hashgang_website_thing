class PublishersController < ApplicationController

  def create
    Publisher.create(publisher_params)
    redirect_to book_path(params[:publisher][:book_id])
  end

  def destroy
    @publisher = Publisher.find(params[:id])
    id = @publisher.book_id
    @publisher.destroy
    redirect_to book_path(id)
  end

  private

  def publisher_params
    params.require(:publisher).permit(:book_id, :author_id)
  end

end
