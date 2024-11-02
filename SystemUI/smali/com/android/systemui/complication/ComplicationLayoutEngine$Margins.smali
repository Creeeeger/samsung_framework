.class public final Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final bottom:I

.field public final end:I

.field public final start:I

.field public final top:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;->start:I

    .line 4
    iput p2, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;->top:I

    .line 5
    iput p3, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;->end:I

    .line 6
    iput p4, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;->bottom:I

    return-void
.end method
