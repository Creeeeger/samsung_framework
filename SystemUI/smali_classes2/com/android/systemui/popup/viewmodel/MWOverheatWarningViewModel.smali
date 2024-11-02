.class public final Lcom/android/systemui/popup/viewmodel/MWOverheatWarningViewModel;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;


# instance fields
.field public final mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

.field public final mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

.field public final mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field public mMWOverheatWarningDialog:Lcom/android/systemui/popup/view/MWOverheatWarningDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/popup/util/PopupUIIntentWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/popup/viewmodel/MWOverheatWarningViewModel;->mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/popup/viewmodel/MWOverheatWarningViewModel;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/popup/viewmodel/MWOverheatWarningViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/popup/viewmodel/MWOverheatWarningViewModel;->mMWOverheatWarningDialog:Lcom/android/systemui/popup/view/MWOverheatWarningDialog;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final getAction()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "com.samsung.android.action.MULTI_WINDOW_ENABLE_CHANGED"

    .line 2
    .line 3
    return-object p0
.end method

.method public final show(Landroid/content/Intent;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/MWOverheatWarningViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

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
    move-result-object v0

    .line 10
    const-string v1, "com.samsung.android.action.MULTI_WINDOW_ENABLE_CHANGED"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const-string v0, "com.samsung.android.extra.MULTI_WINDOW_ENABLE_REQUESTER"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "com.samsung.android.extra.MULTI_WINDOW_ENABLED"

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const-string v2, "com.samsung.android.extra.IN_MULTI_WINDOW_MODE"

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string/jumbo v3, "show : "

    .line 42
    .line 43
    .line 44
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v3, ", "

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    iget-object v3, p0, Lcom/android/systemui/popup/viewmodel/MWOverheatWarningViewModel;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 69
    .line 70
    const-string v4, "MWOverheatWarningViewModel"

    .line 71
    .line 72
    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lcom/android/systemui/popup/viewmodel/MWOverheatWarningViewModel;->mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->initializeDialog()V

    .line 78
    .line 79
    .line 80
    const-string v5, "SSRM"

    .line 81
    .line 82
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_1

    .line 87
    .line 88
    if-nez v1, :cond_1

    .line 89
    .line 90
    if-eqz p1, :cond_1

    .line 91
    .line 92
    new-instance p1, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;

    .line 93
    .line 94
    iget-object v0, v2, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    iget-object v1, v2, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 97
    .line 98
    invoke-direct {p1, v0, v1}, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;)V

    .line 99
    .line 100
    .line 101
    iput-object p1, v2, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    const/4 p1, 0x0

    .line 105
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/popup/viewmodel/MWOverheatWarningViewModel;->mMWOverheatWarningDialog:Lcom/android/systemui/popup/view/MWOverheatWarningDialog;

    .line 106
    .line 107
    if-eqz p1, :cond_2

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->show()V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    const-string/jumbo p0, "show() invalid AlertDialog"

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, v4, p0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :goto_1
    return-void
.end method
