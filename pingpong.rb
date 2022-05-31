require 'ruby2d'
set title: 'Pong with Fun'
set background: 'black'
PING = Music.new('ping.wav')
PONG = Music.new('pong.wav')
WIN = Music.new('win.wav')

class Paddle
  attr_accessor :dir, :x, :y, :height, :width
  def initialize(side)
    @y = 200
    @dir = nil
    @height = 100
    @width = 10
    @speed = 10
    if side == :left
      @x = 20
    else
      @x = Window.width - 20
    end
  end
  def create
    Rectangle.new(x: @x, y: @y, height: @height, width: @width)
  end
  def move
    if dir == :down
      @y = [@y + @speed, y_max].min
    elsif dir == :up
      @y = [@y - @speed, 0].max
    end
  end
  def y_max
    Window.height - @height
  end
end
class Ball
  attr_accessor :x, :y, :radius
  def initialize
    @radius = 10
    @x_dir = 6
    @y_dir = 6
    @x = Window.width/2 - @radius/2
    @y = Window.height/2 -@radius/2
  end
  def create
    Circle.new(
      x: @x, y: @y,
      radius: @radius,
      sectors: 32,
      color: 'orange',
      z: 10
    )
  end
  def move
    if @y <= 0 || @y >= Window.height
      PONG.play
      @y_dir = -@y_dir
    end
    @x += @x_dir
    @y += @y_dir
  end
  def out_bound?
    @x <= 0 || @x >= Window.width
  end
  def bounce
    @x_dir = -@x_dir
  end
end
class Match
  attr_accessor :score, :left_score_display, :right_score_display
  def initialize
    @score = {"left" => 0, "right" => 0}
  end
  def score_update (ball)
    if ball.x <= Window.width / 2
      @score["right"] += 1
    elsif ball.x >= Window.width / 2
      @score["left"] += 1
    end
  end
end
player1 = Paddle.new(:left)
player2 = Paddle.new(:right)
ball = Ball.new
match = Match.new

#music = Music.new('music.wav')
#music.loop = true
#music.play

update do
  clear
  set resizable: false
  dotted_line = 16.times do |i|
    Rectangle.new(
      width: 5,
      height: 15,
      x: Window.width / 2 - 2.5,
      y: i * 30,
      color: 'gray'
    )
  end
  @left_score_display = Text.new(
    match.score['left'],
    x: Window.width / 2 - 100,
    y: 5,
    color: 'gray',
    size: 40
  )
  @right_score_display = Text.new(
    match.score['right'],
    x: Window.width / 2 + 60,
    y: 5,
    color: 'gray', size: 40
  )
  if ball.y <= player2.y + player2.height && ball.y + 2 * ball.radius >= player2.y &&
    [ball.x + 2 * ball.radius, player2.x + player2.width].min - [ball.x, player2.x].max > 0
    PING.play
    ball.bounce
  end
  if ball.y <= player1.y + player1.height && ball.y + 2 * ball.radius >= player1.y &&
    [ball.x + 2 * ball.radius, player1.x + player1.width].min - [ball.x, player1.x].max > 0
    PING.play
    ball.bounce
  end
  if ball.out_bound?
    WIN.play
    match.score_update(ball)
    ball = Ball.new
  end
  player1.create
  player2.create
  ball.create
  ball.move
  player1.move
  player2.move
end

on :key_down do |event|
  if event.key == "down"
    player2.dir = :down
  end
  if event.key == "up"
    player2.dir = :up
  end
  if event.key == "a"
    player1.dir = :up
  end
  if event.key == "z"
    player1.dir = :down
  end
end
on :key_up do |event|
  player1.dir = nil
  player2.dir = nil
end
show