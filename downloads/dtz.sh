#!/bin/bash

echo "what to name your file?"

read pkgname
touch "$pkgname.sh"
echo '#!/bin/bash' > "$pkgname.sh"
chmod +x $pkgname.sh

yad --entry --title="New Package" --text="Package name:"
