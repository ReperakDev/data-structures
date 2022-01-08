; Copyright (c) 2022 Reperak
;
; Permission is hereby granted, free of charge, to any person obtaining a copy
; of this software and associated documentation files (the "Software"), to deal
; in the Software without restriction, including without limitation the rights
; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
; copies of the Software, and to permit persons to whom the Software is
; furnished to do so, subject to the following conditions:
;
; The above copyright notice and this permission notice shall be included in all
; copies or substantial portions of the Software.
;
; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
; SOFTWARE.

.version 52 0

.class public final Vec3
.super java/lang/Object
    .field public final x F
    .field public final y F
    .field public final z F

    .method public <init> : (FFF)V
        .limit stack 6
        .limit locals 4

        aload_0
        invokespecial Method java/lang/Object <init> ()V

        ; Read values
        aload 0 ; X
        fload 3
        aload 0 ; Y
        fload 2
        aload 0 ; Z
        fload 1

        ; Load values
        putfield Field Vec3 x F
        putfield Field Vec3 y F
        putfield Field Vec3 z F

        return
    .end method

    .method public transform : (FFF)LVec3;
        .limit stack 6
        .limit locals 4

        ; Declare the Vec3 at the beginning to avoid creating local variables
        new Vec3
        dup

        ; ---- Procedure ----
        ; 1. Load method argument
        ; 2. Allocate and load reference
        ; 3. Add two together (they have merged into one)
        ; 4. Repeat (but with 1 more offset)

        ; x
        fload 1
        aload 0
        getfield Field Vec3 x F
        fadd

        ; y
        fload 2
        aload 0
        getfield Field Vec3 y F
        fadd

        ; z
        fload 3
        aload 0
        getfield Field Vec3 z F
        fadd

        ; Finally initialize it
        invokespecial Method Vec3 <init> (FFF)V

        areturn
    .end method
.end class
