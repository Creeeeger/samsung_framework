.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic $this_apply:Lcom/android/systemui/widget/SystemUIEditText;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;Lcom/android/systemui/widget/SystemUIEditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$2;->$this_apply:Lcom/android/systemui/widget/SystemUIEditText;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    .line 2
    .line 3
    sget-object p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->enableSendButton()V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$2;->$this_apply:Lcom/android/systemui/widget/SystemUIEditText;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    .line 15
    .line 16
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->signature:Ljava/lang/String;

    .line 17
    .line 18
    new-instance p3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    .line 38
    .line 39
    iget-boolean p4, p3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->isSms:Z

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    if-eqz p4, :cond_1

    .line 43
    .line 44
    const/4 p2, 0x0

    .line 45
    invoke-static {p1, p2}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    aget p1, p1, p2

    .line 50
    .line 51
    const/4 p2, 0x1

    .line 52
    if-le p1, p2, :cond_3

    .line 53
    .line 54
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->setPrevText()V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    .line 60
    .line 61
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->access$showExceedTextLimitToast(Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    .line 65
    .line 66
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->prevText:Ljava/lang/CharSequence;

    .line 67
    .line 68
    if-nez p1, :cond_0

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$2;->$this_apply:Lcom/android/systemui/widget/SystemUIEditText;

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    :cond_0
    return-void

    .line 76
    :cond_1
    iget p1, p3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->maxLength:I

    .line 77
    .line 78
    if-le p2, p1, :cond_3

    .line 79
    .line 80
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->setPrevText()V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    .line 84
    .line 85
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->access$showExceedTextLimitToast(Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    .line 89
    .line 90
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->prevText:Ljava/lang/CharSequence;

    .line 91
    .line 92
    if-nez p1, :cond_2

    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$2;->$this_apply:Lcom/android/systemui/widget/SystemUIEditText;

    .line 95
    .line 96
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    :cond_2
    return-void

    .line 100
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$2;->$this_apply:Lcom/android/systemui/widget/SystemUIEditText;

    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->prevText:Ljava/lang/CharSequence;

    .line 113
    .line 114
    return-void
.end method
