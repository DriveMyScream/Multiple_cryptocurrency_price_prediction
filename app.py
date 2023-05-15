import tensorflow as tf
import numpy as np
import streamlit as st

st.title("Cryptocurrency Price Prediction")
st.write("Enter the past 7 days' prices for Bitcoin, Ethereum, Tether, Binance Coin, and XRP.")

# Dictionary to map cryptocurrency names to model files
crypto_models = {
    'Bitcoin (BTC)': 'Bitcoin_Price_Prediction',
    'Ethereum (ETH)': 'Ethereum_Price_Prediction',
    'Tether (USDT)': 'Tether_Price_Prediction',
    'Binance Coin (BNB)': 'Binance_coin_Price_Prediction',
    'XRP (XRP)': 'XRP_Price_Prediction'
}

# Cryptocurrency selection dropdown
selected_crypto = st.selectbox('Select a cryptocurrency', ('Bitcoin (BTC)', 'Ethereum (ETH)', 'Tether (USDT)', 'Binance Coin (BNB)', 'XRP (XRP)'))

# Load the selected cryptocurrency model
model = tf.keras.models.load_model(crypto_models[selected_crypto])

# Price inputs
price_inputs = []
for i in range(1, 8):
    price_input = st.number_input(f'Enter the price for day {i}')
    price_inputs.append(price_input)

# Reshape the price inputs for prediction
prices = np.array(price_inputs).reshape(1, -1, 1)

# Prediction button
if st.button('Predict Price'):
    prediction_price = model.predict(prices)
    prediction_price = prediction_price[0][0]

    st.title(f"Predicted {selected_crypto} Price for the 8th day: {prediction_price:.2f}")
