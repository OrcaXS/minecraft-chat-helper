﻿-- The MIT License (MIT)
--
-- Copyright (c) 2014 Star Brilliant <m13253@hotmail.com>
-- Copyright (c) 2014 Lancelot Fong <ilbfy08@gmail.com>
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in
-- all copies or substantial portions of the Software.
--
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
-- THE SOFTWARE.

set mcchat_clipboard to ""
set mcchat_input to the text returned of (display dialog "Input the text to be pasted in Minecraft" with title "Minecraft Input Helper" default answer "")
set the clipboard to mcchat_input
	tell application "System Events"
		tell process "java" -- Minecraft process
			set frontmost to true
			perform action "AXRaise" of window 1 -- active window 1
		end tell
	end tell
	
	delay 0.5
	
	tell application "System Events"
		keystroke "v" using control down -- paste
		delay 0.1
		key code 36 -- return
	end tell
end tell

