class StronyStatyczneController < ApplicationController


  def home
    @result = ''

  end


  def calculate


    ary = Array.new
    uszeregowane = Array.new



    ary = params[:list][0]

    list = ary.split(', ')

    list.each{ |el| uszeregowane.push(Integer(el)) }

    @result = uszeregowane.sort! { |x,y| y <=> x } .join(", ")



    render :action => :home
  end






  def bubble_sort(list)
    return list if list.size <= 1 # already sorted
    swapped = true
    while swapped do
      swapped = false
      0.upto(list.size-2) do |i|
        if list[i] > list[i+1]
          list[i], list[i+1] = list[i+1], list[i] # swap values
          swapped = true
        end
      end
    end

    list

    @result = list
  end






  def pomoc
  end

  def onas
  end

  def kontakt
  end




end
