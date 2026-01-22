## Integral Action Interpretation

Adding an integral state allows the controller to accumulate tracking error over time, ensuring zero steady-state error under constant references or disturbances.Physically, the integrator forces the controller to keep applying corrective action as long as error exists, instead of stopping once the system reaches a constant offset.This improves accuracy but introduces slower dynamics, highlighting the trade-off between steady-state performance and response speed.
