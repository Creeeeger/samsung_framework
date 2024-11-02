.class public final Lcom/android/systemui/navigationbar/gestural/Step;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final factor:F

.field public hasCrossedUpperBoundAtLeastOnce:Z

.field public final lowerFactor:F

.field public final postThreshold:Ljava/lang/Object;

.field public final preThreshold:Ljava/lang/Object;

.field public previousValue:Lcom/android/systemui/navigationbar/gestural/Step$Value;

.field public startValue:Lcom/android/systemui/navigationbar/gestural/Step$Value;

.field public final threshold:F


# direct methods
.method public constructor <init>(FFLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/Step;->threshold:F

    .line 3
    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/Step;->factor:F

    .line 4
    iput-object p3, p0, Lcom/android/systemui/navigationbar/gestural/Step;->postThreshold:Ljava/lang/Object;

    .line 5
    iput-object p4, p0, Lcom/android/systemui/navigationbar/gestural/Step;->preThreshold:Ljava/lang/Object;

    const/4 p1, 0x2

    int-to-float p1, p1

    sub-float/2addr p1, p2

    .line 6
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/Step;->lowerFactor:F

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/Step;->hasCrossedUpperBoundAtLeastOnce:Z

    .line 8
    new-instance p2, Lcom/android/systemui/navigationbar/gestural/Step$Value;

    invoke-direct {p2, p4, p1}, Lcom/android/systemui/navigationbar/gestural/Step$Value;-><init>(Ljava/lang/Object;Z)V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/Step;->startValue:Lcom/android/systemui/navigationbar/gestural/Step$Value;

    .line 9
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/Step;->previousValue:Lcom/android/systemui/navigationbar/gestural/Step$Value;

    return-void
.end method

.method public synthetic constructor <init>(FFLjava/lang/Object;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const p2, 0x3f8ccccd    # 1.1f

    .line 10
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/navigationbar/gestural/Step;-><init>(FFLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final get(F)Lcom/android/systemui/navigationbar/gestural/Step$Value;
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/Step;->factor:F

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/Step;->threshold:F

    .line 4
    .line 5
    mul-float/2addr v0, v1

    .line 6
    cmpl-float v0, p1, v0

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    move v0, v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v2

    .line 15
    :goto_0
    iget v4, p0, Lcom/android/systemui/navigationbar/gestural/Step;->lowerFactor:F

    .line 16
    .line 17
    mul-float/2addr v1, v4

    .line 18
    cmpl-float p1, p1, v1

    .line 19
    .line 20
    if-lez p1, :cond_1

    .line 21
    .line 22
    move p1, v3

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move p1, v2

    .line 25
    :goto_1
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/Step;->hasCrossedUpperBoundAtLeastOnce:Z

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    iput-boolean v3, p0, Lcom/android/systemui/navigationbar/gestural/Step;->hasCrossedUpperBoundAtLeastOnce:Z

    .line 32
    .line 33
    new-instance p1, Lcom/android/systemui/navigationbar/gestural/Step$Value;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/Step;->postThreshold:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-direct {p1, v0, v3}, Lcom/android/systemui/navigationbar/gestural/Step$Value;-><init>(Ljava/lang/Object;Z)V

    .line 38
    .line 39
    .line 40
    goto :goto_4

    .line 41
    :cond_2
    const/4 v0, 0x0

    .line 42
    if-eqz p1, :cond_4

    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/Step;->previousValue:Lcom/android/systemui/navigationbar/gestural/Step$Value;

    .line 45
    .line 46
    if-nez p1, :cond_3

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_3
    move-object v0, p1

    .line 50
    :goto_2
    iget-object p1, v0, Lcom/android/systemui/navigationbar/gestural/Step$Value;->value:Ljava/lang/Object;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/Step$Value;

    .line 56
    .line 57
    invoke-direct {v0, p1, v2}, Lcom/android/systemui/navigationbar/gestural/Step$Value;-><init>(Ljava/lang/Object;Z)V

    .line 58
    .line 59
    .line 60
    :goto_3
    move-object p1, v0

    .line 61
    goto :goto_4

    .line 62
    :cond_4
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/Step;->hasCrossedUpperBoundAtLeastOnce:Z

    .line 63
    .line 64
    if-eqz p1, :cond_5

    .line 65
    .line 66
    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/Step;->hasCrossedUpperBoundAtLeastOnce:Z

    .line 67
    .line 68
    new-instance p1, Lcom/android/systemui/navigationbar/gestural/Step$Value;

    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/Step;->preThreshold:Ljava/lang/Object;

    .line 71
    .line 72
    invoke-direct {p1, v0, v3}, Lcom/android/systemui/navigationbar/gestural/Step$Value;-><init>(Ljava/lang/Object;Z)V

    .line 73
    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/Step;->startValue:Lcom/android/systemui/navigationbar/gestural/Step$Value;

    .line 77
    .line 78
    if-nez p1, :cond_6

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_6
    :goto_4
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/Step;->previousValue:Lcom/android/systemui/navigationbar/gestural/Step$Value;

    .line 82
    .line 83
    return-object p1
.end method
