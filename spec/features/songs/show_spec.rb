require 'rails_helper'

RSpec.describe 'the songs show page' do
  it 'displays the song title' do
    artist = Artist.create(name: 'Carly Rae Jepsen')
    song = artist.songs.create!(title: "I Really Like You", length: 345, play_count: 345345)
    song_2 = artist.songs.create!(title: "Call Me Maybe", length: 347, play_count: 77554)
    visit "/songs/#{song.id}"
    save_and_open_page
    expect(page).to have_content(song.title)
    expect(page).to have_content(artist.name)
  end

  it 'displays the name of artist for the song'

end
