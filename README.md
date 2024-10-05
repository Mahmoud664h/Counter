# Flutter Counter App with Bloc State Management

This is a simple Flutter application demonstrating state management using the Bloc pattern (Flutter Bloc package). The app features a basic counter that can be incremented, decremented, or reset, with feedback displayed via snack bars for each action.

Features:
Increment: Increase the counter value.
Decrement: Decrease the counter value.
Reset: Reset the counter to zero.
Bloc for State Management: The application leverages the Bloc and Cubit architecture to manage state changes.
Snack Bar Notifications: Displays notifications when the counter is incremented, decremented, or reset, with different background colors for each action.
Project Structure:
main.dart: Initializes the app with BlocProvider for CounterCubit.
screen.dart: The main UI with buttons for incrementing, decrementing, and resetting the counter, as well as a snack bar listener.
counter_cubit.dart: Contains the logic for changing the counter state and emitting appropriate events.
counter_states.dart: Defines the different states (Increment, Decrement, Reset) for the counter.

