# <div align="center">📀 Flutter Clipboard 📀</div>

## 🚀 Getting Started

- This Flutter Clipboard Repository is a lightweight and dependency-free package for managing clipboard operations in Flutter applications. It provides simple and easy-to-use methods to interact with the clipboard, allowing you to seamlessly integrate copy and paste functionality into your Flutter projects.

## 🎲 Features

- **Copy to Clipboard:** Easily copy text or data to the clipboard with a single function call.
- **Paste from Clipboard:** Retrieve text or data from the clipboard effortlessly.
- **No External Dependencies:** This repository is designed to be lightweight and independent, ensuring minimal impact on your project.

## ⚙️ Customization

- Customize the appearance and behavior of the clipboard according to your requirements:

1- **Copying Function:**

```dart
() {
  copyTextController.text.toString().isEmpty
      ? ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('No Text Found')))
      : Clipboard.setData(
              ClipboardData(text: copyTextController.text))
          .then((value) {
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(
            content: Text('Copied'),
            duration: Duration(seconds: 1),
          ));
        });
},
```
2- **Pasting Function:**

```dart
() {
  Clipboard.getData(Clipboard.kTextPlain).then((value) {
    pasteTextController.text = value!.text.toString();
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Pasted'), duration: Duration(seconds: 1)));
  });
},
```


## 📱 UI

![Clipboard](https://github.com/Shalaby-VBS/Flutter_Clipboard/assets/149938388/f824a57f-b088-4126-a38a-df7258ab0f04)

## 🛠 Dependencies

- Haven't any Dependencies 🚫

## 🫴 Contributing

- Contributions are welcome 💜
- If you find any issues or have suggestions for improvements, feel free to open an issue or submit a pull request.

## 💳 License

- This package is distributed under the MIT License. Feel free to use and modify it according to your project requirements.

## 🤝 Contact With Me

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/ahmed-shalaby-21196521b/) 
[![Gmail](https://img.shields.io/badge/Gmail-333333?style=for-the-badge&logo=gmail&logoColor=red)](https://www.shalaby.vbs@gmail.com)
[![Facebook](https://img.shields.io/badge/Facebook-0077B5?style=for-the-badge&logo=facebook&logoColor=white)](https://www.facebook.com/profile.php?id=100093012790432&mibextid=hIlR13)
[![Instagram](https://img.shields.io/badge/Instagram-E4405F?style=for-the-badge&logo=instagram&logoColor=white)](https://www.instagram.com/sh4l4by/)

</div>

## 💖 Support

- If you find this tutorial useful or learned something from this code, consider show some ❤️ by starring this repo.
