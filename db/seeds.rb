# Subjects: Built manually to alter their id numbers (based on existing data that was made in dev mode)

subject_1 = Subject.create(name: "Central Park", category: "Parks", address: "Central Park Gr Hill, New York, NY 10025", photo: "http://bit.ly/1LQA5SZ")

subject_2 = Subject.create(name: "Riverside Park", category: "Parks", address: "105th St and Riverside Dr., New York, NY 10025", photo: "http://bit.ly/1MJ1Bp3")

subject_4 = Subject.create(name: "Blue Buffalo Wilderness Salmon Recipe", category: "Food", address: nil, photo: "http://bit.ly/1ku0rRk").update_attribute(:id, 4)

subject_5 = Subject.create(name: "Washington Square Park", category: "Parks", address: "1 Washington Square E, New York, NY 10011", photo: "http://bit.ly/20vepn1").update_column(:id, 5)

subject_6 = Subject.create(name: "Zuke's Hip Action Roasted Beef Recipe", category: "Food", address: nil, photo: "http://bit.ly/1kbOgt7").update_column(:id, 6)

subject_7 = Subject.create(name: "Jawz Hyperflite Frisbee", category: "Toys", address: nil, photo: "jawz-hyperflite.jpg").update_column(:id, 7)

subject_8 = Subject.create(name: "Tompkins Square Park", category: "Parks", address: "500 E 10th St, New York, NY 10009", photo: "http://on.nyc.gov/1XWu3Wi").update_column(:id, 8)

subject_9 = Subject.create(name: "Halo Liv-a-Littles Salmon", category: "Food", address: nil, photo: "http://bit.ly/1L3pIas").update_column(:id, 9)

subject_10 = Subject.create(name: "Kong AirDog Squeakair Ball", category: "Toys", address: nil, photo: "http://bit.ly/1Ow0IQU").update_column(:id, 10)

subject_11 = Subject.create(name: "Kong Wild Knots RopeBird", category: "Toys", address: nil, photo: "http://bit.ly/1MhNCko").update_column(:id, 11)

subject_12 = Subject.create(name: "GREENIES Dental Chews", category: "Food", address: nil, photo: "http://bit.ly/1LZneht").update_column(:id, 12)



# Users: Built manually to alter their id numbers (based on existing data that was made in dev mode)


user_1 = User.create(email: "zhora@me.com", encrypted_password: "$2a$10$Aw4FzE498S5HqOz9qyeNcuZCRkoPB1XheS6V.yjStL56Y91fdpPDm", first_name: "Zhora", location: "New York, NY", avatar: "zhora.jpg").update_column(:id, 2)

user_2 = User.create(email: "pris@me.com", encrypted_password: "$2a$10$8MuEyVbSc42isMtaDtCEvOcMOMmWdTYM2xVEek.8bmpkQ0Wy09UbC", first_name: "Pris", location: "New York, NY", avatar: "pris.jpg").update_column(:id, 3)

user_12 = User.create(email: "carrie@me.com", encrypted_password: "$2a$10$CJiiencnv9IJTEjbmsRJh.DftJ9zphMImSW9DThrF00MAyMkTF/x.", first_name: "Carrie", location: "New York, NY", avatar: "Slack_for_iOS_Upload.jpg").update_column(:id, 12)

user_13 = User.create(email: "boo@me.com", encrypted_password: "$2a$10$85rC.GwaHEwJB72FyN2u5u4zXF6b3cfZmZJ4wyA4cTQjozsYlg.au", first_name: "Boo", location: "New York, NY", avatar: "boo.jpg").update_column(:id, 13)

user_14 = User.create(email: "tuna@me.com", encrypted_password: "$2a$10$2HSkOFGEvc5yBboRHOSK9uj7asCigRcfqXCDH549mlK2ybbsYT31e", first_name: "Tuna", location: "New York, NY", avatar: "tuna.jpg").update_column(:id, 14)

user_15 = User.create(email: "bico@me.com", encrypted_password: "$2a$10$5fMukWPQGtIoATpJ/Q7bneWbw5w.r8IB6/q98XP4JsEqHtaDWFn3y", first_name: "Bico", location: "New York, NY", avatar: "bico.jpg").update_column(:id, 15)



