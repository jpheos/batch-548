class Task
  attr_reader :id
  attr_accessor :title, :description, :done

  def initialize(args = {})
    @id          = args[:id]
    @title       = args[:title]
    @description = args[:description]
    @done        = args[:done] || false
  end

  def self.find(id)
    rows = DB.execute("SELECT * FROM tasks WHERE id = ?", id)
    return nil if rows.empty?

    row = rows.first
    Task.new(row.transform_keys(&:to_sym))
  end

  def self.all
    rows = DB.execute("SELECT * FROM tasks")
    rows.map do |row|
      Task.new(row.transform_keys(&:to_sym))
    end
  end

  def save
    if @id
      sql = "UPDATE tasks SET title = '#{title}', description = '#{description}', done = #{done} WHERE id = ?"
      DB.execute(sql, @id)
    else
      sql = "INSERT INTO tasks (title, description, done) VALUES ('#{title}', '#{description}', #{done})"
      DB.execute(sql)
      @id = DB.last_insert_row_id
    end
  end

  def destroy
    DB.execute("DELETE FROM tasks WHERE id = ?", id)
  end
end
