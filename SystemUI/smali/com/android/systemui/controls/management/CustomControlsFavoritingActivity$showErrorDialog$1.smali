.class public final Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$showErrorDialog$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$showErrorDialog$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$showErrorDialog$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->activity:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$showErrorDialog$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->activity:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$showErrorDialog$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v2, v0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->appName:Ljava/lang/CharSequence;

    .line 28
    .line 29
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const v3, 0x7f1303fa

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 41
    .line 42
    const v3, 0x7f1404c5

    .line 43
    .line 44
    .line 45
    invoke-direct {v2, v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 46
    .line 47
    .line 48
    iget-object v3, v2, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 49
    .line 50
    iget-object v4, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    const v5, 0x7f1303fc

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    iput-object v4, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 60
    .line 61
    iput-object v1, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 62
    .line 63
    new-instance v1, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$createErrorDialog$builder$1$1;

    .line 64
    .line 65
    invoke-direct {v1, v0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$createErrorDialog$builder$1$1;-><init>(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)V

    .line 66
    .line 67
    .line 68
    const v4, 0x7f1303fb

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v4, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 72
    .line 73
    .line 74
    new-instance v1, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$createErrorDialog$builder$1$2;

    .line 75
    .line 76
    invoke-direct {v1, v0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$createErrorDialog$builder$1$2;-><init>(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)V

    .line 77
    .line 78
    .line 79
    const v4, 0x7f1303a0

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v4, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 83
    .line 84
    .line 85
    new-instance v1, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$createErrorDialog$builder$1$3;

    .line 86
    .line 87
    invoke-direct {v1, v0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$createErrorDialog$builder$1$3;-><init>(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)V

    .line 88
    .line 89
    .line 90
    iput-object v1, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 91
    .line 92
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const/4 v2, 0x0

    .line 97
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 98
    .line 99
    .line 100
    iput-object v1, v0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->retryDialog:Landroidx/appcompat/app/AlertDialog;

    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$showErrorDialog$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    .line 103
    .line 104
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->retryDialog:Landroidx/appcompat/app/AlertDialog;

    .line 105
    .line 106
    if-eqz p0, :cond_1

    .line 107
    .line 108
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 109
    .line 110
    .line 111
    :cond_1
    return-void
.end method
