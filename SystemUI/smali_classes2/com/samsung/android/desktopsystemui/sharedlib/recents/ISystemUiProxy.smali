.class public interface abstract Lcom/samsung/android/desktopsystemui/sharedlib/recents/ISystemUiProxy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopsystemui/sharedlib/recents/ISystemUiProxy$Stub;,
        Lcom/samsung/android/desktopsystemui/sharedlib/recents/ISystemUiProxy$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.desktopsystemui.sharedlib.recents.ISystemUiProxy"


# virtual methods
.method public abstract expandNotificationPanel()V
.end method

.method public abstract getNonMinimizedSplitScreenSecondaryBounds()Landroid/graphics/Rect;
.end method

.method public abstract handleImageAsScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Insets;I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract handleImageBundleAsScreenshot(Landroid/os/Bundle;Landroid/graphics/Rect;Landroid/graphics/Insets;Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;)V
.end method

.method public abstract injectKey(I)V
.end method

.method public abstract isTaskbarShown()Z
.end method

.method public abstract monitorGestureInput(Ljava/lang/String;I)Landroid/os/Bundle;
.end method

.method public abstract notifyAccessibilityButtonClicked(I)V
.end method

.method public abstract notifyAccessibilityButtonLongClicked()V
.end method

.method public abstract notifySwipeToHomeFinished()V
.end method

.method public abstract onAssistantGestureCompletion(F)V
.end method

.method public abstract onAssistantProgress(F)V
.end method

.method public abstract onOverviewShown(Z)V
.end method

.method public abstract onQuickSwitchToNewTask(I)V
.end method

.method public abstract onStatusBarMotionEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract setNavBarButtonAlpha(FZ)V
.end method

.method public abstract setSplitScreenMinimized(Z)V
.end method

.method public abstract startAssistant(Landroid/os/Bundle;)V
.end method

.method public abstract startScreenPinning(I)V
.end method

.method public abstract stopScreenPinning()V
.end method
