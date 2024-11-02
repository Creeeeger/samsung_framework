.class public final Landroidx/core/animation/AnimatorSet$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .line 1
    check-cast p1, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    .line 2
    .line 3
    check-cast p2, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/core/animation/AnimatorSet$AnimationEvent;->getTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-virtual {p2}, Landroidx/core/animation/AnimatorSet$AnimationEvent;->getTime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    cmp-long p0, v0, v2

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    if-nez p0, :cond_1

    .line 17
    .line 18
    iget p0, p2, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 19
    .line 20
    iget p1, p1, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    .line 21
    .line 22
    add-int p2, p0, p1

    .line 23
    .line 24
    if-ne p2, v4, :cond_0

    .line 25
    .line 26
    sub-int v4, p1, p0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    sub-int v4, p0, p1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const-wide/16 p0, -0x1

    .line 33
    .line 34
    cmp-long p2, v2, p0

    .line 35
    .line 36
    const/4 v5, -0x1

    .line 37
    if-nez p2, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    cmp-long p0, v0, p0

    .line 41
    .line 42
    if-nez p0, :cond_3

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    sub-long/2addr v0, v2

    .line 46
    const-wide/16 p0, 0x0

    .line 47
    .line 48
    cmp-long p0, v0, p0

    .line 49
    .line 50
    if-lez p0, :cond_4

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_4
    :goto_0
    move v4, v5

    .line 54
    :goto_1
    return v4
.end method
