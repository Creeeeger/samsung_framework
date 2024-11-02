.class public final Lcom/android/systemui/statusbar/phone/SafeUIStatusBarWindowController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mLp:Landroid/view/WindowManager$LayoutParams;

.field public mSafeUIWindowView:Landroid/widget/FrameLayout;

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarWindowController;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onBootCompleted()V
    .locals 1

    .line 1
    const-string p0, "SafeUIStatusBarWindowController"

    .line 2
    .line 3
    const-string v0, "onBootCompleted()"

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final start()V
    .locals 9

    .line 1
    const-string v0, "SafeUIStatusBarWindowController"

    .line 2
    .line 3
    const-string/jumbo v1, "start"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const-class v0, Landroid/view/WindowManager;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarWindowController;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/view/WindowManager;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarWindowController;->mWindowManager:Landroid/view/WindowManager;

    .line 20
    .line 21
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const v2, 0x7f0d02fe

    .line 26
    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/FrameLayout;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarWindowController;->mSafeUIWindowView:Landroid/widget/FrameLayout;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const v2, 0x1050501

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 49
    .line 50
    const/4 v4, -0x1

    .line 51
    const/16 v6, 0x7d0

    .line 52
    .line 53
    const v7, -0x7f7bffb8

    .line 54
    .line 55
    .line 56
    const/4 v8, -0x3

    .line 57
    move-object v3, v0

    .line 58
    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 62
    .line 63
    new-instance v2, Landroid/os/Binder;

    .line 64
    .line 65
    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 71
    .line 72
    const/16 v2, 0x30

    .line 73
    .line 74
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 75
    .line 76
    const/16 v2, 0x10

    .line 77
    .line 78
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 79
    .line 80
    const-string v2, "SafeUIBar"

    .line 81
    .line 82
    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 92
    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 94
    .line 95
    const/4 v1, 0x3

    .line 96
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 97
    .line 98
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarWindowController;->mWindowManager:Landroid/view/WindowManager;

    .line 99
    .line 100
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarWindowController;->mSafeUIWindowView:Landroid/widget/FrameLayout;

    .line 101
    .line 102
    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method
