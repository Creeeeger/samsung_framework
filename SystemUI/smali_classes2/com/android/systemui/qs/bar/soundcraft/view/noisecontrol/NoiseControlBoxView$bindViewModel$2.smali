.class public final Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$bindViewModel$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$bindViewModel$2;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;

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
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "bindViewModel : showNoiseEffectBoxView="

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "SoundCraft.NoiseControlBoxView"

    .line 18
    .line 19
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$bindViewModel$2;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;

    .line 23
    .line 24
    invoke-static {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->access$updateBoxLayout(Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
