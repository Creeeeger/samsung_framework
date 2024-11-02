.class public final Landroidx/constraintlayout/motion/widget/OnSwipe;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mDragScale:F

.field public final mDragThreshold:F

.field public final mLimitBoundsTo:I

.field public final mMaxAcceleration:F

.field public final mMaxVelocity:F

.field public final mMoveWhenScrollAtTop:Z

.field public final mRotationCenterId:I

.field public final mSpringDamping:F

.field public final mSpringMass:F

.field public final mSpringStiffness:F

.field public final mSpringStopThreshold:F

.field public final mTouchAnchorId:I

.field public final mTouchRegionId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/constraintlayout/motion/widget/OnSwipe;->mTouchAnchorId:I

    .line 6
    .line 7
    iput v0, p0, Landroidx/constraintlayout/motion/widget/OnSwipe;->mTouchRegionId:I

    .line 8
    .line 9
    iput v0, p0, Landroidx/constraintlayout/motion/widget/OnSwipe;->mLimitBoundsTo:I

    .line 10
    .line 11
    iput v0, p0, Landroidx/constraintlayout/motion/widget/OnSwipe;->mRotationCenterId:I

    .line 12
    .line 13
    const/high16 v0, 0x40800000    # 4.0f

    .line 14
    .line 15
    iput v0, p0, Landroidx/constraintlayout/motion/widget/OnSwipe;->mMaxVelocity:F

    .line 16
    .line 17
    const v0, 0x3f99999a    # 1.2f

    .line 18
    .line 19
    .line 20
    iput v0, p0, Landroidx/constraintlayout/motion/widget/OnSwipe;->mMaxAcceleration:F

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/OnSwipe;->mMoveWhenScrollAtTop:Z

    .line 24
    .line 25
    const/high16 v0, 0x3f800000    # 1.0f

    .line 26
    .line 27
    iput v0, p0, Landroidx/constraintlayout/motion/widget/OnSwipe;->mDragScale:F

    .line 28
    .line 29
    const/high16 v1, 0x41200000    # 10.0f

    .line 30
    .line 31
    iput v1, p0, Landroidx/constraintlayout/motion/widget/OnSwipe;->mDragThreshold:F

    .line 32
    .line 33
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 34
    .line 35
    iput v1, p0, Landroidx/constraintlayout/motion/widget/OnSwipe;->mSpringDamping:F

    .line 36
    .line 37
    iput v0, p0, Landroidx/constraintlayout/motion/widget/OnSwipe;->mSpringMass:F

    .line 38
    .line 39
    iput v1, p0, Landroidx/constraintlayout/motion/widget/OnSwipe;->mSpringStiffness:F

    .line 40
    .line 41
    iput v1, p0, Landroidx/constraintlayout/motion/widget/OnSwipe;->mSpringStopThreshold:F

    .line 42
    .line 43
    return-void
.end method
