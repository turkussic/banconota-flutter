class CalculationUtils {
  const CalculationUtils(
    this.sendBankFee,
    this.receiveBankFee,
    this.selectedTime,
    this.amount,
    this.exchangeRate,
  );

  final double sendBankFee;
  final double receiveBankFee;
  final double selectedTime;
  final double amount;
  final double exchangeRate;
}
