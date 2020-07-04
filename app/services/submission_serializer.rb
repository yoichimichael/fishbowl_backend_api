class SubmissionSerializer
  def initialize(submission_object)
    @submission = submission_object
  end

  def to_serialized_json
    @submission.to_json(:only => [:content])
  end
end