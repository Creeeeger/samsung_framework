.class public final Lcom/android/keyguard/SecLockIconViewController$5;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/SecLockIconViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/SecLockIconViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/SecLockIconViewController$5;->this$0:Lcom/android/keyguard/SecLockIconViewController;

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
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController$5;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mDisplayType:I

    .line 8
    .line 9
    iget v1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 10
    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    .line 13
    iput v1, p0, Lcom/android/keyguard/SecLockIconViewController;->mDisplayType:I

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->isLockStarEnabled()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mIsLockStarEnabled:Z

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 33
    .line 34
    check-cast v1, Lcom/android/keyguard/SecLockIconView;

    .line 35
    .line 36
    iput-boolean v0, v1, Lcom/android/keyguard/SecLockIconView;->mIsLockStarEnabled:Z

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    const/high16 v0, 0x3f800000    # 1.0f

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconViewController;->updateVisibility()V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mCurrentOrientation:I

    .line 49
    .line 50
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 51
    .line 52
    if-eq v0, p1, :cond_3

    .line 53
    .line 54
    iput p1, p0, Lcom/android/keyguard/SecLockIconViewController;->mCurrentOrientation:I

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconViewController;->updateVisibility()V

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 60
    .line 61
    check-cast p0, Lcom/android/keyguard/SecLockIconView;

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconView;->updateLockIconViewLayoutParams()V

    .line 64
    .line 65
    .line 66
    :cond_3
    return-void
.end method
