#/bin/sh

OUT_DIR="$1"
# TODO: make this script work with other Latex templates
LATEX_TEMPLATE_SOURCE="$HOME/Personal/writing-templates/tex/mathematics"

__verify_latex_source() {
    if [ ! -d "$LATEX_TEMPLATE_SOURCE" ]; then
        echo "ERROR: Latex source directory does not exist: $LATEX_TEMPLATE_SOURCE"
        exit 1
    fi
}

__verify_out_dir() {
    if [ -z "$OUT_DIR" ]; then
        echo "Usage: $0 <output directory>"
        exit 0
    elif [ ! -d "$OUT_DIR" ]; then
        echo "Output directory does not exist: $OUT_DIR"
        exit 1
    fi
}
__copy_template() {
  cp "$LATEX_TEMPLATE_SOURCE"/*.tex "$OUT_DIR"
  echo "Copied template \`tex\` files to \`$OUT_DIR\`"
}

__verify_latex_source
__verify_out_dir
__copy_template
