.class public final Lcom/samsung/android/nexus/base/layer/NexusLayerParams;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mHeight:I

.field public final mWidth:I

.field public final mX:I

.field public final mY:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mWidth:I

    .line 8
    iput p2, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mHeight:I

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mY:I

    iput p1, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mX:I

    .line 10
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/nexus/base/layer/NexusLayerParams;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget v0, p1, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mWidth:I

    iput v0, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mWidth:I

    .line 3
    iget v0, p1, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mHeight:I

    iput v0, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mHeight:I

    .line 4
    iget v0, p1, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mX:I

    iput v0, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mX:I

    .line 5
    iget p1, p1, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mY:I

    iput p1, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mY:I

    return-void
.end method
