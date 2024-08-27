# v1.0.2(20) - 17/04/23 | 17:19
Platform: Android & iOS
New Features:
Fixed:
- IN-1481

# v1.0.2(19) - 17/04/23 | 16:50
Platform: Android & iOS
New Features:
- Search in Prompt | IN-1494
- Limit Free Generate Image is 3 | IN-1499

Fixed:
- IN-1492
- IN-1495
- IN-1497
- IN-1498
- IN-1479

# v1.0.2(18) - 14/04/23 | 17:30
Platform: Android & iOS
Fixed:
- IN-1492
- IN-1481 + add remove message
- Update: splash screen

# v1.0.2(17) - 14/04/23 | 14:30
Platform: Android & iOS

Fixed:
- IN-1474
- IN-1420
- IN-1456
- IN-1478
- Update: splashscreen. onboarding, login, drawer menu

# v1.0.2(16) - 14/04/23 | 01:25
Platform: Android & iOS

New Features:
- Check valid subscription when the user creates a new chat
- Push directly to `Input Key` when clicking `Manage Key` on the **`Setting Page`**
- Keep the old key if the user tries to save an invalid key

Fixed:
- IN-1464
- IN-1465
- IN-1472
- IN-1473
- IN-1477

# v1.0.2(15) - 13/04/23 | 17:00
Platform: Android & iOS

New Features:
- User must be login before subscribing to a subscription

# v1.0.2(14) - 13/04/23 | 15:53
Platform: Android

Fixed:
- FluxStore feature
    - IN-1201
    - IN-1419
    - IN-1459
    - ~~IN-1202 (Fixed in ver 13)~~

# v1.0.2(13) - 13/04/23 | 11:12
Platform: Android & iOS

New Features:
- Sync subscription theo account của FluxGPT,
    - Hiện tại chỉ chấp nhận sync khi logn bằng Username và Password.
    - Khi người dùng đăng nhập vào FluxGPT và tiến hành đăng ký một subscription, subscription này sẽ đi theo account của người dùng.
    - Khi người dùng logout thì không thể tiếp tục sử dụng tính năng
    - Đăng nhập lại thì sử dụng bình thường, đăng nhập vào máy khác cũng sẽ sử dụng được bình thường (vì đã mua subscription rồi).
    - Hiện tại tính năng này chỉ hỗ trợ cho TextGenerate và ImageGenerate feature.
Fixed:
- FluxStore feature
    - IN-1201
    - IN-1416
    - IN-1202
- Language
    - IN-1417
    - IN-1458

# v1.0.2(12) - 12/04/23 | 16:11
New Features:
- Input Open AI Key feature:
    - Check Validate Api Key when Save
    - Allow Edit API key
    - Allow Delete API key
    - Use API Key to call API
    - Manage API Key in Settings → Manage API Key

# v1.0.2(11) - 12/04/23 | 14:40
- *OS: Android & iOS*

