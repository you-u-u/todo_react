users = [
  {
    name: 'A',
    role: 'general'
  },
  {
    name: 'B',
    role: 'general'
  },
  {
    name: 'C',
    role: 'admin'
  },
  {
    name: 'C',
    role: 'general'
  },
  {
    name: 'D',
    role: 'admin'
  }
]
users.select{ |user| user[:role] == "general" }.map{ |user| user[:name] + 'さん' }