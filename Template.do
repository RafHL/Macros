# File: Template.do  (~\Documents\EEL_4712) - GVIM
# Created: 10-25-2018 13:01
# Last Modified: 10-25-2018 14:06

# Description: This is a basic template I (Rafael Hernandez) made for ModelSim scripts
#     Takes in FileName_tb as a parameter
# Example: do Template File_tb

# Make changes here primarily:
        # Replace * with preferred signals (only if you DON'T want all signals from
        #     the testbench to pop up)
    set signals *
        # Replace 1 with a 0 if you want to see signal's full name (including the path)
    set tinynames 1
        # Replace -all with the amount of time you want the simulation to run
    set times -all

    echo "Script is running..."

    echo "Files will be compiled twice..."
# I like to compile before simulations, regardless of whether or not the file was changed
    project compileall
# And once more in case the files are out of VHDL's preferred order
    project compileall
    echo "Compiled!!!"

    echo "Design will be loaded..."
# Load design into the simulator
    vsim $1
    echo "Loaded!!!"

    echo "Adding signals..."
# Add signals to wave and make names tiny
    add wave $signals
    config wave -signalnamewidth $tinynames
    echo "Added!!!"

    echo "Starting simulation..."
# Run the simulation for the given time
    run $times
    echo "Simulation Finished!!!"

    echo "Thanks for using me!!!"
