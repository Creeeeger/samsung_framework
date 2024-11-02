.class public Lcom/android/systemui/net/NetworkOverLimitActivity;
.super Landroid/app/Activity;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "android.net.NETWORK_TEMPLATE"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/net/NetworkTemplate;

    .line 15
    .line 16
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 17
    .line 18
    const v1, 0x7f14056c

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 25
    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    const-string p0, "NetworkOverLimitActivity"

    .line 29
    .line 30
    const-string p1, "invalid template"

    .line 31
    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/16 v2, 0xa

    .line 41
    .line 42
    if-eq v1, v2, :cond_1

    .line 43
    .line 44
    const v1, 0x7f13045d

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const v1, 0x7f130441

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 55
    .line 56
    const v1, 0x7f130440

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 63
    .line 64
    new-instance v1, Lcom/android/systemui/net/NetworkOverLimitActivity$$ExternalSyntheticLambda0;

    .line 65
    .line 66
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/net/NetworkOverLimitActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/net/NetworkOverLimitActivity;Landroid/net/NetworkTemplate;)V

    .line 67
    .line 68
    .line 69
    const p1, 0x7f130442

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 76
    .line 77
    const v0, 0x7f130300

    .line 78
    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const/16 v0, 0x7d3

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 96
    .line 97
    new-instance v0, Lcom/android/systemui/net/NetworkOverLimitActivity$$ExternalSyntheticLambda1;

    .line 98
    .line 99
    invoke-direct {v0, p0}, Lcom/android/systemui/net/NetworkOverLimitActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/net/NetworkOverLimitActivity;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 114
    .line 115
    or-int/lit8 v0, v0, 0x2

    .line 116
    .line 117
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 118
    .line 119
    const v0, 0x3e99999a    # 0.3f

    .line 120
    .line 121
    .line 122
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 123
    .line 124
    const/16 v0, 0x50

    .line 125
    .line 126
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 127
    .line 128
    iget-object v0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 129
    .line 130
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 135
    .line 136
    .line 137
    iget-object p0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 138
    .line 139
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
