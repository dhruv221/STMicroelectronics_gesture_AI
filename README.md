# Gesture Recognition System with STM32, Sensor Fusion, and AI

## Project Overview

Our innovative project aims to develop a cutting-edge AI-based gesture recognition system utilizing accelerometer, gyroscope, and magnetometer data from STM32 microcontrollers. This versatile model has extensive applications in smart wearables like watches and rings, healthcare devices for patient monitoring, and animation studios for motion capture.

## Key Features

### Sensor Fusion and Orientation
- Utilizing accelerometer, gyroscope, and magnetometer data for precise orientation detection.
- Implementing sensor fusion techniques to obtain orientation data in quaternions for accurate gesture recognition.

### Supported Gestures
1. **Pinch Gesture**
   - Recognizing subtle pinch gestures for intuitive interaction with devices.

2. **Clench Gesture**
   - Identifying hand clenching motions for diverse applications, including medical monitoring and animation control.

## Data Acquisition

### STM Firmware
- Developing firmware for STM32 microcontrollers to collect raw sensor data.
- Ensuring efficient communication between sensors and the microcontroller.

### Matlab Analysis and Digital Filtering
- Crafting Matlab code to analyze power spectral density for insightful frequency domain insights.
- Designing a 1st order IIR Butterworth digital filter for noise reduction and signal enhancement.

### Data Preprocessing on STM Firmware
- Implementing preprocessing steps like normalization and digital filtering directly on the STM32 microcontroller.
- Optimizing data quality before transmitting it to the AI model.

### Python DAQ for Custom Dataset
- Developing a Python Data Acquisition (DAQ) system to write CSV files for creating a customized dataset.
- Ensuring flexibility and scalability in collecting diverse gestures and postures.

## TensorFlow Model

### Model Architecture
- Designing a deep learning model using TensorFlow and Keras.
- Incorporating layers for feature extraction, pattern recognition, and classification.

### Loss Function Visualization
- Implementing and training the model with appropriate loss functions.
- Visualizing the model's performance through loss function plots to ensure effective training.

### Model Versatility
- Ensuring the model is adaptable to various gestures and postures.
- Fine-tuning the architecture for optimal recognition accuracy.

## Future Enhancements

- **Real-time Gesture Recognition:** Implementing real-time processing for instantaneous gesture detection.
- **Edge AI Integration:** Exploring possibilities of deploying the model on edge devices for improved efficiency.
- **Continuous Learning:** Incorporating mechanisms for continuous learning to adapt to user-specific gestures over time.

By seamlessly integrating sensor data, advanced algorithms, and machine learning, our project aims to revolutionize gesture recognition technology with applications across multiple domains.
