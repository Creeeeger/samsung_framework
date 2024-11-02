.class public final Lcom/android/systemui/screenshot/sep/SnackbarController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final cb:Lcom/android/systemui/screenshot/sep/SnackbarController$DismissedCallback;

.field public final context:Landroid/content/Context;

.field public final displayId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/systemui/screenshot/sep/SnackbarController$DismissedCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/SnackbarController;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/systemui/screenshot/sep/SnackbarController;->displayId:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/screenshot/sep/SnackbarController;->cb:Lcom/android/systemui/screenshot/sep/SnackbarController$DismissedCallback;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final showScreenshotError(Landroid/view/View;Lcom/android/systemui/screenshot/sep/SemScreenshotResult;)V
    .locals 6

    .line 1
    iget p2, p2, Lcom/android/systemui/screenshot/sep/SemScreenshotResult;->failedReason:I

    .line 2
    .line 3
    and-int/lit8 v0, p2, 0x20

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, -0x1

    .line 7
    iget-object v3, p0, Lcom/android/systemui/screenshot/sep/SnackbarController;->context:Landroid/content/Context;

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const v0, 0x7f1304b8

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    .line 25
    .line 26
    .line 27
    iget v4, p0, Lcom/android/systemui/screenshot/sep/SnackbarController;->displayId:I

    .line 28
    .line 29
    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getMultiWindowModeStates(I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v4, 0x1

    .line 34
    if-eq v0, v4, :cond_0

    .line 35
    .line 36
    const/4 v5, 0x2

    .line 37
    if-ne v0, v5, :cond_1

    .line 38
    .line 39
    :cond_0
    move v1, v4

    .line 40
    :cond_1
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    const v0, 0x7f1304b7

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    :cond_2
    invoke-static {p1, p2, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    new-instance p2, Lcom/android/systemui/screenshot/sep/SnackbarController$showSnackBarSecurityFlag$1;

    .line 58
    .line 59
    invoke-direct {p2, p0}, Lcom/android/systemui/screenshot/sep/SnackbarController$showSnackBarSecurityFlag$1;-><init>(Lcom/android/systemui/screenshot/sep/SnackbarController;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->addCallback(Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    and-int/lit8 p2, p2, 0x40

    .line 70
    .line 71
    if-eqz p2, :cond_4

    .line 72
    .line 73
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    const v0, 0x7f1304b5

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-static {p1, p2, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const v1, 0x7f1311fc

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    new-instance v1, Lcom/android/systemui/screenshot/sep/SnackbarController$showSnackBarMdm$1;

    .line 100
    .line 101
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/screenshot/sep/SnackbarController$showSnackBarMdm$1;-><init>(Lcom/android/systemui/screenshot/sep/SnackbarController;Landroid/view/View;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 105
    .line 106
    .line 107
    new-instance p1, Lcom/android/systemui/screenshot/sep/SnackbarController$showSnackBarMdm$2;

    .line 108
    .line 109
    invoke-direct {p1, p0}, Lcom/android/systemui/screenshot/sep/SnackbarController$showSnackBarMdm$2;-><init>(Lcom/android/systemui/screenshot/sep/SnackbarController;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->addCallback(Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/SnackbarController;->cb:Lcom/android/systemui/screenshot/sep/SnackbarController$DismissedCallback;

    .line 120
    .line 121
    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;

    .line 122
    .line 123
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->detachSemScreenshotLayoutToWindow()V

    .line 126
    .line 127
    .line 128
    sput-boolean v1, Lcom/android/systemui/screenshot/ScreenshotController;->isSnackBarShowing:Z

    .line 129
    .line 130
    :goto_0
    return-void
.end method
