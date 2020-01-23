###########################################
# Testing Cromwell functionality         ##
###########################################


task double {
    Int number      # number to calculate the double of

    command <<<
        echo $(( 2*${number} )) > answer.txt
    >>>

    output {
        File Answer = "answer.txt"
    }
}

task add_three {
    Int number      # number to calculate plus three of

    command <<<
        echo $(( ${number} + 3 )) > answer.txt
    >>>

    output {
        File Answer = "answer.txt"
    }
}

task square {
    Int number      # number to calculate the square of

    command <<<
        echo $(( ${number} * ${number} )) > answer.txt
    >>>

    output {
        File Answer = "answer.txt"
    }
}

task print {
    Int number          # number to print

    command <<<
        echo $(( ${number} + 3 )) > answer.txt
        echo ${number}
    >>>

    output {
        File Answer = "answer.txt"
    }
}