########################################################################
# This task runs some lightweight tasks to test cromwell capabilities ##
########################################################################


import "testtasks.wdl" as Tasks

workflow RunTasks {

    Int number


    call Tasks.double as Double {
        input:
            number = number
    }

    call Tasks.add_three as Three {
        input:
            number = Double.Answer
    }

    call Tasks.print as Print {
        input:
            number = Three.Answer
    }

    call Tasks.square as Square {
        input:
            number = Print.Answer
    }
}