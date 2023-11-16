from flask import Flask, render_template, request

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/upload', methods=['POST'])
def upload():
    if 'file' not in request.files:
        return 'No file part'

    file = request.files['file']

    if file.filename == '':
        return 'No selected file'

    # 파일을 저장할 경로를 설정합니다.
    file.save('uploads/' + file.filename)

    return 'File uploaded successfully'

if __name__ == '__main__':
    app.run(debug=True)

