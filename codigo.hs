-- Bounding boxes: (xmin, ymin, xmax, ymax)
boundingBoxes :: [(Float, Float, Float, Float)]
boundingBoxes = [(34.0, 60.0, 200.0, 320.0), (100.0, 150.0, 250.0, 380.0),(300.0, 220.0, 450.0, 450.0)]

-- Scores: Confidence scores for each detection
scores :: [Float]
scores = [0.95, 0.80, 0.60]

-- Classes: Class 0 or 1 representing two object types
classes :: [Int]
classes = [0, 1, 0]

-- Função 5
-- Crie uma função para converter a lista de bounding boxes para outro formato: em vez de representar cada bounding box como (xmin, ymin, xmax, ymax), usar a representação (xmin, xmax, width, height), sendo width = xmax - xmin e height = ymax - ymin
-- Resolva esta função sem usar lambda.

-- Exemplo de uso:
-- ghci> convertBoundingBoxes boundingBoxes
-- [(34.0,60.0,166.0,260.0),(100.0,150.0,150.0,230.0),(300.0,220.0,150.0,230.0)]

-- Nome e tipo da função:
-- convertBoundingBoxes :: [(Float, Float, Float, Float)] -> [(Float, Float, Float, Float)]

changePos :: (Float, Float, Float, Float) -> (Float, Float, Float, Float)
changePos (a,b,c,d) = (a,c,c-a,d-b)

-- (xmin, ymin, xmax, ymax), usar a representação (xmin, xmax, width, height), sendo width = xmax - xmin e height = ymax - ymin

convertBoundingBoxes :: [(Float, Float, Float, Float)] -> [(Float, Float, Float, Float)]
convertBoundingBoxes x = map changePos x