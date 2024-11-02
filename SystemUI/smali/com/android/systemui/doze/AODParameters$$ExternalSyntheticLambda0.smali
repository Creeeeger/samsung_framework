.class public final synthetic Lcom/android/systemui/doze/AODParameters$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/doze/AODParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/AODParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/doze/AODParameters$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/doze/AODParameters;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/doze/AODParameters$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/doze/AODParameters;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/doze/AODParameters;->updateDozeAlwaysOn()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/doze/AODParameters;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 7
    .line 8
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->updateAnimateScreenOff()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
