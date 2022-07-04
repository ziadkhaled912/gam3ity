import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.width,
    this.isLoading = false,
  }) : super(key: key);

  final String label;
  final Function() onPressed;
  final double? width;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: MaterialButton(
        onPressed: isLoading ? () {} : onPressed,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        color: Theme.of(context).primaryColor,
        child: !isLoading ? Text(
          label,
          style: Theme.of(context)
              .textTheme
              .bodyText1
              ?.copyWith(fontWeight: FontWeight.w600, color: Colors.white),
        ) : const CircularProgressIndicator(color: Colors.white),
      ),
    );
  }
}
