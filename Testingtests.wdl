########################################################################
# This task runs some lightweight tasks to test cromwell capabilities ##
########################################################################


import "bioinformatics_projects/testtasks.wdl" as Tasks

workflow RunTasks {

    Array[Int] number
    Array[Int] Indexes = range(length(number))

    scatter (idx in Indexes) {
        call Tasks.double as Double {
            input:
                number = number[idx]
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

}