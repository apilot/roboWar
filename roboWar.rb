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
  def victory?
    robots_left1 = @arr1.count { |x| x==1 }
    robots_left2 = @arr2.count { |x| x==1 }

    if robots_left1 ==0
      puts "Команда 2 победила, в команде осталось #{robots_left2} роботов"
      return true
    end
    if robots_left2 ==0
      puts "Команда 1 победила, в команде осталось #{robots_left1} роботов"
      return false
    end
    false
  end
# statistics

# main
