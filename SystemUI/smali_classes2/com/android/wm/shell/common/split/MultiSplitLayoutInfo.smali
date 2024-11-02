.class public final Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public cellStagePosition:I

.field public sideStagePosition:I

.field public splitDivision:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    .line 4
    iput p2, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    .line 5
    iput p3, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    return-void
.end method
