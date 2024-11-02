.class public final Lcom/android/systemui/volume/util/DisplayManagerWrapper$registerDisplayVolumeListener$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/hardware/display/SemDisplayVolumeListener;


# instance fields
.field public final synthetic $isMute:Ljava/util/function/Consumer;

.field public final synthetic this$0:Lcom/android/systemui/volume/util/DisplayManagerWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/util/DisplayManagerWrapper;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/volume/util/DisplayManagerWrapper;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper$registerDisplayVolumeListener$1;->this$0:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper$registerDisplayVolumeListener$1;->$isMute:Ljava/util/function/Consumer;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onVolumeChanged(IIIZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper$registerDisplayVolumeListener$1;->this$0:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    .line 2
    .line 3
    iput p3, v0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->displayCurrentVolume:I

    .line 4
    .line 5
    iput p1, v0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->minSmartViewVol:I

    .line 6
    .line 7
    iput p2, v0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->maxSmartViewVol:I

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 10
    .line 11
    const-string v1, "onDisplayVolumeChanged : curVol = "

    .line 12
    .line 13
    const-string v2, ", minVol = "

    .line 14
    .line 15
    const-string v3, ", maxVol = "

    .line 16
    .line 17
    invoke-static {v1, p3, v2, p1, v3}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p2, ", mute="

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string p2, "DisplayManagerWrapper"

    .line 37
    .line 38
    invoke-virtual {v0, p2, p1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper$registerDisplayVolumeListener$1;->$isMute:Ljava/util/function/Consumer;

    .line 42
    .line 43
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
