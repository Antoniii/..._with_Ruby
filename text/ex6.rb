# coding: utf-8
lines = []

File.open("text.txt", "r:utf-8") do |review_file|
	lines = review_file.readlines #построчное чтение файла с заданной кодировкой
end

relevant_lines = lines.find_all { |line| line.include?("Я")} #поиск строк с заданным текстом

reviews = relevant_lines.reject { |line| line.include?("Я не") } #удаление строк с заданным текстом

def find_adjective(string)
	word = string.split(" ") #предложения разбиваются на слова
	index = word.find_index("Я") #определяется индекс слова в массиве
	word[index + 1] #возвращает следующее слово за "Я"
end

#puts relevant_lines[0].encoding
puts relevant_lines
puts
p reviews
puts

adjectives = []

'''
reviews.each do |review|
	adjectives << find_adjective(review) #поиск всех слов после "Я"
end

adjectives = reviews.map { |review| find_adjective(review) }#тоже самое через map
'''

adjectives = reviews.map do |review|
	adjective = find_adjective(review)
	"'#{adjective.capitalize}'" #преобразование первой буквы к верхнему регистру 
end								#и заключение слова в кавычки


puts adjectives
