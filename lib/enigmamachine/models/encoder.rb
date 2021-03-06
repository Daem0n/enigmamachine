require File.dirname(__FILE__) + '/video'
require 'net/http'
require 'uri'

# An encoding profile which can be applied to a video.  It has a name and is
# composed of a bunch of EncodingTasks.
#
# The Encoder class can shell out to FFMPeg and trigger the encoding of a Video.
#
class Encoder
  include DataMapper::Resource

  # Properties
  #
  property :id, Serial
  property :name, String, :required => true, :length => (1..254)

  # Associations
  #
  has n, :encoding_tasks

  # Kicks off an FFMpeg encode on a given video.
  #
  def encode(video)
    ffmpeg(encoding_tasks.first, video)
  end

  private

  # Shells out to ffmpeg and hits the given video with the parameters in the
  # given task.  Will call itself recursively until all tasks in this encoder's
  # encoding_tasks are completed.
  #
  def ffmpeg(task, video)
    current_task_index = encoding_tasks.index(task)
    movie = FFMPEG::Movie.new(video.file)
    encoding_operation = proc {
      video.update(:state => 'encoding')
      movie.transcode(File.dirname(video.file) + "/" +
                      File.basename(video.file, File.extname(video.file)) +
                      task.output_file_suffix,
                      task.command) do |p|

        video.update(:progress => (p*100).floor)
      end
    }
    completion_callback = proc {|result|
      if task == encoding_tasks.last
        video.update(:state => 'complete')
        video.notify_complete
      else
        next_task_index = current_task_index + 1
        next_task = encoding_tasks[next_task_index]
        ffmpeg(next_task, video)
      end
    }
    EventMachine.defer(encoding_operation, completion_callback)
  end

end

