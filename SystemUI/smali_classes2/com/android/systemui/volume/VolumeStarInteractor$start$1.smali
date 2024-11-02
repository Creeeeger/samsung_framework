.class public final Lcom/android/systemui/volume/VolumeStarInteractor$start$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# instance fields
.field public final synthetic $volumeDependency:Lcom/android/systemui/volume/VolumeDependencyBase;

.field public final synthetic $volumePanel:Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;

.field public final synthetic this$0:Lcom/android/systemui/volume/VolumeStarInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeStarInteractor;Lcom/android/systemui/volume/VolumeDependencyBase;Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeStarInteractor$start$1;->this$0:Lcom/android/systemui/volume/VolumeStarInteractor;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/volume/VolumeStarInteractor$start$1;->$volumeDependency:Lcom/android/systemui/volume/VolumeDependencyBase;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/volume/VolumeStarInteractor$start$1;->$volumePanel:Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumeStar;

    .line 2
    .line 3
    const-string v0, "VolumeStarInteractor"

    .line 4
    .line 5
    const-string v1, "onPluginConnected"

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeStarInteractor$start$1;->this$0:Lcom/android/systemui/volume/VolumeStarInteractor;

    .line 11
    .line 12
    iput-object p1, v0, Lcom/android/systemui/volume/VolumeStarInteractor;->volumeStar:Lcom/samsung/systemui/splugins/volume/VolumeStar;

    .line 13
    .line 14
    new-instance v1, Lcom/android/systemui/volume/VolumeStarDependencyImpl;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeStarInteractor$start$1;->$volumeDependency:Lcom/android/systemui/volume/VolumeDependencyBase;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeStarInteractor$start$1;->$volumePanel:Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;

    .line 19
    .line 20
    invoke-direct {v1, v2, p0}, Lcom/android/systemui/volume/VolumeStarDependencyImpl;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, v0, Lcom/android/systemui/volume/VolumeStarInteractor;->context:Landroid/content/Context;

    .line 24
    .line 25
    invoke-interface {p1, p0, p2, v1}, Lcom/samsung/systemui/splugins/volume/VolumeStar;->init(Landroid/content/Context;Landroid/content/Context;Lcom/samsung/systemui/splugins/volume/VolumeStarDependency;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, v0, Lcom/android/systemui/volume/VolumeStarInteractor;->volumeStar:Lcom/samsung/systemui/splugins/volume/VolumeStar;

    .line 29
    .line 30
    if-nez p0, :cond_0

    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    :cond_0
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStar;->start()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumeStar;

    .line 2
    .line 3
    const-string p1, "VolumeStarInteractor"

    .line 4
    .line 5
    const-string p2, "onPluginDisconnected"

    .line 6
    .line 7
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeStarInteractor$start$1;->this$0:Lcom/android/systemui/volume/VolumeStarInteractor;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeStarInteractor;->volumeStar:Lcom/samsung/systemui/splugins/volume/VolumeStar;

    .line 13
    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    :cond_0
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStar;->stop()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
