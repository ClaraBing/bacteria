MSER (pre-processing) and CNN to classify and count bacteria in microscopic images to improve efficiency and reliability of bacterial vaginosis (BV) diagnosis.


## Miscellaneous
#### pyinstaller: compile Python files (i.e. *.py) to Windows executables (i.e. *.exe)
* Website: http://www.pyinstaller.org/
* Install: `pip install pyinstaller`
* Compile (first `cd` to the directory where your python file is located):

   `pyinstaller your_python_file.py`: a bundle will be generated in a subdirectory named `dist`

   `pyinstaller --onefile --windowed your_python_file.py`: a single executable file will be generated and free to be moved around
* Full manual: https://pyinstaller.readthedocs.io/en/stable/
