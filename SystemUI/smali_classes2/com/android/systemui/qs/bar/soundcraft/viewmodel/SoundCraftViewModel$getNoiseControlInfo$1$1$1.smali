.class public final Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel$getNoiseControlInfo$1$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $previousList:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/systemui/qs/bar/soundcraft/model/NoiseControl;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel$getNoiseControlInfo$1$1$1;->$previousList:Ljava/util/Set;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/qs/bar/soundcraft/model/NoiseControl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel$getNoiseControlInfo$1$1$1;->$previousList:Ljava/util/Set;

    .line 4
    .line 5
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel$getNoiseControlInfo$1$1$1$1;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel$getNoiseControlInfo$1$1$1$1;-><init>(Lcom/android/systemui/qs/bar/soundcraft/model/NoiseControl;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, v0}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
