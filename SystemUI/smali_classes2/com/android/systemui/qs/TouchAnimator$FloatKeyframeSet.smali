.class public final Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet;
.super Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mProperty:Landroid/util/Property;

.field public final mValues:[F


# direct methods
.method public constructor <init>(Landroid/util/Property;[F)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property<",
            "Ljava/lang/Object;",
            "Ljava/lang/Float;",
            ">;[F)V"
        }
    .end annotation

    .line 1
    array-length v0, p2

    .line 2
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;-><init>(I)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet;->mProperty:Landroid/util/Property;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet;->mValues:[F

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final interpolate(IFLjava/lang/Object;)V
    .locals 2

    .line 1
    add-int/lit8 v0, p1, -0x1

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet;->mValues:[F

    .line 4
    .line 5
    aget v0, v1, v0

    .line 6
    .line 7
    aget p1, v1, p1

    .line 8
    .line 9
    sub-float/2addr p1, v0

    .line 10
    mul-float/2addr p1, p2

    .line 11
    add-float/2addr p1, v0

    .line 12
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p0, p0, Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet;->mProperty:Landroid/util/Property;

    .line 17
    .line 18
    invoke-virtual {p0, p3, p1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
