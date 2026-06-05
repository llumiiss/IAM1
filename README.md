# Pac-Man 3D — Labirynt

Gra 3D w stylu Pac-Mana zbudowana w **JavaScript** i **Three.js**. Zbieraj kropki w labiryncie, unikaj duszków i strzelaj kulą, aby na chwilę je wyeliminować.

![Pac-Man 3D](https://img.shields.io/badge/Three.js-r128-blue) ![HTML5](https://img.shields.io/badge/HTML5-WebGL-orange)

## Funkcje

- Labirynt 3D z oświetleniem, cieniami i mgłą
- Sterowanie klawiaturą (WASD / strzałki)
- Duszki goniące gracza po siatce labiryntu
- Jedna kula naraz — trafiony duszek znika na chwilę i daje punkty
- System żyć, wyniku i ekranu start/koniec gry

## Sterowanie

| Klawisz | Akcja |
|---------|--------|
| `W` `A` `S` `D` lub strzałki | Ruch |
| `Spacja` | Strzał kulą |

## Wymagania

- Nowoczesna przeglądarka z obsługą WebGL
- **Python 3** (do lokalnego serwera HTTP) — opcjonalnie, jeśli nie używasz `URUCHOM.bat`

> Gra ładuje bibliotekę Three.js z pliku `three.min.js` w tym samym folderze. Dzięki temu działa offline, bez CDN.

## Uruchomienie

### Sposób 1 — najprostszy (Windows)

Kliknij dwukrotnie **`URUCHOM.bat`**. Skrypt uruchomi serwer i otworzy grę w przeglądarce pod adresem:

```
http://localhost:8765/index.html
```

### Sposób 2 — ręcznie

```bash
cd pacman-3d
python -m http.server 8765
```

Następnie otwórz w przeglądarce: [http://localhost:8765/index.html](http://localhost:8765/index.html)

> **Uwaga:** Otwarcie `index.html` bezpośrednio z dysku (`file://`) może nie działać poprawnie w niektórych przeglądarkach. Użyj lokalnego serwera HTTP.

## Struktura projektu

```
pacman-3d/
├── index.html      # Gra — logika, scena 3D, UI
├── three.min.js    # Biblioteka Three.js r128 (MIT)
├── URUCHOM.bat     # Szybki start na Windows
├── JAK-URUCHOMIC.txt
└── README.md
```

## GitHub Pages (opcjonalnie)

Repozytorium można opublikować jako stronę statyczną:

1. W repozytorium na GitHub: **Settings → Pages**
2. **Source:** Deploy from branch → `main` → folder **`/ (root)`**
3. Po chwili gra będzie dostępna pod adresem `https://<użytkownik>.github.io/<repo>/`

## Licencje

- Kod gry — projekt edukacyjny
- [Three.js](https://threejs.org/) — licencja MIT (plik `three.min.js`, Copyright 2010–2021 Three.js Authors)
