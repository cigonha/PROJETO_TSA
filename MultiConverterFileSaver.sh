# Function to convert meters to kilometers
meters_to_kilometers() {
    local meters="$1"
    local kilometers=$(echo "scale=2; $meters / 1000" | bc)
    echo "$meters meters is equal to $kilometers kilometers."
}

# Function to convert kilometers to meters
kilometers_to_meters() {
    local kilometers="$1"
    local meters=$(echo "scale=2; $kilometers * 1000" | bc)
    echo "$kilometers kilometers is equal to $meters meters."
}

# Function to convert bytes to kilobytes
bytes_to_kilobytes() {
    local bytes="$1"
    local kilobytes=$(echo "scale=2; $bytes / 1024" | bc)
    echo "$bytes bytes is equal to $kilobytes KB."
}

# Function to convert bytes to megabytes
bytes_to_megabytes() {
    local bytes="$1"
    local megabytes=$(echo "scale=2; $bytes / (1024 * 1024)" | bc)
    echo "$bytes bytes is equal to $megabytes MB."
}

# Function to convert bytes to gigabytes
bytes_to_gigabytes() {
    local bytes="$1"
    local gigabytes=$(echo "scale=2; $bytes / (1024 * 1024 * 1024)" | bc)
    echo "$bytes bytes is equal to $gigabytes GB."
}

# Function to convert bytes to terabytes
bytes_to_terabytes() {
    local bytes="$1"
    local terabytes=$(echo "scale=2; $bytes / (1024 * 1024 * 1024 * 1024)" | bc)
    echo "$bytes bytes is equal to $terabytes TB."
}

# Function to convert hours to minutes
hours_to_minutes() {
    local hours="$1"
    local minutes=$(echo "$hours * 60" | bc)
    echo "$hours hours is equal to $minutes minutes."
}

# Function to convert hours to seconds
hours_to_seconds() {
    local hours="$1"
    local seconds=$(echo "$hours * 3600" | bc)
    echo "$hours hours is equal to $seconds seconds."
}

# Function to convert minutes to hours
minutes_to_hours() {
    local minutes="$1"
    local hours=$(echo "$minutes / 60" | bc)
    echo "$minutes minutes is equal to $hours hours."
}

# Function to convert minutes to seconds
minutes_to_seconds() {
    local minutes="$1"
    local seconds=$(echo "$minutes * 60" | bc)
    echo "$minutes minutes is equal to $seconds seconds."
}

# Function to convert seconds to minutes
seconds_to_minutes() {
    local seconds="$1"
    local minutes=$(echo "$seconds / 60" | bc)
    echo "$seconds seconds is equal to $minutes minutes."
}

# Function to save result to a text file
save_to_file() {
    local result="$1"
    read -p "Do you want to save the result to a text file? (y/n): " save_option
    if [ "$save_option" = "y" ]; then
        read -p "Enter the file name: " file_name
        echo "$result" > "$file_name.txt"
        echo "Result saved to $file_name.txt."
    fi
}

# Main script

echo "Converter Script"
echo "1. Length Converter (Meters/Kilometers)"
echo "2. Byte Converter (Bytes to KB/MB/GB/TB)"
echo "3. Time Converter (Hours/Minutes/Seconds)"
read -p "Choose a conversion type (1, 2, or 3): " conversion_type

case $conversion_type in
    1)
        echo "Length Converter"
        echo "1. Meters to Kilometers"
        echo "2. Kilometers to Meters"
        read -p "Choose an option (1 or 2): " option
        case $option in
            1)
                read -p "Enter distance in meters: " distance
                result=$(meters_to_kilometers "$distance")
                echo "$result"
                save_to_file "$result"
                ;;
            2)
                read -p "Enter distance in kilometers: " distance
                result=$(kilometers_to_meters "$distance")
                echo "$result"
                save_to_file "$result"
                ;;
            *)
                echo "Invalid option. Please choose 1 or 2."
                ;;
        esac
        ;;
    2)
        echo "Byte Converter"
        echo "1. Bytes to Kilobytes"
        echo "2. Bytes to Megabytes"
        echo "3. Bytes to Gigabytes"
        echo "4. Bytes to Terabytes"
        read -p "Choose an option (1-4): " option
        case $option in
            1)
                read -p "Enter size in bytes: " size
                result=$(bytes_to_kilobytes "$size")
                echo "$result"
                save_to_file "$result"
                ;;
            2)
                read -p "Enter size in bytes: " size
                result=$(bytes_to_megabytes "$size")
                echo "$result"
                save_to_file "$result"
                ;;
            3)
                read -p "Enter size in bytes: " size
                result=$(bytes_to_gigabytes "$size")
                echo "$result"
                save_to_file "$result"
                ;;
            4)
                read -p "Enter size in bytes: " size
                result=$(bytes_to_terabytes "$size")
                echo "$result"
                save_to_file "$result"
                ;;
            *)
                echo "Invalid option. Please choose 1-4."
                ;;
        esac
        ;;
    3)
        echo "Time Converter"
        echo "1. Hours to Minutes"
        echo "2. Hours to Seconds"
        echo "3. Minutes to Hours"
        echo "4. Minutes to Seconds"
        echo "5. Seconds to Minutes"
        read -p "Choose an option (1-5): " option
        case $option in
            1)
                read -p "Enter time in hours: " time
                result=$(hours_to_minutes "$time")
                echo "$result"
                save_to_file "$result"
                ;;
            2)
                read -p "Enter time in hours: " time
                result=$(hours_to_seconds "$time")
                echo "$result"
                save_to_file "$result"
                ;;
            3)
                read -p "Enter time in minutes: " time
                result=$(minutes_to_hours "$time")
                echo "$result"
                save_to_file "$result"
                ;;
            4)
                read -p "Enter time in minutes: " time
                result=$(minutes_to_seconds "$time")
                echo "$result"
                save_to_file "$result"
                ;;
            5)
                read -p "Enter time in seconds: " time
                result=$(seconds_to_minutes "$time")
                echo "$result"
                save_to_file "$result"
                ;;
            *)
                echo "Invalid option. Please choose 1-5."
                ;;
        esac
        ;;
    *)
        echo "Invalid conversion type. Please choose 1, 2, or 3."
        ;;
esac