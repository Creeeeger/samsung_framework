.class public final Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    .line 1
    const-string p1, "KeyguardWallpaperEventHandler"

    .line 2
    .line 3
    const-string p3, "onBiometricAuthenticated()"

    .line 4
    .line 5
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 9
    .line 10
    if-ne p2, p1, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    .line 13
    .line 14
    const/4 p1, -0x1

    .line 15
    const/16 p2, 0x2d7

    .line 16
    .line 17
    const/4 p3, 0x0

    .line 18
    invoke-static {p0, p2, p3, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 1
    const-string p2, "KeyguardWallpaperEventHandler"

    .line 2
    .line 3
    const-string v0, "onBiometricError()"

    .line 4
    .line 5
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    sget-object p2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 9
    .line 10
    if-ne p3, p2, :cond_0

    .line 11
    .line 12
    const/4 p2, 0x3

    .line 13
    if-ne p1, p2, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    .line 16
    .line 17
    const/4 p1, -0x1

    .line 18
    const/16 p2, 0x2d8

    .line 19
    .line 20
    const/4 p3, 0x0

    .line 21
    invoke-static {p0, p2, p3, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final onDlsViewModeChanged(I)V
    .locals 2

    .line 1
    const-string v0, "onDlsViewModeChanged mode: "

    .line 2
    .line 3
    const-string v1, "KeyguardWallpaperEventHandler"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    .line 9
    .line 10
    const/16 v0, 0x2dc

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {p0, v0, v1, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onDreamingStateChanged(Z)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCarUiMode(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "onDreamingStateChanged: "

    .line 10
    .line 11
    const-string v2, ", isCarUiMode = "

    .line 12
    .line 13
    const-string v3, "KeyguardWallpaperEventHandler"

    .line 14
    .line 15
    invoke-static {v1, p1, v2, v0, v3}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    const/4 v1, -0x1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    const/16 p1, 0x343

    .line 25
    .line 26
    invoke-static {p0, p1, v0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/16 p1, 0x342

    .line 31
    .line 32
    invoke-static {p0, p1, v0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    return-void
.end method

.method public final onKeyguardBouncerFullyShowingChanged(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onKeyguardBouncerFullyShowingChanged(), bouncer: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "KeyguardWallpaperEventHandler"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    .line 25
    .line 26
    const/16 v0, 0x2d4

    .line 27
    .line 28
    const/4 v1, -0x1

    .line 29
    invoke-static {p0, v0, p1, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onKeyguardGoingAway()V
    .locals 3

    .line 1
    const-string v0, "KeyguardWallpaperEventHandler"

    .line 2
    .line 3
    const-string v1, "onKeyguardGoingAway()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    .line 9
    .line 10
    const/16 v0, 0x2cf

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, -0x1

    .line 14
    invoke-static {p0, v0, v1, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onKeyguardVisibilityChanged(Z)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 4
    .line 5
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    .line 6
    .line 7
    const-string v1, "onKeyguardVisibilityChanged(), showing: "

    .line 8
    .line 9
    const-string v2, " , occluded = "

    .line 10
    .line 11
    const-string v3, "KeyguardWallpaperEventHandler"

    .line 12
    .line 13
    invoke-static {v1, p1, v2, v0, v3}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mOccluded:Z

    .line 17
    .line 18
    const/4 v2, -0x1

    .line 19
    if-eq v1, v0, :cond_0

    .line 20
    .line 21
    const/16 v1, 0x2d5

    .line 22
    .line 23
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {p0, v1, v3, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    .line 28
    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mOccluded:Z

    .line 31
    .line 32
    :cond_0
    const/16 v0, 0x2d3

    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p0, v0, p1, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final onPackageAdded(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_FESTIVAL_WALLPAPER:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "com.samsung.android.festivalwallpaper"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    new-instance p1, Landroid/content/Intent;

    .line 14
    .line 15
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "com.samsung.intent.action.LAUNCH_FESTIVAL_WALLPAPER"

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    const/16 v0, 0x20

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    const-string v0, "com.samsung.android.permission.SET_FESTIVAL_WALLPAPER"

    .line 36
    .line 37
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public final onUdfpsFingerDown$1()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUdfpsFingerUp$1()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUnlocking()V
    .locals 3

    .line 1
    const-string v0, "KeyguardWallpaperEventHandler"

    .line 2
    .line 3
    const-string v1, "onUnlocking()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    .line 9
    .line 10
    const/16 v0, 0x2d6

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, -0x1

    .line 14
    invoke-static {p0, v0, v1, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mOccluded:Z

    .line 19
    .line 20
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 21
    .line 22
    const/16 v1, 0x2d5

    .line 23
    .line 24
    invoke-static {p0, v1, v0, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onUserSwitchComplete(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "onUserSwitchComplete(), userId: "

    .line 2
    .line 3
    .line 4
    const-string v1, "KeyguardWallpaperEventHandler"

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    .line 10
    .line 11
    const/16 v0, 0x2d1

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {p0, v0, v1, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onUserSwitching(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "onUserSwitching(), userId: "

    .line 2
    .line 3
    .line 4
    const-string v1, "KeyguardWallpaperEventHandler"

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    .line 10
    .line 11
    const/16 v0, 0x2d0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {p0, v0, v1, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
