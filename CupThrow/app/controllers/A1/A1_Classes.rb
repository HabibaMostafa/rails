basePath = "./source/"
rPath = basePath + "./Randomizer/"
rcPath = basePath + "./RandomizerCollection/"

require_relative "./Hash.rb"
require_relative rPath + "Randomizer.rb"
require_relative rPath + "Coin.rb"
require_relative rPath + "Die.rb"
require_relative rcPath + "RandomizerCollection.rb"
require_relative rcPath + "Hand.rb"
require_relative rcPath + "Cup.rb"
require_relative rcPath + "Bag.rb"
require_relative basePath + "Throw.rb"
require_relative basePath + "Player.rb"
