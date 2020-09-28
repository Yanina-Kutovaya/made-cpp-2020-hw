.text
.global dett
dett:


ldrb r1, [r0], #4
ldrb r2, [r0], #4
ldrb r3, [r0], #4

push {r4-r9}
ldrb r4, [r0], #4
ldrb r5, [r0], #4
ldrb r6, [r0], #4
ldrb r7, [r0], #4
ldrb r8, [r0], #4
ldrb r9, [r0], #4

r0 mul r1, r5
r0 mul r0, r9

r1 mul r1, r6
r1 mul r1, r8
r0 sub r0, r1

r1 mul r2, r4
r1 mul r1, r9
r0 sub r0, r1

r2 mul r2, r6
r2 mul r2, r7
r0 add r0, r2

r1 mul r3, r4
r1 mul r1, r8
r0 add r0, r1

r3 mul r3, r5
r3 mul r3, r7
r0 sub r0, r3

pop {r4-r9}

bx lr