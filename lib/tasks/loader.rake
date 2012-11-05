namespace :admin do  
  desc 'load streams'

  task :loadstreams => :environment do

    Thing.create(:thing_type => 2, :name => 'Kahaluu', :lng => -157.841812, :lat=> 21.444522)
    Thing.create(:thing_type => 2, :name => 'Waimanalo', :lng => -157.728359, :lat=> 21.350219)
    Thing.create(:thing_type => 2, :name => 'Waimanalo', :lng => -157.728877, :lat=> 21.349927)
    Thing.create(:thing_type => 2, :name => 'Kawa', :lng => -157.791511, :lat=> 21.405604)
    Thing.create(:thing_type => 2, :name => 'Kawa', :lng => -157.791956, :lat=> 21.404109)
    Thing.create(:thing_type => 2, :name => 'Kawa', :lng => -157.788708, :lat=> 21.400933)
    Thing.create(:thing_type => 2, :name => 'Kawa', :lng => -157.788016, :lat=> 21.400842)
    Thing.create(:thing_type => 2, :name => 'Kawa', :lng => -157.787169, :lat=> 21.400732)
    Thing.create(:thing_type => 2, :name => 'Kawa', :lng => -157.787112, :lat=> 21.400012)
    Thing.create(:thing_type => 2, :name => 'Palolo', :lng => -157.797598, :lat=> 21.293719)
    Thing.create(:thing_type => 2, :name => 'Palolo', :lng => -157.796808, :lat=> 21.295844)
    Thing.create(:thing_type => 2, :name => 'Palolo', :lng => -157.796125, :lat=> 21.29717)
    Thing.create(:thing_type => 2, :name => 'Palolo', :lng => -157.795581, :lat=> 21.298279)
    Thing.create(:thing_type => 2, :name => 'Palolo', :lng => -157.79421, :lat=> 21.299455)
    Thing.create(:thing_type => 2, :name => 'Waiomao', :lng => -157.792151, :lat=> 21.300525)
    Thing.create(:thing_type => 2, :name => 'Pukele', :lng => -157.793388, :lat=> 21.300843)
    Thing.create(:thing_type => 2, :name => 'Kamooalii', :lng => -157.80194, :lat=> 21.404477)
    Thing.create(:thing_type => 2, :name => 'Kamooalii', :lng => -157.802546, :lat=> 21.399261)
    Thing.create(:thing_type => 2, :name => 'Moanalua', :lng => -157.880852, :lat=> 21.373859)
    Thing.create(:thing_type => 2, :name => 'Haku', :lng => -157.892923, :lat=> 21.350961)
    Thing.create(:thing_type => 2, :name => 'Manaiki', :lng => -157.889769, :lat=> 21.349809)
    Thing.create(:thing_type => 2, :name => 'Manoa', :lng => -157.805602, :lat=> 21.314822)
    Thing.create(:thing_type => 2, :name => 'Manoa', :lng => -157.804843, :lat=> 21.314381)
    Thing.create(:thing_type => 2, :name => 'Manoa', :lng => -157.804636, :lat=> 21.314244)
    Thing.create(:thing_type => 2, :name => 'Kawainui', :lng => -157.756097, :lat=> 21.406145)
    Thing.create(:thing_type => 2, :name => 'Kahawai', :lng => -157.723174, :lat=> 21.348201)
    Thing.create(:thing_type => 2, :name => 'Kahawai', :lng => -157.723346, :lat=> 21.347602)
    Thing.create(:thing_type => 2, :name => 'Kahawai', :lng => -157.723939, :lat=> 21.346791)
    Thing.create(:thing_type => 2, :name => 'Kahawai', :lng => -157.724932, :lat=> 21.345899)
    Thing.create(:thing_type => 2, :name => 'Kahawai', :lng => -157.725791, :lat=> 21.345177)

  end
end
