class BaseRepository
  def initialize(csv_file)
    @csv_file = csv_file
    @elements = []
    @next_id = 1
    load_csv if File.exist? csv_file
  end

  def create(element)
    element.id = @next_id
    @elements << element
    @next_id += 1
    save_csv
  end

  def all
    @elements
  end

  def find(id)
    @elements.find { |element| element.id == id }
  end

  private

  def load_csv
    csv_options = { headers: :first_row, header_converters: :symbol }
    CSV.foreach(@csv_file, csv_options) do |row|
      row[:id] = row[:id].to_i
      @elements << row_to_element(row)
    end
    @next_id = @elements.empty? ? 1 : (@elements.last.id + 1)
  end

  def save_csv
    CSV.open(@csv_file, 'wb') do |csv|
      csv << csv_headers
      @elements.each do |element|
        csv << element_to_row(element)
      end
    end
  end
end
