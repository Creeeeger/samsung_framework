.class public final Lcom/android/systemui/volume/view/icon/VolumeIconMotion$startMidAnimation$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic $stream:I

.field public final synthetic $targetState:I

.field public final synthetic this$0:Lcom/android/systemui/volume/view/icon/VolumeIconMotion;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/icon/VolumeIconMotion;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion$startMidAnimation$2$1;->this$0:Lcom/android/systemui/volume/view/icon/VolumeIconMotion;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion$startMidAnimation$2$1;->$stream:I

    .line 4
    .line 5
    iput p3, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion$startMidAnimation$2$1;->$targetState:I

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion$startMidAnimation$2$1;->this$0:Lcom/android/systemui/volume/view/icon/VolumeIconMotion;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 6
    .line 7
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_ICON_ANIMATION_FINISHED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 10
    .line 11
    .line 12
    iget v1, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion$startMidAnimation$2$1;->$stream:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget p0, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion$startMidAnimation$2$1;->$targetState:I

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->iconTargetState(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const/4 v0, 0x2

    .line 25
    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->iconCurrentState(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const/4 v0, 0x1

    .line 34
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