- *Fixed:*
    - [IN-1131](https://linear.app/inspire/issue/IN-1131/update-ui-of-image-and-text-generator-screens)
    - [IN-1360](https://linear.app/inspire/issue/IN-1360/the-main-color-of-openai-screen-in-darktheme-display-insufficiently)
    - [IN-1394](https://linear.app/inspire/issue/IN-1394/[chatgpt]-the-chat-list-is-unclear-in-dark-mode)
    - [IN-1396](https://linear.app/inspire/issue/IN-1396/[chatgpt]-the-string-and-micro-icon-displays-on-text-box-are-unclear)
    - [IN-1400](https://linear.app/inspire/issue/IN-1400/the-first-dialog-notifying-subscription-is-unclear-in-dark-mode)
    - [IN-1408](https://linear.app/inspire/issue/IN-1408/[image-generator]-the-drop-down-menu-on-options-dialog-overlap-the)
    - [IN-1457](https://linear.app/inspire/issue/IN-1457/[subscription-ui]-the-subscription-price-is-not-in-the-line-of-the)
    - IN-1413

# v1.0.2 (10) - 11/04/23 | 17:00
- *OS: Android & iOS*
- *Fixed:*
    - [https://linear.app/inspire/issue/IN-1410/[text-generator]-please-fill-in-all-fields-message-display](https://linear.app/inspire/issue/IN-1236/sai-strings-tren-settings-dialog)
- *Feature:*
    - Allow input OpenAI Key (Test case: nhập vào key (chuỗi bất kỳ), bấm save thành công và có thể tiếp tục sử dụng ứng dụng).
- *Update:*
    - Nope

# v1.0.2 (9) - 11/04/23 | 10:32
- *OS: Android & iOS*
- *Fixed:*
    - [https://linear.app/inspire/issue/IN-1410/[text-generator]-please-fill-in-all-fields-message-display](https://linear.app/inspire/issue/IN-1410/%5Btext-generator%5D-please-fill-in-all-fields-message-display)
- *Feature:*
    - Subscription for Android
    - Free User Sending Image Limitation (Max 10 Searches): (hiện chưa kiểm tra trạng thái của User nên vẫn bắt phải subscription thì mới cho dùng tính năng. Subscription xong cũng sẽ chỉ dùng được tối đa 10 lần) User story thì sẽ cho Free user sử dụng tính năng này tối đa 10 lần, sau đó sẽ bắt User subscription, sau khi User đăng ký subscription thì sẽ không giới hạn số lần
    - Prompt Library  - Chọn các Prompt template có sẵn từ cộng đồng.
- *Update:*
    - Nope

# v1.0.2(6) - 10/04/23 | 11h31

- *OS: Android & iOS*
- *Fixed:*
    - [[IN-1199]](https://linear.app/inspire/issue/IN-1199/[image-generator]-the-options-boxes-show-none-unexpectedly-after)[Image Generator] The options boxes show None unexpectedly after changing the value to "None”
    - [[IN-1399]](https://linear.app/inspire/issue/IN-1399/the-screen-show-loading-all-the-time-after-closing-the-subscription)The screen show loading all the time after closing the subscription payment dialog
    - [[IN-1401]](https://linear.app/inspire/issue/IN-1401/[chatgpt]-empty-message-or-message-with-empty-space-can-be-sent)[ChatGPT] Empty message or Message with empty space can be sent
    - [[IN-1402]](https://linear.app/inspire/issue/IN-1402/[image-generator]-there-is-only-one-option-box-display)[Image Generator] There is only one option box display
    - [[IN-1404]](https://linear.app/inspire/issue/IN-1404/[image-generator]-the-option-box-still-display-after-resetting-it)[Image Generator] The option box still display after resetting it
    - [[IN-1405]](https://linear.app/inspire/issue/IN-1405/[image-generator]-fail-to-remove-the-option-boxes)[Image Generator] Fail to remove the option boxes
    - [[IN-1406]](https://linear.app/inspire/issue/IN-1406/[image-generator]-no-options-display-when-clicking-apply-after)[Image Generator] No options display when clicking Apply after skipping subscription
    - [[IN-1411]](https://linear.app/inspire/issue/IN-1411/[text-generator]-the-main-screen-display-after-clicking-copy-while)[Text Generator] The main screen display after clicking Copy while editing content
- *Feature:*
- *Update:*


# v1.0.2 (4)
- *OS:  iOS & Android*
- *Fixed:*
- *Feature:*
    - Clear all chat in the conversation
    - Share conversation chat
    - Stored Chat history to local private (use Hive)

# v1.0.2 (3)
- *OS:  iOS & Android*
- *Fixed:*
- *Feature:*
    - Android
        - Text to Speech
        - Show the Conversations history as List
        - In app purchases + Subscription ⭐️   - Waiting Google Review
        - Speech to text
    - iOS
        - Speech to text

# v1.0.2 (1)
- *OS:  iOS*
- *Fixed:*
- *Feature:*
    - Text to Speech
    - Show the Conversations history as List
    - [iOS] In app purchases + Subscription ⭐️