# Reviews: Built manually to alter their id numbers (based on existing data that was made in dev mode)

review_1 = Review.create(gif_response: "http://media0.giphy.com/media/12wKTpXBvyXRgA/giphy.gif", user_id: 2, subject_id: 6, text_response: "amazing!")

review_2 = Review.create(gif_response: "http://media2.giphy.com/media/aIfWL4BhK1AD6/giphy.gif", user_id: 3, subject_id: 6, text_response: "it sucks!")

review_3 = Review.create(gif_response: "http://media0.giphy.com/media/2dQ3FMaMFccpi/giphy.gif", user_id: 2, subject_id: 7, text_response: "Luv this")

review_4 = Review.create(gif_response: "http://media1.giphy.com/media/E2MeuITk1M4pi/giphy.gif", user_id: 12, subject_id: 7, text_response: "this is the best")

review_5 = Review.create(gif_response: "http://media1.giphy.com/media/GfAD7Bl016Gfm/giphy.gif", user_id: 3, subject_id: 7, text_response: "ugh")

review_6 = Review.create(gif_response: "http://media2.giphy.com/media/vhZTTDmz4rLKo/giphy.gif", user_id: 13, subject_id: 7, text_response: "dont know how to use")

review_7 = Review.create(gif_response: "http://media2.giphy.com/media/CcNDADuaWhXdm/giphy.gif", user_id: 14, subject_id: 7, text_response: "wut?")

review_8 = Review.create(gif_response: "http://media2.giphy.com/media/4uYDcwTVujCak/giphy.gif", user_id: 3, subject_id: 4, text_response: "wut is this")

review_9 = Review.create(gif_response: "http://media2.giphy.com/media/y8Mz1yj13s3kI/giphy.gif", user_id: 2, subject_id: 4, text_response: "great!")

review_10 = Review.create(gif_response: "http://media0.giphy.com/media/LXPpKhREkezN6/giphy.gif", user_id: 2, subject_id: 8, text_response: "Never been")

review_11 = Review.create(gif_response: "http://media1.giphy.com/media/ZOln4JxCoZay4/giphy.gif", user_id: 2, subject_id: 1, text_response: "luv luv luv")

review_12 = Review.create(gif_response: "http://media1.giphy.com/media/ke1KJom7MkYcE/giphy.gif", user_id: 2, subject_id: 5, text_response: "blaaa")

review_13 = Review.create(gif_response: "http://media4.giphy.com/media/hZj44bR9FVI3K/giphy.gif", user_id: 2, subject_id: 2, text_response: "Yay!")

review_14 = Review.create(gif_response: "http://media0.giphy.com/media/12zfAjyQ3RZNSw/giphy.gif", user_id: 2, subject_id: 9, text_response: "yum")

review_15 = Review.create(gif_response: "http://media4.giphy.com/media/LwbPCgvhn79Be/giphy.gif", user_id: 2, subject_id: 11, text_response: "mine")

review_16 = Review.create(gif_response: "http://media3.giphy.com/media/eobmgPFdmj7oI/giphy.gif", user_id: 2, subject_id: 10, text_response: "squeaky")

review_17 = Review.create(gif_response: "http://media1.giphy.com/media/b21leMwlDYLyo/giphy.gif", user_id: 2, subject_id: 12, text_response: "delicious")

review_18 = Review.create(gif_response: "http://media0.giphy.com/media/yVsYYzEOX3YxW/giphy.gif", user_id: 15, subject_id: 7, text_response: "yay")

review_19 = Review.create(gif_response: "http://media1.giphy.com/media/GYx3rLjdBPfyM/giphy.gif", user_id: 15, subject_id: 9, text_response: "yessss")

review_20 = Review.create(gif_response: "http://media3.giphy.com/media/SXcgjAPQnWOhW/giphy.gif", user_id: 15, subject_id: 5, text_response: "never")

review_21 = Review.create(gif_response: "http://media1.giphy.com/media/IYyn46tl55Yyc/giphy.gif", user_id: 15, subject_id: 11, text_response: "yas")
