class Offer < Prompt
  has_many :potential_prompt_matches, :dependent => :destroy
  
  def get_prompt_restriction
    if collection && collection.challenge
      collection.challenge.offer_restriction
    else
      nil
    end
  end
end