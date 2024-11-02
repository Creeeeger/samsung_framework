.class public final Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;


# instance fields
.field public final mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

.field public final mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field mPopupCompleted:Z

.field public final mToastWrapper:Lcom/android/systemui/popup/util/PopupUIToastWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/popup/util/PopupUIToastWrapper;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/popup/util/PopupUIIntentWrapper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;->mPopupCompleted:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;->mToastWrapper:Lcom/android/systemui/popup/util/PopupUIToastWrapper;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 0

    .line 1
    return-void
.end method

.method public final getAction()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "android.intent.action.BOOT_COMPLETED"

    .line 2
    .line 3
    return-object p0
.end method

.method public final show(Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;->mPopupCompleted:Z

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    const-string p1, "makeToast one only time"

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 26
    .line 27
    const-string v0, "MobileDeviceWarningViewModel"

    .line 28
    .line 29
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;->mPopupCompleted:Z

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;->mToastWrapper:Lcom/android/systemui/popup/util/PopupUIToastWrapper;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/systemui/popup/util/PopupUIToastWrapper;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const v0, 0x7f130b4f

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const/4 v0, 0x0

    .line 52
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 57
    .line 58
    .line 59
    return-void
.end method
