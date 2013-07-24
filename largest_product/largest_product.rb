class Series
  def initialize(number)
  	@number = number.to_s
  end

  def digits
  	#uses regular expressions
  	@number_array = @number.scan(/\d/)
  	@number_array.each_index{ |x| @number_array[x] = @number_array[x].to_i }
  end

  def slices(slice_number)
  	#breaks the number into an 2D array of strings based on slice_number
    @number_array = @number.scan(/(?=(\d{#{slice_number}}))/)
    @number_array.each_index{ |x| @number_array[x] = @number_array[x][0].scan(/\d/) }

    #converts number_array into numbers
    @number_array.each_index do |x|
  	  @number_array[x].each_index { |y| @number_array[x][y] = @number_array[x][y].to_i }
  	end
  end

  def largest_product(slice_number)
  	@results_array = []
  	@sorted_results_array = []

  	#checks for appropriate slice number or returns ArgumentError
  	raise ArgumentError if @number.length < slice_number

    #calls method slice to break number down into arrays
    slices(slice_number)

    #multiplies the stuff inside the arrays
    @number_array.each_index do |x|
      final = 1
      @number_array[x].each{ |y| final *= y }
      @results_array[x] = final
    end

    #sorts array
    @sorted_results_array = @results_array.sort

    #returns last value in the array (which will be the largest)
    return @sorted_results_array[-1]
  end

end