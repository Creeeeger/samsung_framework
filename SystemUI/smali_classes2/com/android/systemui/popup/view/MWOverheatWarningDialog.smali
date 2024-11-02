.class public final Lcom/android/systemui/popup/view/MWOverheatWarningDialog;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/popup/view/PopupUIAlertDialog;


# instance fields
.field public mDialog:Landroid/app/AlertDialog;

.field public final mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 5
    .line 6
    new-instance p2, Lcom/android/systemui/popup/data/MWOverheatWarningData;

    .line 7
    .line 8
    invoke-direct {p2}, Lcom/android/systemui/popup/data/MWOverheatWarningData;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const v0, 0x7f130bdf

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    const v1, 0x7f130bde

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const v1, 0x7f130bdd

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const v2, 0x7f131331

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 55
    .line 56
    const v3, 0x7f14056c

    .line 57
    .line 58
    .line 59
    invoke-direct {v2, p1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 66
    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    invoke-virtual {v2, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-object p1, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mDialog:Landroid/app/AlertDialog;

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const-string p2, "MWOverheatWarningDialog"

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mDialog:Landroid/app/AlertDialog;

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const/16 p2, 0x7d8

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mDialog:Landroid/app/AlertDialog;

    .line 103
    .line 104
    iput-object p1, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mDialog:Landroid/app/AlertDialog;

    .line 105
    .line 106
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mDialog:Landroid/app/AlertDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mDialog:Landroid/app/AlertDialog;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final isShowing()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mDialog:Landroid/app/AlertDialog;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final show()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mDialog:Landroid/app/AlertDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mDialog:Landroid/app/AlertDialog;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const-string v0, "MWOverheatWarningDialog"

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/basic/util/LogWrapper;->v(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    :goto_0
    return-void
.end method
