.class public final Lcom/android/systemui/volume/view/VolumeRowView$recheckCallback$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/view/VolumeRowView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/VolumeRowView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView$recheckCallback$1;->this$0:Lcom/android/systemui/volume/view/VolumeRowView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView$recheckCallback$1;->this$0:Lcom/android/systemui/volume/view/VolumeRowView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/volume/view/VolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 4
    .line 5
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 6
    .line 7
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_CHECK_IF_NEED_TO_SET_PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    .line 8
    .line 9
    invoke-direct {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumeRowView$recheckCallback$1;->this$0:Lcom/android/systemui/volume/view/VolumeRowView;

    .line 13
    .line 14
    iget v2, v2, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView$recheckCallback$1;->this$0:Lcom/android/systemui/volume/view/VolumeRowView;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 23
    .line 24
    if-nez p0, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    invoke-virtual {v1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->progress(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
