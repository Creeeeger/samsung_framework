.class public final Lcom/samsung/android/nexus/base/utils/range/IntRangeable;
.super Lcom/samsung/android/nexus/base/utils/range/Rangeable;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mDelta:I

.field public mMax:I

.field public mMin:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;-><init>()V

    .line 2
    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMin:I

    .line 3
    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMax:I

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->onRangeUpdated()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;-><init>()V

    .line 6
    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMin:I

    .line 7
    iput p2, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMax:I

    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->onRangeUpdated()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/nexus/base/utils/range/IntRangeable;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;-><init>()V

    .line 10
    iget v0, p1, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMin:I

    iput v0, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMin:I

    .line 11
    iget p1, p1, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMax:I

    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMax:I

    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->onRangeUpdated()V

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;-><init>(Lcom/samsung/android/nexus/base/utils/range/IntRangeable;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final onRangeUpdated()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMax:I

    .line 2
    .line 3
    iget v1, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMin:I

    .line 4
    .line 5
    sub-int v2, v0, v1

    .line 6
    .line 7
    iput v2, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mDelta:I

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->mIsSingleValue:Z

    .line 15
    .line 16
    return-void
.end method
