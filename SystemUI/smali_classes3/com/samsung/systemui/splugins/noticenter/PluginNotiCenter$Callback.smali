.class public interface abstract Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onChangedVisibilityOnKeyguard(Z)V
.end method

.method public abstract onNoclearAppListUpdate(Landroid/os/Bundle;)V
.end method

.method public abstract onNoclearUpdate(Z)V
.end method

.method public abstract onNotiCenterPanelUpdate(Landroid/widget/RemoteViews;)V
.end method

.method public abstract onNotiStarPanelShowOnKeyguard(Z)V
.end method
