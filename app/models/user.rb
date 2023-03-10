class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :mushrooms, dependent: :destroy

  validates :email, presence: true
  validates :email, uniqueness: true

  after_create :add_default_mushrooms_to_new_user

    def self.add_default_mushrooms_to_all_users
      User.find_each do |user|
        user.mushrooms.create(name: "Oyster", body: "Also known as Pleurotus ostreatus, the oyster  is highly nutritious. Oyster mushrooms may promote heart and immune system health, encourage healthy blood sugar control, and provide antioxidant and anti-inflammatory effects", psychedelic: false, deadly: false, img: "https://i.pinimg.com/564x/b2/5c/a0/b25ca021a20222e0f70d66af3a1a59b2.jpg")
        user.mushrooms.create(name: "Mica Cap", body: "Also known as Coprinellus Micaceus, the Mica cap contains bioactive compounds that have the potential to be used as adjuvants in cancer chemotherapy", psychedelic: false, deadly: false, img: "https://i.pinimg.com/564x/60/c1/cb/60c1cbfdc8736f31638bbbc356570206.jpg")
        user.mushrooms.create(name: "Scarlet Elf Cup", body: "Also known as Sarcoscypha Coccinea, the Scarlet Elf Cup is a hard to find mushroom with a terrible taste. Though it is not poisonous, it is not recommended for consumption", psychedelic: false, deadly: false, img: "https://i.pinimg.com/564x/69/a7/e2/69a7e2d5332ec68201b5b2535303c0d6.jpg")
        user.mushrooms.create(name: "Basket Stinkhorn", body: "Also known as Clathrus ruber, the stinkhorn mushroom is not poisonous until it starts to smell like rotting meat. Stinkhorn is edible, but only at the egg stage when the smell is less strong. ", psychedelic: false, deadly: false, img: "https://i.pinimg.com/564x/09/1e/16/091e16662da815e525344a5ecfe4d338.jpg")
        user.mushrooms.create(name: "Blackening Brittlegill", body: "Also known as Russula Nigricans, the Blackening Brittlegill is found all over Europe from Scandinavia to the Mediterranean. The sometimes finely felty but often smooth cap peels to about 75%.", psychedelic: false, deadly: false, img: "https://i.pinimg.com/564x/65/78/ba/6578baeb4255f59aba1bd43b1877d0a6.jpg")
        user.mushrooms.create(name: "Plums and Custard", body: "Also known as Tricholomopsis Rutilans, the Plums and Custard mushroom is found growing on rotting stumps and trunks. It can grow in large numbers is not typically considered edible.", psychedelic: false, deadly: true, img: "https://i.pinimg.com/564x/9b/3b/79/9b3b798a358143a238c7d8b4481785d7.jpg")
        user.mushrooms.create(name: "The Sickener", body: "Also known as Russula Emetica, the Sickener causes most people who ingest it to vomit. Do your best not to eat this one", psychedelic: false, deadly: false, img: "https://i.pinimg.com/564x/ec/30/61/ec3061fa16cc9352ff0aa44cd06c5107.jpg")
        user.mushrooms.create(name: "Artist's Conk", body: "Also known as Ganoderma Applanatum, the Artist's Conk is a wood fungus. In Chinese medicine this fungus has been used to treat rheumatic tuberculosis and esophageal carcinoma.", psychedelic: false, deadly: false, img: "https://i.pinimg.com/564x/97/63/61/976361c66afc589b5e016e4330eb75c6.jpg")
        user.mushrooms.create(name: "Golden Coral", body: "Also known as Ramaria aurea, the Golden Coral is not general considered a mushroom to be picked as it can easily be mistaken for its poisonous lookalikes.", psychedelic: false, deadly: false, img: "https://i.pinimg.com/564x/11/aa/58/11aa5881504e8c0bb464cb25efa12088.jpg")
        user.mushrooms.create(name: "Death Cap", body: "Also known as Amanita phalloides, the Death cap is one of the mushrooms that cause the most deaths worldwide. The caps tend to be pale green or sometimes pale yellow or brown. ", psychedelic: false, deadly: true, img: "https://i.pinimg.com/564x/77/b6/4a/77b64ae486c59dc484b2a0191666261e.jpg")
        user.mushrooms.create(name: "Enoki", body: "Also known as Flammulina Filiformis, the Enoki is highly nutritious and can support heart, brain and immunity health.", psychedelic: false, deadly: false, img: "https://i.pinimg.com/564x/17/4f/87/174f87bef026a8f73205a8c0e9042fdc.jpg")
        user.mushrooms.create(name: "Shaggy Mane", body: "Also known as Coprinellus Micaceus, the Shaggy Mane is a very poisonous mushroom that is often confused for an edible lookalike. Dont eat it!", psychedelic: false, deadly: true, img: "https://i.pinimg.com/564x/09/c2/62/09c262daec9c565d4b08b3633f3d5503.jpg")
        user.mushrooms.create(name: "Brittlestem", body: "Also known as Psathyrella candolleana, the Brittlestem is a psilocybin mushroom found growing during spring and summer.", psychedelic: true, deadly: false, img: "https://i.pinimg.com/564x/b5/3a/6a/b53a6a821afaf76279672be4dd4714db.jpg")
        user.mushrooms.create(name: "Deadly Fibre Cap", body: "Also known as Inocybe erubescens, the Deadly Fibre Cap is one of the deadliest known mushrooms. Its cap is conical and can have white gills when young so dont confuse it for a St Georges mushroom.", psychedelic: false, deadly: false, img: "https://i.pinimg.com/564x/d4/24/85/d424851ae94c85aecc8873603fda61c0.jpg")
      end
    end

    def default_mushrooms
      mushrooms.where(is_default: true)
    end

