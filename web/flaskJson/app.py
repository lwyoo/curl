from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/receive-json', methods=['POST'])
def receive_json():
    data = request.get_json()
    print("Received JSON:", data)
    return jsonify(
            {
            "Infos":
            [
                {
                    "themeName" : "Chicago Bulls",
                    "themeID" : "0001",
                    "isPurchase" : 1,
                    "thumbnailUrl": "http://bbb.bbb.bb",
                    "previewUrl" : "http://ccc.ccc.ccc",
                    "downloadLink" : "http://ddd.ddd.dd",
                    "downloadedField" : 1
                },
                {
                    "themeName" : "LA Lakers",
                    "themeID" : "0002",
                    "isPurchase" : 0,
                    "thumbnailUrl": "http://bbb.bbb.bb",
                    "previewUrl" : "http://ccc.ccc.ccc",
                    "downloadLink" : "http://ddd.ddd.dd",
                    "downloadedField" : 0
                },
                {
                    "themeName" : "Sacramento Kings",
                    "themeID" : "0003",
                    "isPurchase" : 1,
                    "thumbnailUrl": "http://bbb.bbb.bb",
                    "previewUrl" : "http://ccc.ccc.ccc",
                    "downloadLink" : "http://ddd.ddd.dd",
                    "downloadedField" : 0
                },
                {
                    "themeName" : "Utah Jazz",
                    "themeID" : "0004",
                    "isPurchase" : 1,
                    "thumbnailUrl": "http://bbb.bbb.bb",
                    "previewUrl" : "http://ccc.ccc.ccc",
                    "downloadLink" : "http://ddd.ddd.dd",
                    "downloadedField" : 2
                    }
                ]
            })

if __name__ == '__main__':
    app.run(debug=True)

