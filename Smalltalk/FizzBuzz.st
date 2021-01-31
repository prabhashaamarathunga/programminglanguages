1 to: 100 do:[:i |
    ((i \\ 3 == 0) & (i \\ 5 == 0))ifTrue:
    [
        'fizzbuzz' printNl .
    ]
    ifFalse:
    [
        (i \\ 3 == 0)ifTrue: 
        [
            'fizz' printNl .
        ]
        ifFalse:
        [
            (i \\ 5 == 0)ifTrue:
            [
                'buzz' printNl .
            ]
            ifFalse:
            [
                i printNl .
            ]
        ]
    ]
]