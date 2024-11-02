.class public final Lcom/samsung/android/systemui/multistar/MultiStarManager$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/systemui/multistar/MultiStarManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$2;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    .line 2
    .line 3
    sget-object p2, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    .line 4
    .line 5
    const-string p2, "MultiStarManager"

    .line 6
    .line 7
    const-string v0, "onPluginConnected"

    .line 8
    .line 9
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    sput-object p1, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$2;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mMultiStarSystemFacade:Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;

    .line 17
    .line 18
    invoke-interface {p1, p0}, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;->init(Lcom/samsung/systemui/splugins/multistar/PluginMultiStarSystemProxy;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    .line 2
    .line 3
    sget-object p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    .line 4
    .line 5
    const-string p0, "MultiStarManager"

    .line 6
    .line 7
    const-string p1, "onPluginDisconnected"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    sput-object p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    .line 14
    .line 15
    return-void
.end method
