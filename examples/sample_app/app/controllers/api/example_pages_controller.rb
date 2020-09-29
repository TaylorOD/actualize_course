class Api::ExamplePagesController < ApplicationController
  def hello_method
    @message = "Hello!"
    render "hello.json.jb"
  end

  def silly_method
    @message = "Why did the API cross the Server? To get to the other side!"
    render "hello.json.jb"
  end

  def bob_method
    @message = "Bob Bob Bob Bob Bob Bob Bob Bob Bob Bob"
    render "hello.json.jb"
  end

  def multiply_method
    @message = ("Dog, " * 100)
    render "hello.json.jb"
  end
end
