# Mi Configuración de Neovim

Configuración minimalista para desarrollo web (React, TypeScript, Tailwind).

## Estructura

```
~/.config/nvim/
├── init.lua                 # Punto de entrada
├── lua/
│   ├── config/
│   │   ├── options.lua      # Opciones de Neovim
│   │   ├── keymaps.lua      # Atajos de teclado
│   │   └── lazy.lua         # Gestor de plugins
│   └── plugins/
│       ├── catppuccin.lua   # Tema de colores
│       ├── treesitter.lua   # Syntax highlighting
│       ├── telescope.lua    # Fuzzy finder
│       ├── lsp.lua          # LSP + Autocompletado
│       ├── formatting.lua   # Formateo al guardar
│       ├── autopairs.lua    # Cerrar paréntesis automático
│       ├── comment.lua      # Comentar código
│       ├── whichkey.lua     # Mostrar atajos disponibles
│       ├── gitsigns.lua     # Indicadores de git
│       └── lualine.lua      # Barra de estado
```

## Plugins

| Plugin | Descripción |
|--------|-------------|
| [lazy.nvim](https://github.com/folke/lazy.nvim) | Gestor de plugins |
| [catppuccin](https://github.com/catppuccin/nvim) | Tema de colores |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting avanzado |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | Configuración LSP |
| [mason.nvim](https://github.com/williamboman/mason.nvim) | Instalador de LSP servers |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | Autocompletado |
| [conform.nvim](https://github.com/stevearc/conform.nvim) | Formateo de código |
| [nvim-autopairs](https://github.com/windwp/nvim-autopairs) | Auto cerrar paréntesis |
| [Comment.nvim](https://github.com/numToStr/Comment.nvim) | Comentar código |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | Mostrar atajos disponibles |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Indicadores de git |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Barra de estado |

## Servidores LSP

Instalados automáticamente con Mason:

- `ts_ls` - TypeScript/JavaScript
- `tailwindcss` - Tailwind CSS
- `eslint` - Linting

## Formateadores

Instalar manualmente con `:Mason`:

- `prettier` - Formateo general
- `biome` - Alternativa a ESLint+Prettier
- `eslint_d` - ESLint rápido

---

## Keymaps

### Leader Key

**`<Space>`** es la tecla leader.

### Generales

| Atajo | Modo | Acción |
|-------|------|--------|
| `<leader>e` | Normal | Abrir explorador netrw |
| `<leader>w` | Normal | Guardar archivo |
| `<leader>q` | Normal | Cerrar ventana |
| `<Esc>` | Normal | Limpiar búsqueda |

### Navegación entre ventanas

| Atajo | Acción |
|-------|--------|
| `<C-h>` | Ventana izquierda |
| `<C-j>` | Ventana abajo |
| `<C-k>` | Ventana arriba |
| `<C-l>` | Ventana derecha |

### Movimiento

| Atajo | Modo | Acción |
|-------|------|--------|
| `J` | Visual | Mover línea abajo |
| `K` | Visual | Mover línea arriba |
| `<C-d>` | Normal | Scroll abajo + centrar |
| `<C-u>` | Normal | Scroll arriba + centrar |
| `n` | Normal | Siguiente búsqueda + centrar |
| `N` | Normal | Anterior búsqueda + centrar |

### Telescope (Búsqueda)

| Atajo | Acción |
|-------|--------|
| `<leader>ff` | Buscar archivos |
| `<leader>fg` | Buscar texto (grep) |
| `<leader>fb` | Ver buffers abiertos |
| `<leader>fh` | Buscar en ayuda |
| `<leader>fr` | Archivos recientes |

### LSP (Código)

| Atajo | Acción |
|-------|--------|
| `gd` | Ir a definición |
| `gr` | Ver referencias |
| `K` | Documentación hover |
| `<leader>ca` | Code actions |
| `<leader>rn` | Renombrar símbolo |
| `[d` | Diagnóstico anterior |
| `]d` | Diagnóstico siguiente |

### Autocompletado (Modo Insert)

| Atajo | Acción |
|-------|--------|
| `<C-j>` | Siguiente sugerencia |
| `<C-k>` | Sugerencia anterior |
| `<C-Space>` | Abrir autocompletado |
| `<C-e>` | Cerrar autocompletado |
| `<CR>` | Confirmar selección |
| `<Tab>` | Siguiente / expandir snippet |

### Comentarios

| Atajo | Modo | Acción |
|-------|------|--------|
| `gcc` | Normal | Comentar/descomentar línea |
| `gc` | Visual | Comentar selección |

### Git

| Atajo | Acción |
|-------|--------|
| `]c` | Siguiente cambio git |
| `[c` | Anterior cambio git |
| `<leader>gp` | Preview del cambio |
| `<leader>gb` | Git blame de la línea |

### Formateo

| Atajo | Acción |
|-------|--------|
| `<leader>cf` | Formatear archivo manualmente |
| Al guardar | Formateo automático |

### Explorador de archivos (netrw)

| Atajo | Acción |
|-------|--------|
| `%` | Crear archivo |
| `d` | Crear carpeta |
| `D` | Borrar |
| `R` | Renombrar |
| `<CR>` | Abrir archivo/carpeta |
| `-` | Subir un nivel |

---

## Comandos útiles

| Comando | Acción |
|---------|--------|
| `:Mason` | Gestionar LSP servers y formateadores |
| `:LspInfo` | Ver estado del LSP |
| `:Lazy` | Gestionar plugins |
| `:ConformInfo` | Ver formateadores activos |
| `:Tutor` | Tutorial interactivo de Vim |
| `:checkhealth` | Verificar estado de Neovim |

---

## Movimientos básicos de Vim

### Navegación

| Tecla | Acción |
|-------|--------|
| `h j k l` | Izquierda, abajo, arriba, derecha |
| `w` | Siguiente palabra |
| `b` | Palabra anterior |
| `0` | Inicio de línea |
| `$` | Final de línea |
| `gg` | Inicio del archivo |
| `G` | Final del archivo |
| `f{char}` | Saltar a carácter |
| `%` | Paréntesis correspondiente |
| `{` / `}` | Párrafo anterior/siguiente |
| `zz` | Centrar pantalla |

### Edición

| Tecla | Acción |
|-------|--------|
| `i` | Insertar antes del cursor |
| `a` | Insertar después del cursor |
| `o` | Nueva línea abajo |
| `O` | Nueva línea arriba |
| `x` | Borrar carácter |
| `dd` | Borrar línea |
| `yy` | Copiar línea |
| `p` | Pegar |
| `u` | Deshacer |
| `<C-r>` | Rehacer |

### Verbos + Objetos

Combinación: `verbo + objeto`

**Verbos:**
- `d` = delete (borrar)
- `c` = change (cambiar)
- `y` = yank (copiar)

**Objetos:**
- `w` = palabra
- `iw` = inner word
- `i"` = dentro de comillas
- `i(` = dentro de paréntesis
- `i{` = dentro de llaves
- `it` = dentro de tag HTML/JSX

**Ejemplos:**
```
diw  → borrar palabra
ci"  → cambiar dentro de comillas
yi(  → copiar dentro de paréntesis
dit  → borrar dentro de tag
cit  → cambiar dentro de tag
```

---

## Tips

1. **Which-key**: Presiona `<leader>` y espera 300ms para ver atajos disponibles
2. **Aprender gradualmente**: 2-3 comandos nuevos por día
3. **Usa hjkl**: Evita las flechas para moverte
4. **`:Tutor`**: Tutorial interactivo incluido en Neovim
