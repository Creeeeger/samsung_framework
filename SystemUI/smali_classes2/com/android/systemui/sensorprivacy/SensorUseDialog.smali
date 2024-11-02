.class public final Lcom/android/systemui/sensorprivacy/SensorUseDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 5

    .line 1
    const v0, 0x7f140560

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/high16 v1, 0x80000

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/Window;->addSystemFlags(I)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 30
    .line 31
    .line 32
    const v0, 0x7fffffff

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x2

    .line 36
    const/4 v2, 0x1

    .line 37
    const/4 v3, 0x0

    .line 38
    if-eq p2, v2, :cond_2

    .line 39
    .line 40
    if-eq p2, v1, :cond_1

    .line 41
    .line 42
    if-eq p2, v0, :cond_0

    .line 43
    .line 44
    move v4, v3

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const v4, 0x7f130f8b

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const v4, 0x7f130f8d

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const v4, 0x7f130f8f

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-virtual {p0, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 58
    .line 59
    .line 60
    if-eq p2, v2, :cond_5

    .line 61
    .line 62
    if-eq p2, v1, :cond_4

    .line 63
    .line 64
    if-eq p2, v0, :cond_3

    .line 65
    .line 66
    move p2, v3

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    const p2, 0x7f130f8a

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    const p2, 0x7f130f8c

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_5
    const p2, 0x7f130f8e

    .line 77
    .line 78
    .line 79
    :goto_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-static {p2, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    const p2, 0x7f130d43

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    const/4 v0, -0x1

    .line 98
    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 99
    .line 100
    .line 101
    const p2, 0x7f130d42

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    const/4 p2, -0x2

    .line 109
    invoke-virtual {p0, p2, p1, p3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 116
    .line 117
    .line 118
    return-void
.end method
