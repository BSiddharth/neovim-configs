local logo = [[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡀⠤⠠⠐⠒⠀⠉⣉⣉⠀⠁⠀⠀⠄⠤⠤⠬⠤⠭⢈⡉⠍⢁⠒⡒⠀⠤⠀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⠤⠐⠒⣋⢁⡀⢀⢲⣔⣂⣀⣒⣊⣴⣚⢁⡤⣍⣻⣛⣒⣺⠶⣬⣁⣤⣍⡋⠝⢒⠴⠭⢦⣀⡒⣤⣉⡐⠂⠤⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠤⢒⠈⠀⣀⣤⣴⠿⠖⠯⠹⠛⠓⠒⠛⠛⢿⠿⣷⠾⢿⢾⡿⢯⣙⣑⣋⠛⣽⠛⢛⡩⣟⣟⣢⣽⣶⣦⣤⣀⣛⣏⠉⠛⡓⠦⢄⣁⡒⠠⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠄⢂⣁⣴⠞⠒⣊⡝⡋⢁⣠⣠⣤⣴⣴⡴⣿⢲⡖⣮⣍⡛⠙⢺⡿⣷⡤⠶⣏⢿⣻⣿⠾⣞⣓⣛⣛⠻⠟⠛⠛⢿⣻⠛⣗⣩⣭⣷⡟⢻⡉⢛⠲⢤⣀⡈⠐⡠⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠐⣩⣴⢞⣩⣤⣍⣁⡐⡺⡆⠴⠟⠋⠉⠭⢛⠻⣿⣟⣿⣛⣿⡱⣯⡵⣶⢫⣿⡷⣍⣸⣟⣫⠭⠿⠛⠉⠉⠉⢁⠤⠤⢤⡆⣽⣿⢟⣛⣁⣁⣤⣄⣜⣿⣽⣶⣼⣿⣴⣭⣆⢈⠂⢄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠔⣨⣴⣿⣯⠰⢟⣟⠭⡤⣲⣏⡔⠒⢂⣤⡦⣶⣶⢶⡔⠙⣿⣾⣽⣷⣿⣳⣿⣽⢿⡽⠖⠋⢁⣀⣤⣀⣔⣀⠤⢄⣿⣿⡟⣶⣦⣾⣿⠿⣮⣿⣯⣉⣿⣿⣿⣟⠋⠉⠉⠛⠿⣯⣿⣧⣝⣞⠯⢆⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠔⠊⠠⣼⣷⣿⣷⢿⣞⣯⢆⡍⣻⡿⣙⣳⣦⠾⣿⣿⣭⣷⣎⣄⣴⣿⣟⡿⣿⣿⡿⢿⣛⣭⡀⣠⣦⣵⣟⡿⣴⣿⠞⠃⠀⠹⣿⣿⣿⣿⣿⣹⣿⣿⣿⣿⣝⢼⢻⡿⣿⣷⣖⣤⣐⣄⢍⠻⣿⣾⣝⢿⣯⣜⡈⠢⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠔⠁⢀⣤⣾⣿⣿⣯⢖⣋⣍⣼⣟⣩⡞⣿⣛⣿⣶⠿⢻⣿⡿⣯⡻⣝⠿⣞⡾⣽⣿⣭⠞⠨⣋⠁⢋⣿⣿⣯⣿⣿⣿⣿⣿⢶⣄⣦⣿⣿⣿⡉⢈⠓⣿⡁⠈⢉⠙⡏⣿⡿⡿⠋⠉⢽⣯⣿⢭⣧⣴⡽⣿⣿⣶⣯⣷⡆⠈⣤⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠊⠀⣠⣴⣿⣿⣿⣿⡿⣱⣭⡿⣳⣿⣋⣩⣿⣟⣳⡳⡏⣁⡚⣩⣷⣳⢳⡯⣟⠺⠹⣞⣳⢶⣿⣶⣤⡾⣿⣿⢻⡗⣯⣿⣿⣿⡿⢾⣿⣿⣿⣿⣿⣿⣆⣽⣸⣄⣠⣿⣡⣷⣽⡅⠀⢠⠀⢀⣈⢻⣿⣷⣿⣽⣿⣿⣿⣿⣶⣼⣿⣹⣷⢕⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠞⠀⠐⣿⣿⣿⣿⣿⣻⣟⣴⣿⣿⣳⣟⣳⣿⣿⡟⡒⠙⣛⡽⣿⠋⣽⢧⢯⣳⢿⣭⣛⣟⡼⡵⠹⣖⣫⠷⣾⣿⣳⢟⣶⣿⣿⡿⠟⣻⣾⣿⣷⣯⣿⣿⣿⣿⣿⣷⣽⣿⣿⣿⣿⣿⣿⣳⡌⠦⣄⠋⣮⡿⣿⣿⣿⣿⣻⣿⣯⣿⣿⣿⣷⣿⣮⣷⢕⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠔⠁⠐⣠⣼⣿⣿⣿⣿⡧⣿⣧⣦⣿⣯⢵⣻⣹⣿⣾⠛⣡⣩⡲⠧⣷⣾⡹⣞⡧⢟⡽⣲⡽⢾⣽⢟⡯⠔⠒⣼⣟⣰⣟⡿⣿⠋⠁⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣮⣶⣄⡀⢘⣿⣽⠿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⡽⡻⣿⣱⡤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⢃⢤⣿⣻⣿⣿⣿⣿⡿⣿⣾⣯⢙⠿⢿⣷⣞⣩⣿⣭⡴⣓⣼⠯⢙⣪⠵⡼⣋⠿⡽⢊⡴⢧⣟⣳⢮⢣⢌⢦⡊⠴⣨⣿⣿⣿⣧⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣎⣿⣿⣿⣟⣿⣿⣿⣿⣿⣿⣿⣭⡺⣳⣶⣮⠢⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠌⢠⣷⣏⣿⣿⣿⣿⢻⣿⠐⠋⣹⡏⠈⣦⣾⢻⢋⣵⣾⣷⢿⠟⠩⢈⣟⢌⠲⡱⣯⡟⣶⢫⡞⡽⡲⢧⠏⣞⡸⣆⢳⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡷⡑⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⢂⣼⣽⣿⡿⠻⠋⣿⣾⣽⡧⢒⣽⡟⣼⡇⣿⣿⣿⢿⣾⢿⢫⣧⣀⡿⢏⢫⠚⣩⣵⣶⣬⣵⣧⣼⣿⣿⣿⣿⣿⣷⢲⢹⣿⠟⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣱⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠽⣎⢆⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⡔⢀⣾⣟⡾⣿⣦⡔⡚⢿⣾⣉⣴⣿⣿⠟⣻⣷⢿⣿⡿⣼⣻⢆⣿⣿⡋⢤⣲⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⢟⡿⣟⣈⣽⠿⠉⣰⣾⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⢻⣧⠢⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠜⣠⣾⣿⣽⣿⣿⣿⣿⣄⣩⠟⣡⣿⣿⣿⣷⣭⣿⣏⢿⣯⣿⣷⢎⣽⢷⣿⣐⢤⣿⣿⣿⣿⣿⣿⣿⢟⣿⣥⣶⢹⢽⣿⣿⡿⣍⣶⡟⢫⣿⣻⣿⣿⣿⣿⡦⣿⣍⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⡻⣾⣷⡡⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠜⣰⣿⣿⡿⣿⣿⣿⣿⣭⣿⣷⣿⣿⣿⣿⠟⡣⠺⠟⠻⣿⣿⣼⣿⡗⢻⣽⣿⣽⣿⣿⣿⣿⣾⣿⣟⡿⢻⣏⣠⣾⣽⣿⣿⢿⡿⠿⣯⣷⣄⣻⣝⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⡟⣿⣿⣿⣧⣿⢯⣷⣡⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠌⣀⣿⣛⣽⠃⠻⠿⠿⢿⠋⢘⣿⣻⡿⢳⣵⠞⠓⠫⣕⣦⣌⢻⣿⣿⢲⡽⣷⣟⡼⣿⣿⣿⣾⣿⣿⣿⣿⣛⣽⢻⣿⣿⣷⣿⣽⣿⣿⣷⣤⢮⡻⠿⣿⣿⣿⣿⣹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⡿⠹⣿⣏⠉⡟⣯⢿⣻⣷⡡⠀⠀⠀⠀⠀
⠀⠀⠀⠀⡘⡰⣿⡿⣿⣿⣧⣄⠴⣀⣜⣠⣿⣿⠛⢀⡟⢡⡤⠶⡛⠪⣯⢻⣈⢿⣫⣗⣻⣼⣿⢶⣿⣾⣿⣿⣿⣿⢯⢾⠽⢻⣿⣿⠟⠟⣿⣿⣿⣿⣿⣿⣿⣷⣿⣷⣽⣿⣻⡿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣿⣿⣿⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣼⣿⣿⣿⣿⣿⣿⣿⠀⢷⡜⢿⣿⣿⣵⢡⠀⠀⠀⠀
⠀⠀⠀⢠⢡⣷⣿⣷⣨⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⠘⠏⣿⠐⡀⡇⣄⣿⣞⣯⠸⡿⠳⣿⣿⢿⣾⡷⡽⠛⣿⣝⣮⣟⢣⡶⣿⣿⡇⢰⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣷⣶⣿⣯⣹⣟⣿⣟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣗⣳⡺⣿⣿⣻⣧⠃⠀⠀⠀
⠀⠀⢀⠃⣾⣿⣿⣿⢿⣮⡙⠻⣿⣽⣿⣿⣿⢿⣿⡐⠀⠉⠊⡜⣰⣿⡿⣿⡯⣷⣷⡄⣻⣹⣯⣯⣻⣿⣿⡻⣾⡷⠮⣵⣶⡿⣿⣿⣿⠶⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⡿⠟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⡟⢿⣹⣿⣯⡟⡀⠀⠀
⠀⠀⡜⣸⡟⢿⡿⠃⣾⣿⣿⣷⣾⣿⣿⣿⣿⣿⣿⣷⣖⣤⣾⣼⣷⣗⠃⢠⣿⣻⣿⣿⣿⣭⣿⣿⣿⣿⣿⣿⣦⣹⡻⣿⣛⣧⣊⣡⣯⣤⣼⣯⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣏⢙⣿⣿⣿⣿⣿⣷⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣇⣿⣿⣿⣿⡽⣱⠀⠀
⠀⢠⢡⣿⣷⡾⣧⠀⣿⣿⣿⣿⣿⣿⡟⠿⣿⣿⣿⣿⣵⣷⣿⣿⣿⣧⠖⣿⣿⣷⡿⢻⣿⣿⣿⣿⣿⣿⣿⢿⣿⣽⣿⣿⣿⣾⣟⣿⠿⢻⣍⣻⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡽⣯⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⡃⡄⠀
⠀⡌⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠛⢯⡖⠘⠉⢿⣽⣿⣿⣿⢿⠟⢃⣴⣿⣿⣿⢿⢵⣿⣿⣿⣿⣿⣯⢞⣞⣹⡟⠧⠉⠛⠿⣿⣿⣮⡤⡹⠟⢿⣿⣿⣿⣿⣿⣿⣟⣛⣯⡷⣟⢫⡵⣯⣿⣿⣿⣿⣿⣿⣿⣿⣟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠠⠀
⢀⠁⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⡎⢀⣴⠀⣿⣿⣿⣿⣰⣿⣶⣿⢝⣿⡿⢁⡾⠐⣿⣿⣿⣿⣿⣿⣟⡿⣿⣿⣷⣶⣶⣶⣩⣽⣷⣽⣧⣟⣁⢸⣯⣛⢿⡿⣛⣎⣝⣾⣟⡾⢛⣼⣯⢹⡻⢯⣿⣩⠻⡝⢯⣭⠿⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣿⣿⣿⡀⡄
⡞⢘⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⡣⢊⣽⣿⣿⣿⣿⣿⣿⣧⣞⣟⡃⣦⢇⣬⣿⡟⣿⣿⣏⣿⣻⣷⣦⠿⣿⣿⣿⠿⡿⠿⢿⠻⢿⣿⣧⣿⣿⡛⢿⢿⣿⣴⣾⣻⣿⢻⣿⣙⡶⠯⢭⡿⣤⣾⣧⣹⣿⣿⠿⣼⢿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⣿⢯⣿⢩⣿⣿⡇⢁
⡇⣸⣿⣿⣿⠏⣯⣿⣾⣿⣿⣿⡿⣿⣫⣟⣾⢛⣡⣾⣿⣿⣿⣿⣿⣿⣿⣧⣮⢾⡫⡽⠿⠓⢈⣿⡿⢻⣿⣿⣿⢻⣉⣽⣿⣶⣶⣶⣿⡷⠀⠙⠛⣿⠿⠃⢹⣯⣹⣿⣿⡿⣻⣽⢏⣬⢗⢻⡹⣷⣿⣿⣺⣹⣻⣿⣿⣿⣳⣎⡽⣟⠯⣝⡻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⡿⣻⣿⢾⣿⣿⣧⠀
⡇⠉⣿⠋⢻⡘⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣫⣹⢿⣿⣿⣏⢼⣡⢎⠏⡀⠰⢢⠊⠳⠟⣿⣿⣿⣿⣟⣿⣿⡟⣿⣿⣿⣿⠇⣤⣄⣀⣀⠀⠀⣹⣾⣿⡏⠐⡿⣡⣽⣾⣿⣯⣷⣾⣼⣿⣿⣿⣽⡷⠿⠾⣿⣳⢽⢾⣻⢽⣳⣧⡏⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣾⣿⣿⣷⣿⣿⠀
⡇⣰⡷⣠⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣿⣯⣿⣿⣿⣿⣿⣿⡿⢜⠜⡤⣾⢸⣧⣷⣷⣿⣇⢈⣯⡄⣻⣿⣴⣿⠟⣀⡹⣾⠟⠟⣿⣻⣀⣾⣿⣯⣽⣵⣿⣿⣿⣬⣗⣝⣶⣯⡖⣯⣿⣽⣿⣻⢿⣴⣋⡷⢯⣯⠿⣯⡿⣧⣟⣾⡝⢯⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⠀
⡅⣟⣡⣾⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣾⣿⣿⣿⣿⣿⣿⣏⣈⣽⣯⣶⣿⡿⢻⢋⣽⣿⣿⣿⣖⣨⣾⣩⣯⢯⣿⣫⡗⣝⣿⣷⢏⡾⢓⡇⡧⣟⣟⣯⢏⣷⣻⣽⣷⢯⡿⢼⡇⢻⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠄
⡇⣻⢃⣿⣿⢿⣿⣿⣮⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⡟⣿⣹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⣿⣿⣿⣿⣿⣾⣷⣿⣿⣿⣿⣟⣃⣼⣼⢋⣿⡟⢻⣤⡿⣫⣎⡁⢴⡾⣵⢺⣭⠽⣬⢚⣶⣓⠾⣵⣛⢾⣭⡿⣧⣿⣟⣿⣞⡟⣾⡼⣽⢧⠧⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⢩⣿⣿⣿⠂
⡇⢳⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣤⡾⡧⠿⢩⠎⠁⢲⣶⣎⡷⣦⣞⢷⡳⣏⣞⣻⡘⣯⢳⣭⡻⡵⢫⡟⢞⣓⡵⣬⣬⢷⡾⣝⣳⢏⡟⡎⣿⣍⡽⣭⣛⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣥⣰⣿⣿⣿⠀
⡇⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿⠿⣿⣿⣿⣿⣇⣿⣿⣻⡷⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡫⢾⡏⠀⡟⢩⣾⠷⡀⠋⠿⣗⣿⣎⢷⡓⢮⠼⠓⣷⢶⣱⢲⣕⣞⣹⣜⣳⢏⣞⡵⣯⣻⡼⣯⣝⣯⣿⣽⣿⣷⢶⢯⡿⣬⡟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀
⡇⠀⣛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣽⣿⣿⣿⣿⣿⣹⣯⣿⣧⡩⡿⣿⣿⣿⣿⣿⣿⣿⣿⢷⡈⣷⣬⣒⣌⢻⣦⡴⣷⣬⠍⢻⣮⣓⣹⢋⡿⣛⡥⡿⢭⡻⣶⣝⠶⣍⡞⣯⢿⣹⢯⣽⣷⣯⣾⢿⣹⣿⠽⣭⣿⣿⣿⢅⣿⣿⣿⢏⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀
⢣⢠⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣿⣻⣿⣿⣟⡿⡟⣿⣿⣿⣿⡟⣽⢝⣽⣿⠏⠓⠉⠉⣿⡻⣿⣿⣿⣜⠾⢦⢿⢷⣯⣷⢿⣛⠾⣯⣛⣶⢧⣟⣞⡳⡝⣽⢹⢯⡷⣯⣟⣷⣚⢧⣟⣼⢻⣶⢿⣳⣿⣿⢸⣧⢽⡾⣿⣿⣯⠟⣿⣿⢿⣾⣿⣿⣻⣿⣿⣿⣟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀
⠈⡄⢻⣿⣯⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣟⣿⣿⣿⣾⣬⣞⣻⣿⣶⣶⣴⣦⣸⡁⠙⢻⣿⣿⡞⡿⣷⣿⣿⡿⣏⠟⡿⣴⣛⢮⠻⢼⡝⣳⢽⢪⡽⣶⡽⣟⡖⣷⣻⣧⣟⠾⣿⣻⡿⣷⣿⢣⣿⣟⣍⣿⣿⢽⣧⣿⣿⣿⣿⣽⣿⣿⣿⢿⣿⣿⣿⣷⣽⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀
⠀⢃⢸⣿⣿⣷⣟⣿⢿⣿⣿⣿⣿⣿⣿⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣻⣿⣿⡻⣿⣟⣻⣻⣿⣟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣠⣬⣿⣛⣿⣏⢆⠻⣿⢶⣽⣞⣻⢖⣊⢷⣹⠾⣝⣫⠾⣧⣳⣈⠿⣝⣞⣲⣟⢧⣾⣻⣿⣯⢷⣻⢷⢻⣟⣧⣾⣿⣯⣿⣷⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣏⢼⣿⣿⣿⡟⠀⠀
⠀⠘⡈⣿⣿⣿⣽⣿⣿⣻⣿⣽⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣯⣿⣿⣿⣾⣿⣿⣿⣷⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⢿⡿⣿⠛⡾⢷⡹⣿⣏⠻⣿⣧⡯⣝⡼⢚⠝⣿⠿⣧⣻⣗⡛⣾⣟⣿⢽⣻⠳⣿⣿⣵⢿⣿⣻⡿⣻⣿⣿⣦⣟⣲⣿⢛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣼⣶⣿⣿⣿⢇⠃⠀
⠀⠀⢣⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣯⣇⠈⢻⣿⣼⣷⣍⡟⢻⣷⣧⣯⢷⣿⣭⣲⣸⣴⡟⣳⡿⣏⣷⣽⣬⣾⣿⡾⣏⣟⣴⣿⡏⣿⣵⣽⣣⣿⣾⣿⣿⣿⠍⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡘⠀⠀
⠀⠀⠈⡄⠽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣻⣿⣿⣗⣿⣿⡛⢟⢿⠉⢛⣳⣯⠻⣿⣿⣦⡽⢿⣟⣿⣿⣟⣷⣽⣱⣟⣿⣱⢾⣽⣽⣓⡽⣿⣾⢿⣻⣟⣿⣷⣯⣿⣟⣽⣿⣿⠄⠠⡔⣤⣭⣛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢣⠁⠀⠀
⠀⠀⠀⠐⢀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢽⣿⣿⣿⣯⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣄⢐⣟⣿⣤⣤⣟⣿⣿⣎⢫⢿⡳⣿⣿⣾⠣⣜⠓⣿⣷⣻⢿⣍⣷⡾⢹⣿⣿⣏⣿⣿⡿⣿⣿⣿⡟⠁⠀⢠⡾⠛⠋⠛⠻⠶⢌⣹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠂⠀⠀⠀
⠀⠀⠀⠀⢡⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣻⡟⠛⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣻⣷⡿⡗⡘⠿⣤⠈⣛⣿⡼⢪⣷⣹⣿⣿⡽⣏⢿⡼⢻⣿⣷⢞⣟⣿⣻⣽⢟⣿⢽⢾⣿⣿⣿⡏⠀⠞⡏⢧⣷⣿⣏⣐⣷⣶⡳⣍⡙⢿⢿⣿⣿⣿⣿⣿⣿⡟⡘⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢃⠱⣆⠣⡈⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣻⣿⣿⣾⣍⡳⣟⣿⡿⣤⠝⣧⡵⡿⣿⣪⣿⣿⣿⣿⠻⣜⠯⢞⣽⣳⡟⣾⣻⢻⢿⠛⣹⣾⣋⡾⣿⣿⣿⣀⢀⣾⣴⣿⣿⣿⣿⣿⣿⣿⡓⠼⣿⣪⣝⣿⣿⣿⣿⣿⡿⡑⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢣⠈⣧⡈⠢⠀⢨⠛⢯⢻⣟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣽⡻⢿⣿⣿⣿⣿⣿⣽⣗⣄⡛⣿⣿⢿⣶⣿⣿⢿⣇⣘⣯⣟⣿⣿⣻⣿⣿⢣⡽⢞⣽⣫⢞⣻⣿⣿⡿⣏⣧⣿⣿⣲⣷⣾⣽⣫⣾⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣳⣯⣽⣿⣿⣿⣿⣿⡿⡑⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢢⠹⣿⣦⣄⠀⠁⠀⠡⠈⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣈⡁⢶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⣷⣿⣿⣿⣿⣼⢏⣿⣿⣿⣿⣏⢷⡹⣟⣾⣵⢯⣷⣿⣿⣷⣿⣿⡿⣯⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⡑⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠢⡘⣿⣿⣷⣤⡀⠀⠀⠐⡀⢉⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣻⡿⣿⣿⣿⣿⣿⣿⣿⣯⣿⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢓⡇⢀⣷⣿⡿⣿⣘⢧⡟⣵⢿⠞⠳⣾⠿⣿⣿⣿⣿⢿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠔⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠌⠻⣿⣿⣿⣦⡀⠀⢤⡀⠀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⡾⣿⣿⣿⢾⢿⣳⣟⣾⡹⣭⢿⣅⣤⣁⣊⣉⠍⠉⢀⡾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢋⠌⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢃⠘⢿⣿⣿⣷⣦⡀⠐⡄⠀⠈⠱⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⠃⣿⠿⣿⡟⣶⣿⡕⣮⢷⣭⣯⣽⣯⣎⣁⡀⢁⣤⠴⣿⣻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⡱⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⡌⠙⣿⣿⣿⣿⣦⣈⡀⠀⡀⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡻⣿⣿⣿⣿⣮⣿⠿⣽⣟⣿⣿⣿⣿⣽⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠆⣿⣗⣿⣿⣿⢯⢿⣹⣞⡷⣿⣻⣿⣽⣿⡓⠶⣽⠹⠛⣵⣯⠿⣿⣽⡿⢩⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢟⠔⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠢⡀⠛⢿⡻⣿⣿⣿⣤⣈⢄⡀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢡⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠇⣸⣽⣿⣏⢞⡷⣯⣛⠷⣮⢻⣽⣾⣿⣿⣿⣿⣷⡆⠐⢠⣿⣭⡾⣿⣿⣥⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢟⠑⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢦⠉⠻⣾⣿⣿⣿⣿⣷⣭⣦⡀⠈⠺⠻⣿⣿⣿⡿⣿⣿⡆⣤⣿⣿⡿⣭⠉⠳⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⡘⣸⣿⡿⡏⠞⣽⢾⠝⣮⣿⣾⣿⣟⢻⠿⠿⢿⠿⣿⣧⡴⢯⣍⡵⠴⢿⣿⣿⣿⣿⡿⢿⣿⣿⣿⣿⣿⣿⣿⡟⡣⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢦⠈⠻⣟⣿⣿⣿⣿⡿⣿⣦⣀⠀⠑⢽⡻⣿⣽⡙⢿⣮⣿⡉⠻⠿⢷⣦⣄⣈⡑⠻⠽⣛⣿⠿⢿⣿⣿⣷⣿⣿⣿⡿⡟⢲⣿⠛⠻⡟⢾⣭⣯⣿⣿⣏⣋⠙⢿⣶⡄⠀⠂⣀⣩⡝⣳⣶⢋⢤⣶⣿⢽⡿⢛⣏⡉⣾⣿⣿⣿⣿⣿⠟⡩⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠢⡈⠛⢽⢿⣿⣿⣮⣽⣿⣷⣦⠀⠻⣿⣿⣧⡀⠉⠉⠉⠀⠀⠓⠒⠲⢮⣝⣻⣻⢶⣮⡭⣓⡲⠿⣿⣫⡯⢟⣻⢏⣼⣿⣷⣿⠷⣿⣿⣿⣿⣿⣿⡿⢿⣶⡢⠤⣇⣁⣀⣩⡶⣫⣿⣟⣾⠿⣾⢿⣾⣛⣶⣾⣿⣿⣿⡿⢟⠁⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠢⢄⠑⠳⣾⣿⣿⠻⣻⡷⡑⡀⠙⢿⣿⣿⣿⣶⣦⣄⡤⠀⠀⢀⣤⣾⡫⠉⠡⢶⢬⠝⠻⠫⠶⢌⠙⢿⠼⣵⠿⢿⣿⣷⣿⣿⣿⣿⣿⣷⣉⡛⢻⡿⢿⣭⣿⣯⣽⣽⣿⣿⣷⣜⣶⡶⣾⣯⣝⣫⣽⣿⣿⠟⣋⠔⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠢⣌⠙⠛⠿⣯⣿⠷⣱⣄⡀⠈⠹⠿⣿⡛⢿⠿⣷⣀⠘⢿⣟⠁⠀⢩⢃⣭⣻⣟⣳⣄⣀⠀⠘⠀⣶⣆⣛⠛⣷⣿⣿⠿⣿⡿⣷⣟⣿⣿⣟⣿⣶⣾⣿⣿⣿⣿⡿⠿⠻⣟⡿⣿⣿⣿⣿⠿⢋⠕⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠑⠢⣀⠈⠻⣆⣫⣽⡿⣗⢦⡐⣤⣉⣈⡽⠚⢻⡿⠟⠚⡩⠔⣣⣾⣿⣋⣩⡍⠿⢿⣿⣦⡄⠿⣾⣧⣶⣍⣉⣛⣳⣥⣴⣮⡽⠿⠟⢻⠿⣛⣟⡏⣡⣴⣶⣿⣟⡵⣿⣽⣿⠿⢋⠅⠊⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠂⠤⡉⠉⠛⢋⣝⢪⠬⣑⣂⣠⣙⣩⣄⣶⣿⣶⣿⠿⠷⠟⠋⠩⣭⣿⣷⣿⣿⣿⣷⣄⠈⠉⠉⠉⢉⣀⣤⣴⣶⣾⣿⣿⢛⣛⣯⠳⠞⣛⣻⡿⣿⠻⢛⣋⠫⠐⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠒⠄⢀⡀⠙⠥⣘⠛⠛⡛⢋⣉⢩⣫⣭⣵⣶⣶⡿⠿⠛⢏⠾⠾⠥⢒⠛⣛⠻⠟⠛⠛⠛⢚⡹⠋⡭⠒⠉⣀⠈⣀⣄⣳⠶⠟⢉⣉⠦⠒⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠒⠀⠤⣀⠈⠈⠉⠉⠋⠉⠹⠩⠄⠀⠀⠀⠁⠀⠀⠀⠀⠉⠀⠀⠀⠀⠉⠈⠁⠀⢀⠀⣤⠤⡴⢛⣉⠱⠔⠚⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠁⠒⠂⠤⠤⠄⣀⢀⣠⣀⣀⣀⣀⣀⣀⣀⣀⣈⣠⣤⣴⣂⣰⡮⠦⠔⠓⠈⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
				]]

logo = vim.split(logo, "\n")
require("dashboard").setup({
	config = {
		header = logo,
		shortcut = {
			{
				desc = "⚙️ Config",
				group = "DashboardShortCut",
				key = "c",
				action = function()
					local current_path = vim.fn.getcwd()
					local config_file_path = vim.fn.stdpath("config")

					-- nvim does not work IDK why
					-- local client = vim.g.neovide and "neovide" or "nvim"

					vim.cmd("cd " .. config_file_path)
					vim.fn.system("neovide" .. " " .. "init.lua")
					vim.cmd("cd " .. current_path)

					-- I think this is nightly only
					-- vim.system({ "neovide", "init.lua" }, { cwd = config_file_path })
				end,
			},
			{
				desc = "🩺Health",
				group = "DashboardShortCut",
				key = "h",
				action = "checkhealth",
			},
			{
				desc = "💤Lazy",
				group = "DashboardShortCut",
				key = "l",
				action = "Lazy",
			},
			{
				desc = "🧱Mason",
				group = "DashboardShortCut",
				key = "m",
				action = "Mason",
			},
		},
		footer = { "", "Major bugs 🐛 incoming !!!" },
	},
})
