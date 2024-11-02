.class public Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;
.super Landroid/app/Activity;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBackButton:Landroid/widget/ImageView;

.field public mContext:Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;

.field public final mDisplayListener:Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity$1;

.field public mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity$1;-><init>(Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;->mDisplayListener:Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity$1;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "SubscreenCustomizerActivity"

    .line 5
    .line 6
    const-string v0, "SubscreenCustomizerActivity oncreate"

    .line 7
    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    const p1, 0x7f0d043c

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 15
    .line 16
    .line 17
    iput-object p0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;->mContext:Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;

    .line 18
    .line 19
    const-class p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;->mDisplayListener:Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity$1;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_DEFAULT:Z

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const/4 v0, 0x0

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const/16 v0, 0x400

    .line 67
    .line 68
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 69
    .line 70
    .line 71
    const/4 p1, 0x1

    .line 72
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 73
    .line 74
    .line 75
    const-class p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 76
    .line 77
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 82
    .line 83
    iput-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 84
    .line 85
    if-eqz p1, :cond_1

    .line 86
    .line 87
    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    const p1, 0x7f0a0b0b

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Landroid/widget/ImageView;

    .line 98
    .line 99
    iput-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;->mBackButton:Landroid/widget/ImageView;

    .line 100
    .line 101
    const p1, 0x7f0a0b1b

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Lcom/android/systemui/qp/customize/SubscreenCustomizer;

    .line 109
    .line 110
    iget-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;->mBackButton:Landroid/widget/ImageView;

    .line 111
    .line 112
    new-instance v0, Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity$$ExternalSyntheticLambda0;

    .line 113
    .line 114
    invoke-direct {v0, p0}, Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;->mContext:Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;

    .line 121
    .line 122
    iget-object p0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;->mBackButton:Landroid/widget/ImageView;

    .line 123
    .line 124
    invoke-static {p1, p0}, Lcom/android/systemui/qp/util/SubscreenUtil;->applyRotation(Landroid/content/Context;Landroid/view/View;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;->mDisplayListener:Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity$1;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizerActivity;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 25
    .line 26
    .line 27
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    const-string v0, "SubscreenCustomizerActivity"

    .line 2
    .line 3
    const-string v1, "SubscreenCustomizerActivity onStart"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onStartedGoingToSleep()V
    .locals 2

    .line 1
    const-string v0, "SubscreenCustomizerActivity"

    .line 2
    .line 3
    const-string v1, "onStartedGoingToSleep"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
