.class public final Lcom/android/systemui/volume/VolumeStarDependencyImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeStarDependency;


# instance fields
.field public final volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

.field public final volumePanel:Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeStarDependencyImpl;->volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/volume/VolumeStarDependencyImpl;->volumePanel:Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getDefaultMiddlewares()Ljava/util/List;
    .locals 6

    .line 1
    new-instance v0, Lcom/android/systemui/volume/middleware/JSonLogger;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeStarDependencyImpl;->volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/volume/middleware/JSonLogger;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/android/systemui/volume/middleware/DeviceStateController;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/android/systemui/volume/middleware/DeviceStateController;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lcom/android/systemui/volume/middleware/AudioManagerController;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lcom/android/systemui/volume/middleware/SmartViewInteractor;

    .line 19
    .line 20
    invoke-direct {v3, p0}, Lcom/android/systemui/volume/middleware/SmartViewInteractor;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    .line 21
    .line 22
    .line 23
    new-instance v4, Lcom/android/systemui/volume/middleware/BluetoothInteractor;

    .line 24
    .line 25
    invoke-direct {v4, p0}, Lcom/android/systemui/volume/middleware/BluetoothInteractor;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    .line 26
    .line 27
    .line 28
    new-instance v5, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;

    .line 29
    .line 30
    invoke-direct {v5, p0}, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    .line 31
    .line 32
    .line 33
    filled-new-array/range {v0 .. v5}, [Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public final getDefaultReducer()Lcom/samsung/systemui/splugins/volume/VolumePanelReducerBase;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeStarDependencyImpl;->volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final getVolumePanel()Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeStarDependencyImpl;->volumePanel:Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;

    .line 2
    .line 3
    return-object p0
.end method
