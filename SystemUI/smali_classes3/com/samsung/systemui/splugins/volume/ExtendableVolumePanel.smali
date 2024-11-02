.class public interface abstract Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# virtual methods
.method public abstract getVolumePanelCurrentState()Lcom/samsung/systemui/splugins/volume/VolumePanelState;
.end method

.method public abstract recreateVolumePanelForNewConfig()V
.end method

.method public abstract restoreToDefaultStore()V
.end method

.method public abstract setActionObserver(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setStateObservable(Lcom/samsung/systemui/splugins/volume/VolumeObservable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/volume/VolumeObservable<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
            ">;)V"
        }
    .end annotation
.end method
