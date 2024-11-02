.class public abstract Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImplKt;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final DEBUG_DISABLE_REMOTE_UNLOCK_ANIMATION:Z

.field public static final IS_SAFE_MODE_ENABLED:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v0, "debug.keyguard.disable_unlock_animation"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    :cond_0
    sput-boolean v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImplKt;->DEBUG_DISABLE_REMOTE_UNLOCK_ANIMATION:Z

    .line 16
    .line 17
    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    sput-boolean v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImplKt;->IS_SAFE_MODE_ENABLED:Z

    .line 22
    .line 23
    return-void
.end method
