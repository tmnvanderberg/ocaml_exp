let rec even n =
        n = 0 || odd (n - 1)

and odd n =
        n <> 0 && even (n - 1);;
