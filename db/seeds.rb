User.create!([
  {email: "crokobit@gmail.com", encrypted_password: "$2a$10$1E8IgONdwEBnPdomwXyPweH0gwzVNdL5jjNqNJj.9wy/HujCOKjqG", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 3, current_sign_in_at: "2015-06-14 13:20:13", last_sign_in_at: "2015-06-14 13:01:50", current_sign_in_ip: "::1", last_sign_in_ip: "::1"}
])
Volunteer.create!([
  {age: 27, name: "何泓毅", note: "WORK QQ", email: "crokobit@gmail.com"},
  {age: 37, name: "李世隆", note: "GOOD", email: "crokobit@gmail.com"},
  {age: 30, name: "林永在", note: "MONK", email: "crokobit@gmail.com"}
])
ZenPeriod.create!([
  {start_date: "2015-06-04", end_date: "2015-06-11", name: "青年禪七", zen_type: "", location: "ddm_chan"},
  {start_date: "2015-06-18", end_date: "2015-06-25", name: "念佛禪七", zen_type: "", location: "ddm_chan"},
  {start_date: "2015-06-25", end_date: "2015-08-02", name: "默照禪七", zen_type: "", location: "ddm_chan"},
  {start_date: "2015-07-29", end_date: "2015-09-05", name: "初階禪七", zen_type: "", location: "taitung"},
  {start_date: "2015-09-07", end_date: "2015-09-11", name: "中觀教理研習營", zen_type: "", location: "ddm_chan"},
  {start_date: "2015-09-20", end_date: "2015-09-30", name: "話頭禪十", zen_type: "", location: "ddm_chan"}
])
