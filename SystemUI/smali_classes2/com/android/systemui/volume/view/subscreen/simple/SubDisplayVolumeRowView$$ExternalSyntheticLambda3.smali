.class public final synthetic Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;

.field public final synthetic f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda3;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda3;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 10
    .line 11
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 12
    .line 13
    sget v1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->$r8$clinit:I

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isHasVibrator()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->updateContentDescription(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda3;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 29
    .line 30
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 31
    .line 32
    sget v1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->$r8$clinit:I

    .line 33
    .line 34
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->getStreamLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    iget-object v2, v0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_0

    .line 51
    .line 52
    iget-object v1, v0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    .line 53
    .line 54
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->getStreamLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
