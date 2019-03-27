def begins_with_r(sample)
  sample.all? do |word|
    word.start_with? "r"
  end
end
def contain_a(sample)
  array = []
  sample.each do |word|
    if word.include? "a"
    array << word
    end
  end
  array
end
def first_wa(sample)
  sample.find do |word|
    word.to_s.start_with? "wa"
  end
end
def remove_non_strings(sample)
  array = []
  sample.each do |word|
    if word.is_a? String
      array << word
    end
  end
  array
end
def count_elements(sample)
  sample.group_by(&:itself).map do |key, value|
    key.merge({:count => value.length})
  end
end
def merge_data(keys, data)
  new_keys_1 = {keys[0].keys.to_a[0] => data.to_a[0].to_a[0][0]}
  new_data_1 = new_keys_1.merge(data[0].values.to_a[0])
  new_keys_2 = {keys[1].keys.to_a[0] => data.to_a[0].to_a[1][0]}
  new_data_2 = new_keys_2.merge(data[0].values.to_a[1])
  [new_data_1, new_data_2]
  
end










