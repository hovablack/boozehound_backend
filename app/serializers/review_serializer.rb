class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content
end
