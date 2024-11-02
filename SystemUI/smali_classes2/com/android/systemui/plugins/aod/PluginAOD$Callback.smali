.class public interface abstract Lcom/android/systemui/plugins/aod/PluginAOD$Callback;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/aod/PluginAOD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public dozeTimeTick()V
    .locals 0

    .line 1
    return-void
.end method

.method public onFinishMOD(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onRequestMOD(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract onRequestState(I)V
.end method

.method public onSendExtraData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public onUpdateDozeBrightness(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public onUpdateDozeBrightness(III)V
    .locals 0

    .line 2
    return-void
.end method

.method public onUpdateWindowLayoutParams()V
    .locals 0

    .line 1
    return-void
.end method
