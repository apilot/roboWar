# init arays
  # command 1
  @arr1 = Array.new(10,1)
  # command 2
  @arr2 = Array.new(10,1)
# ataka
  #method for attacks

  def attack(arr)
    sleep 1
    i = rand(0..9)
    if arr[i] == 1
      arr[i] = 0
      puts "Робот номер #{i} уничтожен"
    else
      puts "Промахнулись, под номером: #{i} никого нет"
    end
    sleep 1
  end
# check_victory

# statistics

# main
