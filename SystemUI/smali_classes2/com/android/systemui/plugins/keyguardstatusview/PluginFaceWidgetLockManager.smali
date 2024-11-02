.class public interface abstract Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetLockManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# virtual methods
.method public abstract addLockStarStateCallback(Lcom/android/systemui/plugins/keyguardstatusview/PluginLockStarStateCallback;)V
.end method

.method public abstract getModifier(Ljava/lang/String;)Ljava/util/function/Consumer;
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x413
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Consumer<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getSupplier(Ljava/lang/String;)Ljava/util/function/Supplier;
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x413
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Supplier<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract onSendExtraData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x7de
    .end annotation
.end method

.method public abstract removeLockStarStateCallback(Lcom/android/systemui/plugins/keyguardstatusview/PluginLockStarStateCallback;)V
.end method
