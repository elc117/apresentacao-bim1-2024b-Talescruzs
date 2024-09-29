# apresentacao-bim1-2024b-Talescruzs

## Explicação
Como neste caso a função deve modificar uma lista de tuplas com floats recebida de forma específica, utilizei a `boundingBoxes` definida na atizidade e apenas passava como parametro da função.

Para a função em si, utilizei um map(função de alta ordem) que recebe a função `changePos` e a lista dos valores que devemos modificar.

A função `changePos` que realmente faz a reapresentação de uma tupla isoladamente, sem uso do lambda, mas no formato ensinado pela professora.

### Base
Inicialmente fiz uso do Bounding boxes: (xmin, ymin, xmax, ymax)
definido no formato:

``` hs
    boundingBoxes :: [(Float, Float, Float, Float)]
    boundingBoxes = [(34.0, 60.0, 200.0, 320.0), (100.0, 150.0, 250.0, 380.0),(300.0, 220.0, 450.0, 450.0)]
```

### Função 5
Devemos criar uma função para converter a lista de bounding boxes para outro formato: em vez de representar cada bounding box como (xmin, ymin, xmax, ymax), usar a representação (xmin, xmax, width, height), sendo width = xmax - xmin e height = ymax - ymin.
Sem uzar lambda

#### Exemplo de uso:
``` hs
    ghci> convertBoundingBoxes boundingBoxes
    [(34.0,60.0,166.0,260.0),(100.0,150.0,150.0,230.0),(300.0,220.0,150.0,230.0)]
```

#### Código:
``` hs
    changePos :: (Float, Float, Float, Float) -> (Float, Float, Float, Float)
    changePos (a,b,c,d) = (a,c,c-a,d-b)

    -- (xmin, ymin, xmax, ymax), usar a representação (xmin, xmax, width, height), sendo width = xmax - xmin e height = ymax - ymin

    convertBoundingBoxes :: [(Float, Float, Float, Float)] -> [(Float, Float, Float, Float)]
    convertBoundingBoxes x = map changePos x
```