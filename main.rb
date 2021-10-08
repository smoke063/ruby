# frozen_string_literal: true

arr = %i[first second third]
hash = arr.to_h { |item| [item, item] }
p hash

hash = %w[first second third].map.with_index { |el, index| "#{el}:#{el.chars.first.upcase}#{el[el.size-2]}#{el[el.size-1]}(#{index + 1})".split(':') }.to_h # {first: 'Fst (1)', second: 'Snd (2)', third: 'Trd (3)'}
p hash

text = 'Возьмите текст этого задания и извлеките из него все слова, количество символов в которых больше 5. Подсчитайте количество слов и выведите их алфавитном порядке.'
t = text.split.filter { |t| t.gsub(",", "").size > 5 }.sort
puts t.length
puts t

text = 'Возьмите текст этого задания и извлеките из него все слова, которые начинаются с символа \'и\'. Сформируйте из них список уникальных слов и выведите их в порядке увеличения количества символов в слове.'
puts text.split.select { |i| i.start_with? 'и' }.uniq.sort_by { |i| i.count('и') }

ar1 = %w[red orange yellow green gray indigo violet]
ar2 = %w[красный оранжевый желтый зеленый голубой синий фиолетовый]
# Создайте из них хэш:  {red: 'красный', orange: 'оранжевый', yellow: 'желтый', green: 'зеленый', blue: 'голубой', indigo: 'синий', violet: 'фиолетовый'}
p ar1.each_with_index.to_h { |item, i| [item, ar2[i]] }
