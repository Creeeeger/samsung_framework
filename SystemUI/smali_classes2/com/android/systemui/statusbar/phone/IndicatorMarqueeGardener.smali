.class public final Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final context:Landroid/content/Context;

.field public hasSomethingChanged:Z

.field public lastOrientation:I

.field public final marqueeModel:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

.field public final wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final wakefulnessLifecycleObserver:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$wakefulnessLifecycleObserver$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const p2, 0x7f0703e8

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    new-instance p2, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

    .line 20
    .line 21
    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->marqueeModel:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

    .line 25
    .line 26
    const/4 p1, -0x1

    .line 27
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->lastOrientation:I

    .line 28
    .line 29
    new-instance p1, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$wakefulnessLifecycleObserver$1;

    .line 30
    .line 31
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$wakefulnessLifecycleObserver$1;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->wakefulnessLifecycleObserver:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$wakefulnessLifecycleObserver$1;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final updateMarqueeValues()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->marqueeModel:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

    .line 2
    .line 3
    iget v1, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->horizontalShift:I

    .line 4
    .line 5
    iget v2, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->direction:I

    .line 6
    .line 7
    add-int/2addr v1, v2

    .line 8
    iput v1, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->horizontalShift:I

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    iget v5, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->maxShift:I

    .line 13
    .line 14
    if-gt v1, v5, :cond_1

    .line 15
    .line 16
    neg-int v6, v5

    .line 17
    if-ge v1, v6, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v1, v3

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    move v1, v4

    .line 23
    :goto_1
    if-eqz v1, :cond_2

    .line 24
    .line 25
    mul-int/lit8 v2, v2, -0x1

    .line 26
    .line 27
    iput v2, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->direction:I

    .line 28
    .line 29
    :cond_2
    iget v1, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->verticalShift:I

    .line 30
    .line 31
    add-int/2addr v1, v4

    .line 32
    rem-int/lit8 v1, v1, 0x4

    .line 33
    .line 34
    iput v1, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->verticalShift:I

    .line 35
    .line 36
    sub-int/2addr v1, v4

    .line 37
    rem-int/lit8 v1, v1, 0x2

    .line 38
    .line 39
    mul-int/lit8 v2, v1, -0x1

    .line 40
    .line 41
    new-instance v6, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

    .line 42
    .line 43
    invoke-direct {v6, v5}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;-><init>(I)V

    .line 44
    .line 45
    .line 46
    iget v5, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftLeft:I

    .line 47
    .line 48
    iput v5, v6, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftLeft:I

    .line 49
    .line 50
    iget v5, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftTop:I

    .line 51
    .line 52
    iput v5, v6, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftTop:I

    .line 53
    .line 54
    iget v5, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftRight:I

    .line 55
    .line 56
    iput v5, v6, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftRight:I

    .line 57
    .line 58
    iget v5, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftBottom:I

    .line 59
    .line 60
    iput v5, v6, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftBottom:I

    .line 61
    .line 62
    iget v5, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->horizontalShift:I

    .line 63
    .line 64
    iput v5, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftLeft:I

    .line 65
    .line 66
    iput v1, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftTop:I

    .line 67
    .line 68
    iput v5, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftRight:I

    .line 69
    .line 70
    iput v2, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftBottom:I

    .line 71
    .line 72
    iget v7, v6, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftLeft:I

    .line 73
    .line 74
    if-ne v7, v5, :cond_3

    .line 75
    .line 76
    iget v7, v6, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftTop:I

    .line 77
    .line 78
    if-ne v7, v1, :cond_3

    .line 79
    .line 80
    iget v1, v6, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftRight:I

    .line 81
    .line 82
    if-ne v1, v5, :cond_3

    .line 83
    .line 84
    iget v1, v6, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftBottom:I

    .line 85
    .line 86
    if-ne v1, v2, :cond_3

    .line 87
    .line 88
    move v3, v4

    .line 89
    :cond_3
    if-nez v3, :cond_4

    .line 90
    .line 91
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->hasSomethingChanged:Z

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    :cond_4
    return-void
.end method
