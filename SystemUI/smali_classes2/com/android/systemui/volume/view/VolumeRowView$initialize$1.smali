.class public final Lcom/android/systemui/volume/view/VolumeRowView$initialize$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/view/VolumeRowView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/VolumeRowView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView$initialize$1;->this$0:Lcom/android/systemui/volume/view/VolumeRowView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView$initialize$1;->this$0:Lcom/android/systemui/volume/view/VolumeRowView;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/volume/view/VolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 6
    .line 7
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_ICON_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView$initialize$1;->this$0:Lcom/android/systemui/volume/view/VolumeRowView;

    .line 13
    .line 14
    iget p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isFromOutside(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
