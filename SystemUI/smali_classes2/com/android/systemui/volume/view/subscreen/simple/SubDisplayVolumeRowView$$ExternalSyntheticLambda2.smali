.class public final synthetic Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_2

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;

    .line 8
    .line 9
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 10
    .line 11
    sget v0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->$r8$clinit:I

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/android/systemui/volume/view/ViewLevelConverter;->viewRealLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isVisible()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mProgressBarAnimator:Landroid/animation/ObjectAnimator;

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    iget p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mTargetProgressLevel:I

    .line 37
    .line 38
    if-ne p1, v0, :cond_0

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mProgressBarAnimator:Landroid/animation/ObjectAnimator;

    .line 42
    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    filled-new-array {v1, v0}, [I

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string/jumbo v2, "progress"

    .line 56
    .line 57
    .line 58
    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mProgressBarAnimator:Landroid/animation/ObjectAnimator;

    .line 63
    .line 64
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 65
    .line 66
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mProgressBarAnimator:Landroid/animation/ObjectAnimator;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    filled-new-array {v1, v0}, [I

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 89
    .line 90
    .line 91
    :goto_0
    iput v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mTargetProgressLevel:I

    .line 92
    .line 93
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mProgressBarAnimator:Landroid/animation/ObjectAnimator;

    .line 94
    .line 95
    const-wide/16 v0, 0x50

    .line 96
    .line 97
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 98
    .line 99
    .line 100
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mProgressBarAnimator:Landroid/animation/ObjectAnimator;

    .line 101
    .line 102
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mProgressBarAnimator:Landroid/animation/ObjectAnimator;

    .line 107
    .line 108
    if-eqz p1, :cond_3

    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 111
    .line 112
    .line 113
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    .line 114
    .line 115
    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 116
    .line 117
    .line 118
    :goto_1
    return-void

    .line 119
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;

    .line 120
    .line 121
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 122
    .line 123
    sget v0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->$r8$clinit:I

    .line 124
    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getEarProtectLevel()I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mEarProtectLevel:I

    .line 133
    .line 134
    if-eq p1, v0, :cond_4

    .line 135
    .line 136
    iput p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mEarProtectLevel:I

    .line 137
    .line 138
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    .line 139
    .line 140
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    .line 141
    .line 142
    .line 143
    :cond_4
    return-void

    .line 144
    nop

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
