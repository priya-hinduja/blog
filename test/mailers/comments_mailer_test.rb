require "test_helper"

class CommentsMailerTest < ActionMailer::TestCase
  test "submitted" do
    mail = CommentsMailer.submitted comments(:one)
    assert_equal "There is a new comment on your post!", mail.subject
    assert_equal ["hindujauser@gmail.com"], mail.to
    assert_equal ["from@example.com"], mail.from
  end

end
