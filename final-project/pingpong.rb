#This program is to create a 2D Ping-Pong game for 2 players
# Author: Nguyen Thu Huyen - Student ID: 190033
# This is the final project for Programming Language, Spring 2022, Fulbright University Vietnam instructed by
# Dr. Nanette Marie Simenas
# The original idea was inspired by Mario Visic, https://github.com/mariovisic/ruby2d-games/tree/main/03%20-%20Pong. I am levelling up the project by allowing 2 players interactive at a time and calculating score for both players.
# I also learn the basic code for Ruby 2d, https://www.ruby2d.com/learn/get-started/

require 'ruby2d' #a application in Ruby to create games
set title: 'Pong with Fun' #set title for the game
set background: 'black' #set background of the game
PING = Music.new('ping.wav') #music when the ball hit the paddle
PONG = Music.new('pong.wav') #music when the ball hit the border
WIN = Music.new('win.wav') #music when players win

class Paddle
  attr_accessor :dir, :x, :y, :height, :width
  #constructor
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
  #draw a rectangle (visualize the paddle in 2D game)
  def create
    Rectangle.new(x: @x, y: @y, height: @height, width: @width)
  end
  #make the paddle move
  def move
    if dir == :down
      @y = [@y + @speed, y_max].min #when the paddle moves to the bottom of the window, it stops
    elsif dir == :up
      @y = [@y - @speed, 0].max #when the paddle moves to the top of the window, it stops
    end
  end
  def y_max
    Window.height - @height
  end
end

class Ball
  attr_accessor :x, :y, :radius
  #constructor
  def initialize
    @radius = 10
    @x_dir = 6
    @y_dir = 6
    @x = Window.width/2 - @radius/2
    @y = Window.height/2 -@radius/2
  end
  #draw a circle (visualize the ball in 2D game)
  def create
    Circle.new(
      x: @x, y: @y,
      radius: @radius,
      sectors: 32,
      color: 'orange',
      z: 10
    )
  end
  #make the ball move
  def move
    if @y <= 0 || @y >= Window.height #when ball reaches the top or bottom of the window
      PONG.play
      @y_dir = -@y_dir
    end
    @x += @x_dir
    @y += @y_dir
  end
  def out_bound? #when ball is out of bound
    @x <= 0 || @x >= Window.width
  end
  def bounce #when the paddle hits the ball
    @x_dir = -@x_dir
  end
end

class Match
  attr_accessor :score, :left_score_display, :right_score_display
  #constructor
  def initialize
    @score = {"left" => 0, "right" => 0}
  end
  def score_update (ball)
    if ball.x <= Window.width / 2 #when ball is out of bound in the left, the right player wins
      @score["right"] += 1
    elsif ball.x >= Window.width / 2 #when ball is out of bound in the right, the left player wins
      @score["left"] += 1
    end
  end
end
player1 = Paddle.new(:left) #create first player
player2 = Paddle.new(:right) #create second player
ball = Ball.new #create a new ball
match = Match.new #create a new match

update do
  clear
  set resizable: false
  dotted_line = 16.times do |i| #draw the dotted line in the middle of the window
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
  #if player 2 successfully hits the ball, the ball bounce back
  if ball.y <= player2.y + player2.height && ball.y + 2 * ball.radius >= player2.y &&
    [ball.x + 2 * ball.radius, player2.x + player2.width].min - [ball.x, player2.x].max > 0
    PING.play
    ball.bounce
  end
  #if player 1 successfully hits the ball, the ball bounce back
  if ball.y <= player1.y + player1.height && ball.y + 2 * ball.radius >= player1.y &&
    [ball.x + 2 * ball.radius, player1.x + player1.width].min - [ball.x, player1.x].max > 0
    PING.play
    ball.bounce
  end
  # if the ball is out of bound, update score for the player, release new ball
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

#control the paddle
on :key_down do |event|
  if event.key == "down" #player 2 presses "down" to move the paddle down
    player2.dir = :down
  end
  if event.key == "up" #player 2 presses "up" to move the paddle up
    player2.dir = :up
  end
  if event.key == "a" #player 1 presses "a" to move the paddle up
    player1.dir = :up
  end
  if event.key == "z" #player 1 presses "z" to move the paddle down
    player1.dir = :down
  end
end
on :key_up do |event| #if players do not press any keys, do nothing
  player1.dir = nil
  player2.dir = nil
end
show
