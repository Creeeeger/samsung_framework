.class public final Lcom/android/systemui/wallpaper/CoverWallpaperController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/CoverWallpaperController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/CoverWallpaperController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController$1;->this$0:Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUserSwitchComplete(I)V
    .locals 4

    .line 1
    const-string/jumbo v0, "onUserSwitchComplete, userId: "

    .line 2
    .line 3
    .line 4
    const-string v1, "CoverWallpaperController"

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController$1;->this$0:Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mSmartCardController:Lcom/android/systemui/wallpaper/accessory/SmartCardController;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string/jumbo v2, "onUserSwitchCompleted, "

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "SmartCardController"

    .line 32
    .line 33
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    const-wide/16 v2, 0x0

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    invoke-virtual {p0, v2, v3, p1}, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->sendUpdateState(JZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p0

    .line 44
    const-string/jumbo p1, "onUserSwitchComplete, e: "

    .line 45
    .line 46
    .line 47
    invoke-static {p1, p0, v1}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method

.method public final onUserSwitching(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "onUserSwitching, userId: "

    .line 2
    .line 3
    .line 4
    const-string v1, "CoverWallpaperController"

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController$1;->this$0:Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mSmartCardController:Lcom/android/systemui/wallpaper/accessory/SmartCardController;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance p0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string/jumbo v0, "onUserSwitching, "

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string p1, "SmartCardController"

    .line 32
    .line 33
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    const-string/jumbo p1, "onUserSwitching, e: "

    .line 39
    .line 40
    .line 41
    invoke-static {p1, p0, v1}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method public final onUserUnlocked()V
    .locals 3

    .line 1
    const-string v0, "CoverWallpaperController"

    .line 2
    .line 3
    const-string/jumbo v1, "onUserUnlocked"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController$1;->this$0:Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mSmartCardController:Lcom/android/systemui/wallpaper/accessory/SmartCardController;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-string v0, "SmartCardController"

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->mainHandler:Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;

    .line 30
    .line 31
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;-><init>(Lcom/android/systemui/wallpaper/accessory/SmartCardController;Landroid/os/Looper;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->mainHandler:Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;

    .line 35
    .line 36
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->mainHandler:Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;

    .line 37
    .line 38
    const v0, 0x134b17e

    .line 39
    .line 40
    .line 41
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-wide/16 v1, 0xbb8

    .line 48
    .line 49
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 50
    .line 51
    .line 52
    return-void
.end method
