class Api::SongsController < ApplicationController
  def index
    @songs = Song.all
    render "index.json.jb"
  end

  def create
    @song = Song.new(
      title: params[:title],
      album: params[:ablum],
      artist: params[:artist],
      year: params[:year],
    )
    @song.save
    render "show.json.jb"
  end

  def show
    # http://localhost:3000/api/songs/1
    @song = Song.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @song = Song.find_by(id: params[:id])
    @song.title = params[:title] || @song.title
    @song.album = params[:album] || @song.album
    @song.artist = params[:artist] || @song.artist
    @song.year = params[:year] || @song.year
    @song.save
    render = "show.json.jb"
  end
end
