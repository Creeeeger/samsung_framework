.class public interface abstract Lcom/android/systemui/plugins/aod/PluginAOD$UICallback;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/aod/PluginAOD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UICallback"
.end annotation


# virtual methods
.method public abstract getKeyguardOrientation()I
.end method

.method public getLockStarData(Z)Landroid/os/Bundle;
    .locals 0

    .line 1
    new-instance p0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public abstract isWonderLandAmbientWallpaperEnabled()Z
.end method

.method public abstract registerAODDoubleTouchListener(Landroid/view/View$OnTouchListener;)V
.end method

.method public setBottomArea(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract unregisterAODDoubleTouchListener()V
.end method
