class Prefecture < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },     { id: 2, name: 'Hokkaido' },   { id: 3, name: 'Aomori' },
    { id: 4, name: 'Iwate' },   { id: 5, name: 'Miyagi' },   { id: 6, name: 'Akita' },
    { id: 7, name: 'Yamagata' },   { id: 8, name: 'Hukushima' },   { id: 9, name: 'Ibaraki' },
    { id: 10, name: 'Tochigi' },  { id: 11, name: 'Gunma' },  { id: 12, name: 'Saitama' },
    { id: 13, name: 'Chiba' },  { id: 14, name: 'Tokyo' },  { id: 15, name: 'Kanagawa' },
    { id: 16, name: 'Niigata' },  { id: 17, name: 'Toyama' },  { id: 18, name: 'Ishikawa' },
    { id: 19, name: 'Hukui' },  { id: 20, name: 'Yamanashi' },  { id: 21, name: 'Nagano' },
    { id: 22, name: 'Gihu' },  { id: 23, name: 'Shizuoka' },  { id: 24, name: 'Aichi' },
    { id: 25, name: 'Mie' },  { id: 26, name: 'Shiga' },  { id: 27, name: 'Kyoto' },
    { id: 28, name: 'Osaka' },  { id: 29, name: 'Hyogo' },  { id: 30, name: 'Nara' },
    { id: 31, name: 'Wakayama' }, { id: 32, name: 'Tottori' },  { id: 33, name: 'Shimane' },
    { id: 34, name: 'Okayama' },  { id: 35, name: 'Hiroshima' },  { id: 36, name: 'Yamaguchi' },
    { id: 37, name: 'Tokushima' },  { id: 38, name: 'Kagawa' },  { id: 39, name: 'Ehime' },
    { id: 40, name: 'Kochi' },  { id: 41, name: 'Hukuoka' },  { id: 42, name: 'Saga' },
    { id: 43, name: 'Nagasaki' },  { id: 44, name: 'Kumamoto' },  { id: 45, name: 'Oita' },
    { id: 46, name: 'Miyagi' },  { id: 47, name: 'Kagoshima' }, { id: 48, name: 'Okinawa' }
  ]

  include ActiveHash::Associations
  has_many :companies
end
