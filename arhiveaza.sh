#!/bin/bash

# 📁 Directorul sursă (de unde se mută fișiere)
DIRECTOR_Sursa="./date"

# 📁 Directorul destinație (unde se mută fișierele vechi)
DIRECTOR_Arhiva="./arhiva"

# 🔧 Creează folderul de arhivă dacă nu există
mkdir -p "$DIRECTOR_Arhiva"

# 🗂 Mută fișierele mai vechi de 3 zile
find "$DIRECTOR_Sursa" -type f -mtime +3 -exec mv {} "$DIRECTOR_Arhiva" \;

# ✅ Confirmare
echo "Fișierele mai vechi de 3 zile au fost mutate în '$DIRECTOR_Arhiva'."
