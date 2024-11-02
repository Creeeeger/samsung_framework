.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;
.super Landroid/app/Activity;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final broadcastReceiver:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$broadcastReceiver$1;

.field public final controller:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

.field public final displayListener:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$displayListener$1;

.field public editText:Lcom/android/systemui/widget/SystemUIEditText;

.field public entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public imm:Landroid/view/inputmethod/InputMethodManager;

.field public isForce:Z

.field public isSent:Z

.field public isSms:Z

.field public key:Ljava/lang/String;

.field public maxLength:I

.field public final notifPipeLine:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field public prevText:Ljava/lang/CharSequence;

.field public replyLayout:Landroid/widget/LinearLayout;

.field public sendButton:Landroid/widget/ImageView;

.field public signature:Ljava/lang/String;

.field public subRoomNoti:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

.field public toast:Landroid/widget/Toast;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "SubscreenNotificationReplyActivity"

    .line 8
    .line 9
    sput-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->controller:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->notifPipeLine:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->key:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->prevText:Ljava/lang/CharSequence;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->signature:Ljava/lang/String;

    .line 15
    .line 16
    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$displayListener$1;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$displayListener$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->displayListener:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$displayListener$1;

    .line 22
    .line 23
    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$broadcastReceiver$1;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$broadcastReceiver$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->broadcastReceiver:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$broadcastReceiver$1;

    .line 29
    .line 30
    sget-object p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->TAG:Ljava/lang/String;

    .line 31
    .line 32
    const-string p1, "SubscreenNotificationReplyActivity()"

    .line 33
    .line 34
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static final access$performBackClicked(Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->replyLayout:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    :cond_1
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    new-array v2, v2, [F

    .line 17
    .line 18
    fill-array-data v2, :array_0

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-wide/16 v1, 0x12c

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 28
    .line 29
    .line 30
    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$performBackClicked$lambda$10$$inlined$doOnEnd$1;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$performBackClicked$lambda$10$$inlined$doOnEnd$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static final access$showExceedTextLimitToast(Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f130c02

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->toast:Landroid/widget/Toast;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 v1, 0x1

    .line 20
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->toast:Landroid/widget/Toast;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->prevText:Ljava/lang/CharSequence;

    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string/jumbo v1, "showExceedTextLimitToast. current text = "

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    sget-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->TAG:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-ne v0, v1, :cond_3

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/16 v2, 0x42

    .line 28
    .line 29
    if-ne v0, v2, :cond_3

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->sendButton:Landroid/widget/ImageView;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/widget/ImageView;->isFocused()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-ne v0, v1, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move v1, v2

    .line 44
    :goto_1
    if-eqz v1, :cond_3

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->sendButton:Landroid/widget/ImageView;

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    .line 51
    .line 52
    .line 53
    :cond_3
    :goto_2
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    return p0
.end method

.method public final enableSendButton()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->sendButton:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->editText:Lcom/android/systemui/widget/SystemUIEditText;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-lez p0, :cond_1

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 29
    .line 30
    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    const/high16 p0, 0x3f800000    # 1.0f

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    const p0, 0x3ecccccd    # 0.4f

    .line 37
    .line 38
    .line 39
    :goto_2
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 40
    .line 41
    .line 42
    :cond_3
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    const-string v0, "onCreate()"

    .line 7
    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    const-string v0, "input_method"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 20
    .line 21
    const v0, 0x7f0d046e

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->controller:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 32
    .line 33
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getSubRoomNotification()Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move-object v2, v3

    .line 44
    :goto_0
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->subRoomNoti:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 45
    .line 46
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubscreenMainLayout:Landroid/widget/LinearLayout;

    .line 47
    .line 48
    const/16 v4, 0x8

    .line 49
    .line 50
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    const v2, 0x7f0a08b5

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Landroid/widget/LinearLayout;

    .line 61
    .line 62
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->replyLayout:Landroid/widget/LinearLayout;

    .line 63
    .line 64
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 65
    .line 66
    if-eqz v4, :cond_1

    .line 67
    .line 68
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateMainHeaderView(Landroid/widget/LinearLayout;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 72
    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->subRoomNoti:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 80
    .line 81
    if-nez v5, :cond_2

    .line 82
    .line 83
    move-object v5, v3

    .line 84
    :cond_2
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 85
    .line 86
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 87
    .line 88
    invoke-virtual {v2, v4, v5, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->initMainHeaderViewItems(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;Z)V

    .line 89
    .line 90
    .line 91
    :cond_3
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 92
    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    const/4 v2, 0x0

    .line 96
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateMainHeaderViewVisibility(I)V

    .line 97
    .line 98
    .line 99
    :cond_4
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 100
    .line 101
    if-eqz v0, :cond_5

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setStartedReplyActivity()V

    .line 104
    .line 105
    .line 106
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->replyLayout:Landroid/widget/LinearLayout;

    .line 107
    .line 108
    if-nez v0, :cond_6

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_6
    move-object v3, v0

    .line 112
    :goto_1
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 113
    .line 114
    const/4 v2, 0x2

    .line 115
    new-array v4, v2, [F

    .line 116
    .line 117
    fill-array-data v4, :array_0

    .line 118
    .line 119
    .line 120
    invoke-static {v3, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const-wide/16 v3, 0xfa

    .line 125
    .line 126
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    if-eqz v0, :cond_7

    .line 142
    .line 143
    const-string v3, "key"

    .line 144
    .line 145
    const-string v4, ""

    .line 146
    .line 147
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->key:Ljava/lang/String;

    .line 152
    .line 153
    const-string v3, "maxLength"

    .line 154
    .line 155
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    iput v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->maxLength:I

    .line 160
    .line 161
    const-string v3, "isSms"

    .line 162
    .line 163
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->isSms:Z

    .line 168
    .line 169
    const-string/jumbo v3, "signature"

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->signature:Ljava/lang/String;

    .line 177
    .line 178
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->notifPipeLine:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 179
    .line 180
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->key:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 187
    .line 188
    if-eqz v0, :cond_8

    .line 189
    .line 190
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputText:Ljava/lang/CharSequence;

    .line 191
    .line 192
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->prevText:Ljava/lang/CharSequence;

    .line 193
    .line 194
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->key:Ljava/lang/String;

    .line 195
    .line 196
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->prevText:Ljava/lang/CharSequence;

    .line 197
    .line 198
    iget v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->maxLength:I

    .line 199
    .line 200
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->isSms:Z

    .line 201
    .line 202
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->signature:Ljava/lang/String;

    .line 203
    .line 204
    new-instance v7, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    const-string v8, "Reply Info. key = "

    .line 207
    .line 208
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string v0, ", prevText = "

    .line 215
    .line 216
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v0, ", maxLength = "

    .line 223
    .line 224
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    const-string v0, ", isSms = "

    .line 231
    .line 232
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string v0, ", signature = "

    .line 239
    .line 240
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    const/4 v0, -0x2

    .line 258
    const-string/jumbo v3, "screen_off_timeout"

    .line 259
    .line 260
    .line 261
    const/16 v4, 0x2710

    .line 262
    .line 263
    invoke-static {p1, v3, v4, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 264
    .line 265
    .line 266
    move-result p1

    .line 267
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    if-eqz v0, :cond_9

    .line 276
    .line 277
    int-to-long v3, p1

    .line 278
    invoke-virtual {v0, v3, v4}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    .line 279
    .line 280
    .line 281
    const-wide/16 v3, 0x0

    .line 282
    .line 283
    invoke-virtual {v0, v3, v4}, Landroid/view/WindowManager$LayoutParams;->semSetScreenDimDuration(J)V

    .line 284
    .line 285
    .line 286
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 287
    .line 288
    or-int/lit8 p1, p1, 0x10

    .line 289
    .line 290
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 291
    .line 292
    const/4 p1, 0x3

    .line 293
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 294
    .line 295
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 300
    .line 301
    .line 302
    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    const v0, 0x7f081286

    .line 307
    .line 308
    .line 309
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    const/4 v0, 0x4

    .line 317
    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 318
    .line 319
    .line 320
    const p1, 0x7f0a0119

    .line 321
    .line 322
    .line 323
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    check-cast p1, Landroid/widget/LinearLayout;

    .line 328
    .line 329
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$1$1;

    .line 330
    .line 331
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$1$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    .line 336
    .line 337
    const p1, 0x7f0a0478

    .line 338
    .line 339
    .line 340
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    check-cast p1, Landroid/widget/FrameLayout;

    .line 345
    .line 346
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$2$1;

    .line 347
    .line 348
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$2$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    .line 353
    .line 354
    const p1, 0x7f0a0398

    .line 355
    .line 356
    .line 357
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 358
    .line 359
    .line 360
    move-result-object p1

    .line 361
    check-cast p1, Lcom/android/systemui/widget/SystemUIEditText;

    .line 362
    .line 363
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$1;

    .line 364
    .line 365
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 369
    .line 370
    .line 371
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$2;

    .line 372
    .line 373
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;Lcom/android/systemui/widget/SystemUIEditText;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 377
    .line 378
    .line 379
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->editText:Lcom/android/systemui/widget/SystemUIEditText;

    .line 380
    .line 381
    const p1, 0x7f0a08b9

    .line 382
    .line 383
    .line 384
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    check-cast p1, Landroid/widget/ImageView;

    .line 389
    .line 390
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$4$1;

    .line 391
    .line 392
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$4$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;Landroid/widget/ImageView;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    .line 397
    .line 398
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->sendButton:Landroid/widget/ImageView;

    .line 399
    .line 400
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->setPrevText()V

    .line 401
    .line 402
    .line 403
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->enableSendButton()V

    .line 404
    .line 405
    .line 406
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->editText:Lcom/android/systemui/widget/SystemUIEditText;

    .line 407
    .line 408
    if-eqz p1, :cond_a

    .line 409
    .line 410
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 411
    .line 412
    .line 413
    :cond_a
    iput-object p0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->replyActivity:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    .line 414
    .line 415
    const-class p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 416
    .line 417
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object p1

    .line 421
    check-cast p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 422
    .line 423
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->displayListener:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$displayListener$1;

    .line 424
    .line 425
    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 426
    .line 427
    .line 428
    const-class p1, Lcom/android/systemui/statusbar/CommandQueue;

    .line 429
    .line 430
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object p1

    .line 434
    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue;

    .line 435
    .line 436
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 437
    .line 438
    .line 439
    new-instance p1, Landroid/content/IntentFilter;

    .line 440
    .line 441
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 442
    .line 443
    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->broadcastReceiver:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$broadcastReceiver$1;

    .line 447
    .line 448
    invoke-virtual {p0, v0, p1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 449
    .line 450
    .line 451
    return-void

    .line 452
    nop

    .line 453
    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "onDestroy()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->isSent:Z

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    const-string v2, ""

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->editText:Lcom/android/systemui/widget/SystemUIEditText;

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move-object v2, v1

    .line 30
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    :goto_1
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputText:Ljava/lang/CharSequence;

    .line 35
    .line 36
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->subRoomNoti:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 37
    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    move-object v0, v1

    .line 41
    :cond_3
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubscreenMainLayout:Landroid/widget/LinearLayout;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->controller:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 48
    .line 49
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->replyActivity:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 52
    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->isForce:Z

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->replyActivityFinished(Z)V

    .line 58
    .line 59
    .line 60
    :cond_4
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->displayListener:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$displayListener$1;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->broadcastReceiver:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$broadcastReceiver$1;

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 76
    .line 77
    .line 78
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->toast:Landroid/widget/Toast;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    .locals 0

    .line 1
    const/4 p1, 0x2

    .line 2
    and-int/lit8 p2, p3, 0x2

    .line 3
    .line 4
    if-eqz p2, :cond_1

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->editText:Lcom/android/systemui/widget/SystemUIEditText;

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->editText:Lcom/android/systemui/widget/SystemUIEditText;

    .line 16
    .line 17
    if-nez p0, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    const/4 p1, 0x4

    .line 21
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public final setPrevText()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->prevText:Ljava/lang/CharSequence;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->editText:Lcom/android/systemui/widget/SystemUIEditText;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->editText:Lcom/android/systemui/widget/SystemUIEditText;

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method
