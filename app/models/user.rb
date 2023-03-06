class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :mushrooms
    after_create :add_default_mushrooms

    def add_default_mushrooms
      Mushroom.create(user_id: 1, name: "Oyster", body: "Also known as Pleurotus ostreatus, the oyster mushroom is highly nutritious. Oyster mushrooms may promote heart and immune system health, encourage healthy blood sugar control, and provide antioxidant and anti-inflammatory effects", psychedelic: false, deadly: false, img: "https://i.pinimg.com/564x/b2/5c/a0/b25ca021a20222e0f70d66af3a1a59b2.jpg")
      Mushroom.create(user_id: 1, name: "Mica Cap" , body: "Also known as Coprinellus Micaceus, the Mica cap contains bioactive compuunds that have the potential to be used as adjuvants in cancer chemotherapy", psychedelic: false, deadly: false, img: "https://i.pinimg.com/564x/60/c1/cb/60c1cbfdc8736f31638bbbc356570206.jpg")
      Mushroom.create(user_id: 1, name: "Scarlet Elf Cup" , body: "Also known as Sarcoscypha Coccinea, the Scarlet Elf Cup is a hard to find mushroom with a terrible taste. Though it is not poisonous, it is not recommended for consumption", psychedelic: false, deadly: false, img: "https://i.pinimg.com/564x/69/a7/e2/69a7e2d5332ec68201b5b2535303c0d6.jpg")
      Mushroom.create(user_id: 1, name: "Basket Stinkhorn", body: "Also known as Clathrus ruber, the stinkhorn mushroom is not poisonous until it starts to smell like rotting meat. Stinkhorn is edible, but only at the egg stage when the smell is less strong. ", psychedelic: false, deadly: false, img: "https://i.pinimg.com/564x/09/1e/16/091e16662da815e525344a5ecfe4d338.jpg")
      

    end
end
