
class CustomFunctions{
  

static String formatDuration(int seconds) {
  final minutes = (seconds / 60).floor();
  final remainingSeconds = seconds % 60;
  
  final minutesString = minutes.toString().padLeft(2, '0');
  final secondsString = remainingSeconds.toString().padLeft(2, '0');
  
  return '$minutesString:$secondsString';
}
}