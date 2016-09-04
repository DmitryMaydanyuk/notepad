class Post

  def initialize
    @creatrd_at = Time.now
    @text = nil
  end

  def read_from_concole
    #todo
  end

  def to_string
    #todo
  end

  def save
    file = File.new(file_path, "w:UTF-8")

    for item in to_string do
      file.puts(item)
    end

    file.close
  end

  def file_path
    current_path = File.dirname(__FILE__)

    file_name = @creatrd_at.strftime("#{self.class.name}_%Y-%m-%d_%H-%M-%S.txt")

    return current_path + "/" + file_name
  end
end