private

    def add_default_mushrooms_to_new_user
      mushrooms.create(name: "Oyster", body: "Also known as Pleurotus ostreatus, the oyster  is highly nutritious. Oyster mushrooms may promote heart and immune system health, encourage healthy blood sugar control, and provide antioxidant and anti-inflammatory effects", psychedelic: false, deadly: false, img: "https://i.pinimg.com/564x/b2/5c/a0/b25ca021a20222e0f70d66af3a1a59b2.jpg")
      mushrooms.create(name: "Mica Cap", body: "Also known as Coprinellus Micaceus, the Mica cap contains bioactive compounds that have the potential to be used as adjuvants in cancer chemotherapy", psychedelic: false, deadly: false, img: "https://i.pinimg.com/564x/60/c1/cb/60c1cbfdc8736f31638bbbc356570206.jpg")
      mushrooms.create(name: "Scarlet Elf Cup", body: "Also known as Sarcoscypha Coccinea, the Scarlet Elf Cup is a hard to find mushroom with a terrible taste. Though it is not poisonous, it is not recommended for consumption", psychedelic: false, deadly: false, img: "https://i.pinimg.com/564x/69/a7/e2/69a7e2d5332ec68201b5b2535303c0d6.jpg")
      mushrooms.create(name: "Basket Stinkhorn", body: "Also known as Clathrus ruber, the stinkhorn mushroom is not poisonous until it starts to smell like rotting meat. Stinkhorn is edible, but only at the egg stage when the smell is less strong. ", psychedelic: false, deadly: false, img: "https://i.pinimg.com/564x/09/1e/16/091e16662da815e525344a5ecfe4d338.jpg")
      mushrooms.create(name: "Blackening Brittlegill", body: "Also known as Russula Nigricans, the Blackening Brittlegill is found all over Europe from Scandinavia to the Mediterranean. The sometimes finely felty but often smooth cap peels to about 75%.", psychedelic: false, deadly: false, img: "https://i.pinimg.com/564x/65/78/ba/6578baeb4255f59aba1bd43b1877d0a6.jpg")
      mushrooms.create(name: "Plums and Custard", body: "Also known as Tricholomopsis Rutilans, the Plums and Custard mushroom is found growing on rotting stumps and trunks. It can grow in large numbers is not typically considered edible.", psychedelic: false, deadly: true, img: "https://i.pinimg.com/564x/9b/3b/79/9b3b798a358143a238c7d8b4481785d7.jpg")
      mushrooms.create(name: "The Sickener", body: "Also known as Russula Emetica, the Sickener causes most people who ingest it to vomit. Do your best not to eat this one", psychedelic: false, deadly: false, img: "https://i.pinimg.com/564x/ec/30/61/ec3061fa16cc9352ff0aa44cd06c5107.jpg")
      mushrooms.create(name: "Artist's Conk", body: "Also known as Ganoderma Applanatum, the Artist's Conk is a wood fungus. In Chinese medicine this fungus has been used to treat rheumatic tuberculosis and esophageal carcinoma.", psychedelic: false, deadly: false, img: "https://i.pinimg.com/564x/97/63/61/976361c66afc589b5e016e4330eb75c6.jpg")
      mushrooms.create(name: "Golden Coral", body: "Also known as Ramaria aurea, the Golden Coral is not general considered a mushroom to be picked as it can easily be mistaken for its poisonous lookalikes.", psychedelic: false, deadly: false, img: "https://i.pinimg.com/564x/11/aa/58/11aa5881504e8c0bb464cb25efa12088.jpg")
      mushrooms.create(name: "Death Cap", body: "Also known as Amanita phalloides, the Death cap is one of the mushrooms that cause the most deaths worldwide. The caps tend to be pale green or sometimes pale yellow or brown. ", psychedelic: false, deadly: true, img: "https://i.pinimg.com/564x/77/b6/4a/77b64ae486c59dc484b2a0191666261e.jpg")
      mushrooms.create(name: "Enoki", body: "Also known as Flammulina Filiformis, the Enoki is highly nutritious and can support heart, brain and immunity health.", psychedelic: false, deadly: false, img: "https://i.pinimg.com/564x/17/4f/87/174f87bef026a8f73205a8c0e9042fdc.jpg")
      mushrooms.create(name: "Shaggy Mane", body: "Also known as Coprinellus Micaceus, the Shaggy Mane is a very poisonous mushroom that is often confused for an edible lookalike. Dont eat it!", psychedelic: false, deadly: true, img: "https://i.pinimg.com/564x/09/c2/62/09c262daec9c565d4b08b3633f3d5503.jpg")
      mushrooms.create(name: "Brittlestem", body: "Also known as Psathyrella candolleana, the Brittlestem is a psilocybin mushroom found growing during spring and summer.", psychedelic: true, deadly: false, img: "https://i.pinimg.com/564x/b5/3a/6a/b53a6a821afaf76279672be4dd4714db.jpg")
      mushrooms.create(name: "Deadly Fibre Cap", body: "Also known as Inocybe erubescens, the Deadly Fibre Cap is one of the deadliest known mushrooms. Its cap is conical and can have white gills when young so dont confuse it for a St Georges mushroom.", psychedelic: false, deadly: false, img: "https://i.pinimg.com/564x/d4/24/85/d424851ae94c85aecc8873603fda61c0.jpg")
    end
end
