//Why is not Map<String, dynamic> a subtype of dynamic [duplicate]

// class UserForm<T> extends StatefulWidget {
//   const UserForm({
//     Key? key,
//     required this.onSubmit,

//     ///....
//   }) : super(key: key);

//   final ValueChanged<T> onSubmit;

//   /// ....

//   @override
//   _UserFormState createState() => _UserFormState();
// }

// class _UserFormState extends State<UserFormState> {
//   @override
//   Widget build(BuildContext context) {
//     return SomeButton(onTap: _onSubmit);

//     void _onSubmit() {
//       final data = {'name': _name};
//       widget.onSubmit(data);
//     }
//   }
// }
