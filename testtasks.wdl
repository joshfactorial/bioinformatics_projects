###########################################
# Testing Cromwell functionality         ##
###########################################


task double {
    Int number      # number to calculate the double of

    command <<<
        echo $(( 2*${number} )) > answer.txt
        sleep 30s
    >>>

    output {
        Int Answer = read_string("answer.txt")
    }
}

task add_three {
    Int number      # number to calculate plus three of

    command <<<
        echo $(( ${number} + 3 )) > answer.txt
        sleep 30s
    >>>

    output {
        Int Answer = read_string("answer.txt")
    }
}

task square {
    Int number      # number to calculate the square of

    command <<<
        echo $(( ${number} * ${number} )) > answer.txt
        sleep 30s
    >>>

    output {
        Int Answer = read_string("answer.txt")
    }
}

task print {
    Int number          # number to print
    String phrase       # phrase to print

    command <<<
        echo $(( 3/${phrase} )) > answer.txt
        echo ${number} ${phrase}
        sleep 30s
    >>>

    output {
        Int Answer = number
    }
}