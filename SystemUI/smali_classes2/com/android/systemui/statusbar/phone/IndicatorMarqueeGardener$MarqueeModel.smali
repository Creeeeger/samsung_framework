.class public final Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public direction:I

.field public horizontalShift:I

.field public final maxShift:I

.field public shiftBottom:I

.field public shiftLeft:I

.field public shiftRight:I

.field public shiftTop:I

.field public verticalShift:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->maxShift:I

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->direction:I

    .line 8
    .line 9
    return-void
.end method
