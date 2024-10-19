Rex's Executor GUI
Rex's Executor is a custom-built Lua script executor GUI designed for Roblox. This GUI provides users with a simple and sleek interface to write, execute, and manage Lua scripts directly from the game. The interface includes essential features like script execution, clearing input, and managing errors in a user-friendly way.

![image](https://github.com/user-attachments/assets/2d12c247-f3a6-41f7-bd96-03b6fe323017)

Features
TextBox Input: Users can input Lua scripts to be executed.
Execute Button: Runs the script written in the TextBox.
Clear Button: Clears the TextBox for new input.
Close Button: Closes the GUI and removes it from the screen.
Error Log: Displays any errors encountered during script execution in a dedicated area.
Credits Button: Toggle the credits information.

How It Works
The user writes a Lua script in the TextBox.
Clicking Execute attempts to run the Lua script using loadstring(). Any errors during compilation or execution will be displayed in the error log below the TextBox.
Clear button resets the input field.
Close button destroys the GUI and removes it from the screen.
How to Use

'''
loadstring(game:HttpGet("https://raw.githubusercontent.com/Therandom123/Rex-sGUI/refs/heads/main/executor.lua"))()
'''
Run the script. The GUI will appear on the screen, allowing you to input and execute Lua scripts.

GUI Elements
Main Frame: The main container that holds all the UI components.
Title Label: Displays "Rex's Executor" at the top.
TextBox: Where users enter Lua code.
Execute Button: Runs the Lua script.
Clear Button: Clears the TextBox.
Delete Button: Destroys the GUI and exits.
Credits Button: Toggles the display of the credits section.
Error Handling
If there is an error in the Lua script during execution (e.g., syntax error or runtime error), the error message will be displayed in a dedicated error log area within the GUI. This feature allows the user to see where and why their script failed.

Customization
Colors: You can easily change the background colors or button styles by modifying the Color3 values in the script.
TextBox Behavior: You can customize the behavior of the TextBox (e.g., text wrapping, placeholder text) to suit your needs.
Error Logging: Extend the error log system to log more detailed information about the script execution or customize the log window appearance.
Future Enhancements
Resizable GUI: Allow users to resize the main frame.
Theme Switcher: Add the option to toggle between light and dark modes for the GUI.
