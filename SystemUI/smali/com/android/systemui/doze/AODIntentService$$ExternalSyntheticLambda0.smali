.class public final synthetic Lcom/android/systemui/doze/AODIntentService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/doze/AODIntentService;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/AODIntentService;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/doze/AODIntentService$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/doze/AODIntentService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/doze/AODIntentService$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/doze/AODIntentService$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/doze/AODIntentService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/doze/AODIntentService$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/doze/AODIntentService;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 6
    .line 7
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager;->mHandler:Lcom/android/systemui/doze/PluginAODManager$9;

    .line 14
    .line 15
    new-instance v2, Lcom/android/systemui/doze/PluginAODManager$$ExternalSyntheticLambda1;

    .line 16
    .line 17
    invoke-direct {v2, v0, p0}, Lcom/android/systemui/doze/PluginAODManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/doze/PluginAODManager;Landroid/content/Intent;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method
