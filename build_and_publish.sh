#!/bin/bash
set -e

# Clean previous builds
rm -rf dist/ build/ *.egg-info

# Install build dependencies
pip install --upgrade pip build twine

# Build the package
python -m build

# Check the package
twine check dist/*

echo "Build completed successfully!"
echo "To publish to PyPI, run:"
echo "twine upload dist/*"
echo ""
echo "To publish to TestPyPI first (recommended), run:"
echo "twine upload --repository testpypi dist/*"
echo ""
echo "To test the package locally with pipx:"
echo "pipx install dist/*.whl" 