# init arays
  # command 1
  @arr1 = Array.new(10,100)
  # command 2
  @arr2 = Array.new(10,100)
# ataka
  #method for attacks

  def attack(arr)
    sleep 1
    i = rand(0..9)
    if arr[i] >= 1
      h = rand(30..70)
      arr[i] -= h
      if arr[i] < 1
        arr[i] = 0
        puts "Робот номер #{i} уничтожен"
      else
        puts "Робот номер #{i} ранен, осталось #{arr[i]}% жизни"
      end
    else
      puts "Промахнулись, под номером: #{i} никого нет"
    end
    sleep 1
  end
# check_victory
  def victory?
    robots_left1 = @arr1.count { |x| x>=1 }
    robots_left2 = @arr2.count { |x| x>=1 }

    if robots_left1 ==0
      puts "Команда 2 победила, в команде осталось #{robots_left2} робота(ов)"
      return true
    end
    if robots_left2 ==0
      puts "Команда 1 победила, в команде осталось #{robots_left1} робота(ов)"
      return true
    end
    false
  end
# statistics
def stats
  cnt1 = @arr1.count { |x| x >= 1 }
  cnt2 = @arr2.count { |x| x >= 1 }
  puts "1 команда: #{cnt1} роботов в строю"
  puts "2 команда: #{cnt2} роботов в строю"
end
# main
loop do
  puts 'Первая команда наносит удар..'
  attack(@arr2)
  exit if victory?
  stats
  sleep 1
  puts

  puts 'Вторая команда наносит удар..'
  attack(@arr1)
  exit if victory?
  stats
  sleep 1
  puts
end
