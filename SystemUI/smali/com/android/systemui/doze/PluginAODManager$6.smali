.class public final Lcom/android/systemui/doze/PluginAODManager$6;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/aod/PluginAOD$UICallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/doze/PluginAODManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/PluginAODManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$6;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getKeyguardOrientation()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$6;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->provider:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;

    .line 14
    .line 15
    if-nez p0, :cond_1

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;->lpSupplier:Ljava/util/function/Supplier;

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Landroid/view/WindowManager$LayoutParams;

    .line 25
    .line 26
    if-nez p0, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 30
    .line 31
    :goto_0
    return v0
.end method

.method public final getLockStarData(Z)Landroid/os/Bundle;
    .locals 2

    .line 1
    const-string v0, "getLockStarData() "

    .line 2
    .line 3
    const-string v1, "PluginAODManager"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$6;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    .line 13
    .line 14
    const-string v0, "LStar|PluginLockStarManager"

    .line 15
    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    const-string p0, "getAODLockStarData: no plugin"

    .line 19
    .line 20
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    new-instance p0, Landroid/os/Bundle;

    .line 24
    .line 25
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getAODData(Z)Landroid/os/Bundle;

    .line 30
    .line 31
    .line 32
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    const-string p0, "getAODLockStarData: no method"

    .line 35
    .line 36
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    new-instance p0, Landroid/os/Bundle;

    .line 40
    .line 41
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-object p0
.end method

.method public final isWonderLandAmbientWallpaperEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$6;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isWonderLandAmbientWallpaper()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final registerAODDoubleTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 2

    .line 1
    const-string v0, "PluginAODManager"

    .line 2
    .line 3
    const-string/jumbo v1, "registerAODDoubleTouchListener() "

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$6;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationPanel:Lcom/android/systemui/shade/ShadeViewController;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAODDoubleTouchListener:Landroid/view/View$OnTouchListener;

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final setBottomArea(Landroid/view/View;)V
    .locals 2

    .line 1
    const-string v0, "PluginAODManager"

    .line 2
    .line 3
    const-string/jumbo v1, "setBottomArea() "

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$6;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationPanel:Lcom/android/systemui/shade/ShadeViewController;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 22
    .line 23
    instance-of v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->bottomDozeArea$delegate:Lkotlin/Lazy;

    .line 30
    .line 31
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/widget/FrameLayout;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->bottomDozeArea$delegate:Lkotlin/Lazy;

    .line 41
    .line 42
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Landroid/widget/FrameLayout;

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method public final unregisterAODDoubleTouchListener()V
    .locals 2

    .line 1
    const-string v0, "PluginAODManager"

    .line 2
    .line 3
    const-string/jumbo v1, "unregisterAODDoubleTouchListener() "

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$6;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationPanel:Lcom/android/systemui/shade/ShadeViewController;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAODDoubleTouchListener:Landroid/view/View$OnTouchListener;

    .line 23
    .line 24
    :cond_0
    return-void
.end method
