.class public final synthetic Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBarState:I

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->onBarStateChanged(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
