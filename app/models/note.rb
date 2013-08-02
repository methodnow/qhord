class Note < ActiveRecord::Base

  def up_semitone(semitones)
    case new_scale_weight = (scale_weight + semitones)%12
    when 0
      self
    else
      Note.find_by_scale_weight(new_scale_weight)
    end
  end

  def down_semitone(semitones)
    case new_scale_weight = (scale_weight + 12 - semitones)%12
    when 0
      self
    else
      Note.find_by_scale_weight(new_scale_weight)
    end
  end

  def root
    name[0]
  end

  def root_name
    case accidental
    when "#"
      "#{root}_sharp"
    when "b"
      "#{root}_flat"
    else
      root
    end
  end

  def accidental
    name.try(:[],1)
  end

  def alt
    alt_name[0]
  end

  def alt_accidental
    alt_name.try(:[],1)
  end
end
