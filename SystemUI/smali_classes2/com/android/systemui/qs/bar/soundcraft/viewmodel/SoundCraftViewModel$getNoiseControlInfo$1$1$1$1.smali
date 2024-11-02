.class public final Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel$getNoiseControlInfo$1$1$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $noiseControl:Lcom/android/systemui/qs/bar/soundcraft/model/NoiseControl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/soundcraft/model/NoiseControl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel$getNoiseControlInfo$1$1$1$1;->$noiseControl:Lcom/android/systemui/qs/bar/soundcraft/model/NoiseControl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/qs/bar/soundcraft/model/NoiseControl;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/soundcraft/model/NoiseControl;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel$getNoiseControlInfo$1$1$1$1;->$noiseControl:Lcom/android/systemui/qs/bar/soundcraft/model/NoiseControl;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/model/NoiseControl;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method
