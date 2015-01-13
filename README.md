# Text-Scrambler

Basic text scrambler program written in Matlab. The program using `scramble.m` function as input arguments which are `text`,
`scheme`, `key` and `mode` to use **caesar algorithm** and **rotational caesar algorithm** to __*code/encode*__ simple text.

There is also `main.m` function to test `scramble.m` function with some *example datas.*

- [x] 
```matlab
function scramble(text,scheme,key,mode) {

Check inputs.

Caeser algorithm.
    Code.
        Get lenght of text.
          Chech text characters. LOWERCASE.
              Upper case 65-A,...,90-Z
            Chech text characters. UPPERCASE.
              Lower case 97-a,...,122-z
            Chech text characters. INVALID.
    Encode.
        Get lenght of text.
            Chech text characters. LOWERCASE.
                Upper case 65-A,...,90-Z
            Chech text characters. UPPERCASE.
                Lower case 97-a,...,122-z
            Chech text characters. INVALID.
    Chech mode argument. INVALID.
    
Rotational Caeser Algorithm.
    Code.
        Get lenght of text.
            Chech text characters. LOWERCASE.
                Upper case 65-A,...,90-Z
                Increase key by 1.
            Chech text characters. UPPERCASE.
                Lower case 97-a,...,122-z
                Increase key by 1.
            Chech text characters. INVALID.
    Encode.
        Get lenght of text.
        Chech text characters. LOWERCASE.
                Upper case 65-A,...,90-Z
                Decrease key by 1.
            Chech text characters. UPPERCASE.
                Lower case 97-a,...,122-z
                Decrease key by 1.
            Chech text characters. INVALID.
          Chech mode argument. INVALID.
    Chech scheme argument. INVALID.
}
```
