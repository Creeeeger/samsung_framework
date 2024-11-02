.class public final Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView;->binding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseCancelingLevelViewBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseCancelingLevelViewBinding;->noiseCancelingSeekbar:Landroid/widget/SeekBar;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eq v0, v1, :cond_1

    .line 21
    .line 22
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView;->binding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseCancelingLevelViewBinding;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseCancelingLevelViewBinding;->noiseCancelingSeekbar:Landroid/widget/SeekBar;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method
