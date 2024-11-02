.class public final Lcom/android/systemui/doze/AODParameters$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/doze/AODParameters;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/AODParameters;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/doze/AODParameters$1;->this$0:Lcom/android/systemui/doze/AODParameters;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onStatePostChange()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/doze/AODParameters$1;->this$0:Lcom/android/systemui/doze/AODParameters;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/doze/AODParameters;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 4
    .line 5
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->updateAnimateScreenOff()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
