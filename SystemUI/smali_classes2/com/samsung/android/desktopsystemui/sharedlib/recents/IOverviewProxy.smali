.class public interface abstract Lcom/samsung/android/desktopsystemui/sharedlib/recents/IOverviewProxy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopsystemui/sharedlib/recents/IOverviewProxy$Stub;,
        Lcom/samsung/android/desktopsystemui/sharedlib/recents/IOverviewProxy$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.desktopsystemui.sharedlib.recents.IOverviewProxy"


# virtual methods
.method public abstract onActiveNavBarRegionChanges(Landroid/graphics/Region;)V
.end method

.method public abstract onAssistantAvailable(Z)V
.end method

.method public abstract onAssistantVisibilityChanged(F)V
.end method

.method public abstract onBackAction(ZIIZZ)V
.end method

.method public abstract onImeWindowStatusChanged(ILandroid/os/IBinder;IIZ)V
.end method

.method public abstract onInitialize(Landroid/os/Bundle;)V
.end method

.method public abstract onOverviewHidden(ZZ)V
.end method

.method public abstract onOverviewShown(Z)V
.end method

.method public abstract onOverviewToggle()V
.end method

.method public abstract onSplitScreenSecondaryBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method public abstract onSystemUiStateChanged(I)V
.end method

.method public abstract onTip(II)V
.end method
