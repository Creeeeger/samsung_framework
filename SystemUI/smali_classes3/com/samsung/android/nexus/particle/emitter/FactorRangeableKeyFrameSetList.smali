.class public final Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;
.super Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mFactorInterpolator:[Landroid/view/animation/Interpolator;

.field public final mFactorInterpolators:[[Landroid/view/animation/Interpolator;

.field public final mFactorRangeablePositions:[[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

.field public final mFactorRangeableValues:[[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

.field public rangeableSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->rangeableSize:I

    .line 6
    .line 7
    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 8
    .line 9
    sget v0, Lcom/samsung/android/nexus/particle/emitter/FactorType$Holder;->sCount:I

    .line 10
    .line 11
    new-array v1, v0, [[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 12
    .line 13
    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorRangeablePositions:[[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 14
    .line 15
    new-array v1, v0, [[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 16
    .line 17
    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorRangeableValues:[[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 18
    .line 19
    new-array v1, v0, [Landroid/view/animation/Interpolator;

    .line 20
    .line 21
    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorInterpolator:[Landroid/view/animation/Interpolator;

    .line 22
    .line 23
    new-array v0, v0, [[Landroid/view/animation/Interpolator;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorInterpolators:[[Landroid/view/animation/Interpolator;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->clear()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorRangeablePositions:[[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorRangeableValues:[[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 11
    .line 12
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorInterpolator:[Landroid/view/animation/Interpolator;

    .line 16
    .line 17
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->mFactorInterpolators:[[Landroid/view/animation/Interpolator;

    .line 21
    .line 22
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->rangeableSize:I

    .line 27
    .line 28
    return-void
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->floatKeyFrameSetSize:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->rangeableSize:I

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method
