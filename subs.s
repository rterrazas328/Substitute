@Ricardo Terrazas
@CS 252-003
@Assignment 3
@subs.s Look through the string and replace every occurrence of letter 'a2' with 'a3'

.global subs
.text

@Parameters Passed
@a1 = pointer to string
@a2 = letter to replace
@a3 = letter to substitute in

subs: stmfd         sp!, {v1-v6, lr}
loop:
         ldrb       v1, [a1], #1          @add 4 to address after letter assigned to v3
         cmp        v1, #0
         beq        end
         cmp        v1, a2
         streqb		a3, [a1, #-1]
         b          loop
end:
         ldmfd      sp!, {v1-v6, pc}
