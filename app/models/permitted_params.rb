class PermittedParams < Struct.new(:params)
  def comment
    params.require(:comment).permit(*comment_attributes)
  end

  def comment_attributes
    [:body, :post_id]
  end
end
