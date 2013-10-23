require 'mini_magick'

customer_name = "Zach Zhao"
address_line1 = "address_line1"
address_line2 = "address_line2"
address_line3 = "address_line3"
phone_number = "phone_number"

text1 = <<EOM
Dear #{customer_name},
We appreciate you! You've been chosen to receive a complimentary
Starbucks Card gift pack for sharing why you love Starbucks. Thank you
for participating in our survey.
EOM

text2 = <<EOM
What you'll enjoy
A P500 Starbucks Card that's ready for your use
A limited edition leather card carrier
Two P300 Starbucks Cards to share with friends

What's next
Please reply YES to this email if your shipping address below is updated.
Otherwise, reply with your new delivery details.(Kindly note that we can
only ship Starbucks Cards gift packs to address in the Philippines.)

#{customer_name}
#{address_line1}
#{address_line2}
#{address_line3}
#{phone_number}

Make every visit to Starbucks a little more rewarding. See how the
Starbucks Card works at www.starbucks.ph/card.

Yours truly,

Starbucks Philippines
EOM

image = MiniMagick::Image.open("04.jpg")
image.fill 'black'
image.font 'Avenir td'
# image.font 'GentiumAlt'
image.draw "text 50,400 \"#{text1} #{text2}\" "

image.write 'output.jpg'
