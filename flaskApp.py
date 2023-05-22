from flask import Flask, render_template, request, jsonify

app = Flask(__name__)

@app.route('/predict', methods=['POST'])
def process_data():
    input_value = request.form['inputValue']

    # Perform necessary processing on input_value
    result = process_input(input_value)

    return 'hello'#jsonify(result=result)


def process_input(input_value):
    # Process the input value and return the result
    return 'Processed: ' + input_value


if __name__ == '__main__':
    app.run(debug=True)