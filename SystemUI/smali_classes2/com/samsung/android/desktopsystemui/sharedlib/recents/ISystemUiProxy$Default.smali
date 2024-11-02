.class public Lcom/samsung/android/desktopsystemui/sharedlib/recents/ISystemUiProxy$Default;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/desktopsystemui/sharedlib/recents/ISystemUiProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopsystemui/sharedlib/recents/ISystemUiProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public expandNotificationPanel()V
    .locals 0

    .line 1
    return-void
.end method

.method public getNonMinimizedSplitScreenSecondaryBounds()Landroid/graphics/Rect;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public handleImageAsScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Insets;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public handleImageBundleAsScreenshot(Landroid/os/Bundle;Landroid/graphics/Rect;Landroid/graphics/Insets;Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;)V
    .locals 0

    .line 1
    return-void
.end method

.method public injectKey(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public isTaskbarShown()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public monitorGestureInput(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public notifyAccessibilityButtonClicked(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyAccessibilityButtonLongClicked()V
    .locals 0

    .line 1
    return-void
.end method

.method public notifySwipeToHomeFinished()V
    .locals 0

    .line 1
    return-void
.end method

.method public onAssistantGestureCompletion(F)V
    .locals 0

    .line 1
    return-void
.end method

.method public onAssistantProgress(F)V
    .locals 0

    .line 1
    return-void
.end method

.method public onOverviewShown(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public onQuickSwitchToNewTask(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onStatusBarMotionEvent(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setNavBarButtonAlpha(FZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public setSplitScreenMinimized(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public startAssistant(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public startScreenPinning(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public stopScreenPinning()V
    .locals 0

    .line 1
    return-void
.end method
