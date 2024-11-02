.class public final Lcom/android/systemui/navigationbar/util/MarqueeLogic;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public horizontalMoved:I

.field public horizontalShift:I

.field public scaleFactor:F

.field public verticalMoved:I

.field public verticalShift:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/navigationbar/util/MarqueeLogic$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/util/MarqueeLogic$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->horizontalMoved:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->verticalMoved:I

    .line 8
    .line 9
    return-void
.end method
