.class public final Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$5;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$5;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$5;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 6
    .line 7
    check-cast v1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 14
    .line 15
    move-object v3, v2

    .line 16
    check-cast v3, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    .line 17
    .line 18
    iget v3, v3, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastDisplayDeviceType:I

    .line 19
    .line 20
    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 21
    .line 22
    sget-boolean v4, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 23
    .line 24
    const-string v5, " -> "

    .line 25
    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    if-eq v3, p1, :cond_0

    .line 29
    .line 30
    check-cast v2, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    .line 31
    .line 32
    iget-object v0, v2, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    const-string/jumbo v1, "onConfigChanged() display device type "

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v3, v5, p1, v0}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 41
    .line 42
    move-object v0, p0

    .line 43
    check-cast v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    .line 44
    .line 45
    iput p1, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastDisplayDeviceType:I

    .line 46
    .line 47
    check-cast p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->updateScreenConfig()V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mLastDensityDpi:I

    .line 54
    .line 55
    if-ne p1, v0, :cond_1

    .line 56
    .line 57
    iget p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mLastLayoutDirection:I

    .line 58
    .line 59
    if-eq p1, v1, :cond_2

    .line 60
    .line 61
    :cond_1
    check-cast v2, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    .line 62
    .line 63
    iget-object p1, v2, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    .line 64
    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string/jumbo v3, "onConfigChanged() density "

    .line 68
    .line 69
    .line 70
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget v3, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mLastDensityDpi:I

    .line 74
    .line 75
    const-string v4, ", direction "

    .line 76
    .line 77
    invoke-static {v2, v3, v5, v0, v4}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget v3, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mLastLayoutDirection:I

    .line 81
    .line 82
    invoke-static {v2, v3, v5, v1, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iput v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mLastDensityDpi:I

    .line 86
    .line 87
    iput v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mLastLayoutDirection:I

    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 90
    .line 91
    check-cast p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->updateVILocation()V

    .line 94
    .line 95
    .line 96
    :cond_2
    :goto_0
    return-void
.end method
